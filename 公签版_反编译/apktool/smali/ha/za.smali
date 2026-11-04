.class public final Lha/za;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Landroid/content/pm/PackageInfo;

.field public final i:I

.field public j:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public l:Lx9/x3;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/HashMap;

.field public final p:Z

.field public q:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/content/pm/PackageInfo;IZ)V
    .locals 1

    .line 1
    const v0, 0x7f0e00e0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/za;->m:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/za;->n:Ljava/util/HashMap;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 23
    .line 24
    iget-object p1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lha/za;->g:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lha/za;->h:Landroid/content/pm/PackageInfo;

    .line 29
    .line 30
    iput p4, p0, Lha/za;->i:I

    .line 31
    .line 32
    iput-boolean p5, p0, Lha/za;->p:Z

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/yunpan/appmanage/bean/PermissionBean;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const-string v3, ""

    .line 5
    .line 6
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 7
    .line 8
    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    .line 9
    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    const-string v0, "\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e"

    .line 18
    .line 19
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "\u5141\u8bb8\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e\uff08\u80fd\u4fee\u6539\u5f88\u591a\u7cfb\u7edf\u8bbe\u7f6e\uff09"

    .line 22
    .line 23
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 24
    .line 25
    iput-boolean v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 29
    .line 30
    const-string v6, "android.permission.GET_APP_OPS_STATS"

    .line 31
    .line 32
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const-string v0, "OPS\u6743\u9650\u67e5\u8be2"

    .line 39
    .line 40
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "\u5141\u8bb8\u4f7f\u7528APPOPS\u67e5\u8be2\u6743\u9650\u662f\u5426\u6388\u6743(\u72b6\u6001)"

    .line 43
    .line 44
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 45
    .line 46
    iput-boolean v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const/4 v4, 0x0

    .line 50
    :try_start_0
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 51
    .line 52
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 53
    .line 54
    iget-object v7, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    iget-object v8, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v9, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 68
    .line 69
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    iput-object v8, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 88
    .line 89
    invoke-virtual {v7, v6}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iput-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 101
    .line 102
    iget v6, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 103
    .line 104
    and-int/lit8 v8, v6, 0x1

    .line 105
    .line 106
    if-eqz v8, :cond_2

    .line 107
    .line 108
    iput v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 109
    .line 110
    const-string v0, "\u5371\u9669\u6743\u9650(1)"

    .line 111
    .line 112
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    and-int/lit8 v8, v6, 0x2

    .line 116
    .line 117
    if-eqz v8, :cond_3

    .line 118
    .line 119
    iput v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 120
    .line 121
    const-string v0, "\u7cfb\u7edf\u6743\u9650(2)"

    .line 122
    .line 123
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    and-int/lit8 v8, v6, 0x3

    .line 127
    .line 128
    if-eqz v8, :cond_4

    .line 129
    .line 130
    iput v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 131
    .line 132
    const-string v0, "\u7cfb\u7edf\u6743\u9650(3)"

    .line 133
    .line 134
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    and-int/lit8 v0, v6, 0x4

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    iput v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 142
    .line 143
    const-string v0, "\u666e\u901a\u6743\u9650(4)"

    .line 144
    .line 145
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    iput v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 149
    .line 150
    const-string v0, "\u666e\u901a\u6743\u9650(0)"

    .line 151
    .line 152
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 153
    .line 154
    :goto_0
    iget v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 155
    .line 156
    sub-int v8, v6, v0

    .line 157
    .line 158
    if-nez v8, :cond_6

    .line 159
    .line 160
    if-ne v0, v5, :cond_6

    .line 161
    .line 162
    iput-boolean v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 163
    .line 164
    :cond_6
    if-eqz v8, :cond_1c

    .line 165
    .line 166
    and-int/lit8 v0, v6, 0x10

    .line 167
    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v6, "\u3001\u7279\u6743"

    .line 181
    .line 182
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 190
    .line 191
    :cond_7
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 192
    .line 193
    and-int/lit8 v0, v0, 0x20

    .line 194
    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v6, "\u3001\u5f00\u53d1\u8005"

    .line 208
    .line 209
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 217
    .line 218
    :cond_8
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 219
    .line 220
    and-int/lit8 v0, v0, 0x40

    .line 221
    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v6, "\u3001APPOPS"

    .line 235
    .line 236
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 244
    .line 245
    :cond_9
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 246
    .line 247
    and-int/lit16 v0, v0, 0x80

    .line 248
    .line 249
    if-eqz v0, :cond_a

    .line 250
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v6, "\u3001PRE23"

    .line 262
    .line 263
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 271
    .line 272
    :cond_a
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 273
    .line 274
    and-int/lit16 v0, v0, 0x100

    .line 275
    .line 276
    if-eqz v0, :cond_b

    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v6, "\u3001\u5b89\u88c5\u65f6"

    .line 289
    .line 290
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 298
    .line 299
    :cond_b
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 300
    .line 301
    and-int/lit16 v0, v0, 0x200

    .line 302
    .line 303
    if-eqz v0, :cond_c

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v6, "\u3001\u9a8c\u8bc1\u5668"

    .line 316
    .line 317
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 325
    .line 326
    :cond_c
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 327
    .line 328
    and-int/lit16 v0, v0, 0x400

    .line 329
    .line 330
    if-eqz v0, :cond_d

    .line 331
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v6, "\u3001\u9884\u88c5"

    .line 343
    .line 344
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 352
    .line 353
    :cond_d
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 354
    .line 355
    and-int/lit16 v0, v0, 0x800

    .line 356
    .line 357
    if-eqz v0, :cond_e

    .line 358
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v6, "\u3001\u8bbe\u7f6e"

    .line 370
    .line 371
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 379
    .line 380
    :cond_e
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 381
    .line 382
    and-int/lit16 v0, v0, 0x1000

    .line 383
    .line 384
    if-eqz v0, :cond_f

    .line 385
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v6, "\u3001\u5373\u65f6"

    .line 397
    .line 398
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 406
    .line 407
    :cond_f
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 408
    .line 409
    and-int/lit16 v0, v0, 0x2000

    .line 410
    .line 411
    if-eqz v0, :cond_10

    .line 412
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v6, "\u3001\u8fd0\u884c\u65f6"

    .line 424
    .line 425
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 433
    .line 434
    :cond_10
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 435
    .line 436
    and-int/lit16 v0, v0, 0x4000

    .line 437
    .line 438
    if-eqz v0, :cond_11

    .line 439
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v6, "\u3001OEM"

    .line 451
    .line 452
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 460
    .line 461
    :cond_11
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 462
    .line 463
    const v6, 0x8000

    .line 464
    .line 465
    .line 466
    and-int/2addr v0, v6

    .line 467
    if-eqz v0, :cond_12

    .line 468
    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v6, "\u3001\u4f9b\u5e94\u5546\u7279\u4eab"

    .line 480
    .line 481
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 489
    .line 490
    :cond_12
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 491
    .line 492
    const/high16 v6, 0x10000

    .line 493
    .line 494
    and-int/2addr v0, v6

    .line 495
    if-eqz v0, :cond_13

    .line 496
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v6, "\u3001\u7cfb\u7edf\u6587\u672c\u5206\u7c7b\u5668"

    .line 508
    .line 509
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 517
    .line 518
    :cond_13
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 519
    .line 520
    const/high16 v6, 0x80000

    .line 521
    .line 522
    and-int/2addr v0, v6

    .line 523
    if-eqz v0, :cond_14

    .line 524
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v6, "\u3001\u914d\u7f6e\u5668"

    .line 536
    .line 537
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 545
    .line 546
    :cond_14
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 547
    .line 548
    const/high16 v6, 0x100000

    .line 549
    .line 550
    and-int/2addr v0, v6

    .line 551
    if-eqz v0, :cond_15

    .line 552
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v6, "\u3001\u4e8b\u4ef6\u62a5\u544a\u5ba1\u6279\u4eba"

    .line 564
    .line 565
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 573
    .line 574
    :cond_15
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 575
    .line 576
    const/high16 v6, 0x200000

    .line 577
    .line 578
    and-int/2addr v0, v6

    .line 579
    if-eqz v0, :cond_16

    .line 580
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .line 585
    .line 586
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string v6, "\u3001APP\u9884\u6d4b"

    .line 592
    .line 593
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 601
    .line 602
    :cond_16
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 603
    .line 604
    const/high16 v6, 0x800000

    .line 605
    .line 606
    and-int/2addr v0, v6

    .line 607
    if-eqz v0, :cond_17

    .line 608
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .line 613
    .line 614
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 615
    .line 616
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    const-string v6, "\u3001\u540c\u4f34"

    .line 620
    .line 621
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 629
    .line 630
    :cond_17
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 631
    .line 632
    const/high16 v6, 0x1000000

    .line 633
    .line 634
    and-int/2addr v0, v6

    .line 635
    if-eqz v0, :cond_18

    .line 636
    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .line 641
    .line 642
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 643
    .line 644
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const-string v6, "\u3001\u96f6\u552e\u6f14\u793a"

    .line 648
    .line 649
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 657
    .line 658
    :cond_18
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 659
    .line 660
    const/high16 v6, 0x2000000

    .line 661
    .line 662
    and-int/2addr v0, v6

    .line 663
    if-eqz v0, :cond_19

    .line 664
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .line 669
    .line 670
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 671
    .line 672
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v6, "\u3001\u6700\u8fd1"

    .line 676
    .line 677
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 685
    .line 686
    :cond_19
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 687
    .line 688
    const/high16 v6, 0x4000000

    .line 689
    .line 690
    and-int/2addr v0, v6

    .line 691
    if-eqz v0, :cond_1a

    .line 692
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    .line 697
    .line 698
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 699
    .line 700
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v6, "\u3001\u89d2\u8272"

    .line 704
    .line 705
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 713
    .line 714
    :cond_1a
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 715
    .line 716
    const/high16 v6, 0x8000000

    .line 717
    .line 718
    and-int/2addr v0, v6

    .line 719
    if-eqz v0, :cond_1b

    .line 720
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .line 725
    .line 726
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 727
    .line 728
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v6, "\u3001\u5df2\u77e5\u7684\u7b7e\u540d\u8005"

    .line 732
    .line 733
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 741
    .line 742
    :cond_1b
    iget v0, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 743
    .line 744
    const/high16 v6, 0x400000

    .line 745
    .line 746
    and-int/2addr v0, v6

    .line 747
    if-eqz v0, :cond_1c

    .line 748
    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .line 753
    .line 754
    iget-object v6, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    const-string v6, "\u3001\u6a21\u5757"

    .line 760
    .line 761
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 769
    .line 770
    :cond_1c
    iget-boolean v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 771
    .line 772
    if-nez v0, :cond_1f

    .line 773
    .line 774
    iget v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .line 776
    const-string v6, "\u5f00\u53d1\u8005"

    .line 777
    .line 778
    if-ne v0, v5, :cond_1d

    .line 779
    .line 780
    :try_start_1
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-eqz v0, :cond_1d

    .line 787
    .line 788
    iput-boolean v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 789
    .line 790
    goto :goto_1

    .line 791
    :cond_1d
    iget v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 792
    .line 793
    if-ne v0, v1, :cond_1e

    .line 794
    .line 795
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 796
    .line 797
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    if-eqz v0, :cond_1e

    .line 802
    .line 803
    iput-boolean v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 804
    .line 805
    goto :goto_1

    .line 806
    :cond_1e
    iget v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 807
    .line 808
    if-ne v0, v5, :cond_1f

    .line 809
    .line 810
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 811
    .line 812
    const-string v1, "\u5373\u65f6"

    .line 813
    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    if-eqz v0, :cond_1f

    .line 819
    .line 820
    iput-boolean v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 821
    .line 822
    goto :goto_1

    .line 823
    :catch_0
    nop

    .line 824
    :cond_1f
    :goto_1
    iget-object v0, p0, Lha/za;->n:Ljava/util/HashMap;

    .line 825
    .line 826
    iget-object v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 827
    .line 828
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    check-cast v0, Ljava/lang/String;

    .line 833
    .line 834
    const/4 v1, -0x1

    .line 835
    if-eqz v0, :cond_20

    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 838
    .line 839
    .line 840
    move-result v6

    .line 841
    if-nez v6, :cond_20

    .line 842
    .line 843
    const-string v6, "----"

    .line 844
    .line 845
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    move-result v6

    .line 849
    if-eq v6, v1, :cond_20

    .line 850
    .line 851
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    iput-object v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 856
    .line 857
    add-int/2addr v6, v2

    .line 858
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 863
    .line 864
    return-void

    .line 865
    :cond_20
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 866
    .line 867
    const-string v2, "null"

    .line 868
    .line 869
    if-eqz v0, :cond_21

    .line 870
    .line 871
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    if-nez v0, :cond_21

    .line 876
    .line 877
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 878
    .line 879
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v0

    .line 883
    if-eqz v0, :cond_25

    .line 884
    .line 885
    :cond_21
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 886
    .line 887
    const-string v4, "android.permission."

    .line 888
    .line 889
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    if-eqz v0, :cond_23

    .line 894
    .line 895
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 896
    .line 897
    const/16 v3, 0x13

    .line 898
    .line 899
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 904
    .line 905
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    if-nez v0, :cond_22

    .line 910
    .line 911
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 912
    .line 913
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    if-nez v0, :cond_22

    .line 918
    .line 919
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 920
    .line 921
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    if-eqz v0, :cond_23

    .line 926
    .line 927
    :cond_22
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 928
    .line 929
    :cond_23
    iget-object v0, p0, Lha/za;->m:Ljava/util/ArrayList;

    .line 930
    .line 931
    iget-object v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 932
    .line 933
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    if-ne v2, v1, :cond_24

    .line 938
    .line 939
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 940
    .line 941
    .line 942
    move-result v4

    .line 943
    if-nez v4, :cond_24

    .line 944
    .line 945
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 946
    .line 947
    .line 948
    move-result v2

    .line 949
    :cond_24
    if-eq v2, v1, :cond_25

    .line 950
    .line 951
    add-int/2addr v2, v5

    .line 952
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 953
    .line 954
    .line 955
    move-result v1

    .line 956
    if-ge v2, v1, :cond_25

    .line 957
    .line 958
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    check-cast v0, Ljava/lang/String;

    .line 963
    .line 964
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 965
    .line 966
    :cond_25
    return-void
.end method

.method public final synthetic b(Lmc/b;)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v5, "RUN_ANY_IN_BACKGROUND"

    .line 6
    .line 7
    const-string v6, "RUN_IN_BACKGROUND"

    .line 8
    .line 9
    const/4 v7, 0x4

    .line 10
    const/4 v10, 0x0

    .line 11
    iget-object v12, v1, Lha/a4;->b:Landroid/content/Context;

    .line 12
    .line 13
    const-string v13, ": "

    .line 14
    .line 15
    iget-object v14, v1, Lha/za;->g:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v15

    .line 23
    if-eqz v15, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lfa/b;->c()Lcom/android/internal/app/IAppOpsService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lfa/o0;->a()Lfa/o0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v0, v0, Lfa/o0;->a:Z

    .line 37
    .line 38
    const-string v15, "appops"

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lfa/o0;->a()Lfa/o0;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Lhi/c;

    .line 51
    .line 52
    invoke-static {v15}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v15

    .line 56
    invoke-direct {v0, v15}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 83
    .line 84
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const v15, 0x7f120019

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 96
    .line 97
    new-instance v3, Ljava/io/InputStreamReader;

    .line 98
    .line 99
    invoke-direct {v3, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    if-nez v16, :cond_3

    .line 116
    .line 117
    iget-object v4, v1, Lha/za;->m:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :goto_2
    move-object v3, v0

    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    if-eqz v15, :cond_6

    .line 131
    .line 132
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :goto_3
    if-eqz v15, :cond_5

    .line 137
    .line 138
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    move-object v4, v0

    .line 144
    :try_start_4
    invoke-static {v3, v4}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 148
    :catch_0
    :cond_6
    :goto_5
    const/4 v3, -0x1

    .line 149
    :try_start_5
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const v4, 0x7f12001a

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 157
    .line 158
    .line 159
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 160
    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    .line 161
    .line 162
    new-instance v12, Ljava/io/InputStreamReader;

    .line 163
    .line 164
    invoke-direct {v12, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    .line 169
    .line 170
    :goto_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    if-eqz v12, :cond_9

    .line 175
    .line 176
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    if-eqz v15, :cond_7

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_7
    const-string v15, "----"

    .line 184
    .line 185
    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-ne v15, v3, :cond_8

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_8
    iget-object v3, v1, Lha/za;->n:Ljava/util/HashMap;

    .line 193
    .line 194
    invoke-virtual {v12, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    add-int/2addr v15, v7

    .line 199
    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const/4 v3, -0x1

    .line 207
    goto :goto_6

    .line 208
    :goto_7
    move-object v3, v0

    .line 209
    goto :goto_8

    .line 210
    :catchall_2
    move-exception v0

    .line 211
    goto :goto_7

    .line 212
    :cond_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 213
    .line 214
    .line 215
    if-eqz v4, :cond_b

    .line 216
    .line 217
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 218
    .line 219
    .line 220
    goto :goto_a

    .line 221
    :goto_8
    if-eqz v4, :cond_a

    .line 222
    .line 223
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 224
    .line 225
    .line 226
    goto :goto_9

    .line 227
    :catchall_3
    move-exception v0

    .line 228
    move-object v4, v0

    .line 229
    :try_start_9
    invoke-static {v3, v4}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    :cond_a
    :goto_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 233
    :catch_1
    :cond_b
    :goto_a
    :try_start_a
    new-instance v4, Ljava/util/HashMap;

    .line 234
    .line 235
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-static {}, La2/w0;->F()La2/w0;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    iget-boolean v12, v12, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 252
    .line 253
    if-eqz v12, :cond_c

    .line 254
    .line 255
    const-string v12, "cmd "

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :catch_2
    move-exception v0

    .line 259
    goto/16 :goto_31

    .line 260
    .line 261
    :cond_c
    const-string v12, ""

    .line 262
    .line 263
    :goto_b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v12, "appops get "

    .line 267
    .line 268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    move-object v15, v4

    .line 282
    const-wide/16 v3, 0x7d0

    .line 283
    .line 284
    invoke-static {v3, v4, v11}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget v3, v0, Lfa/a0;->a:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 289
    .line 290
    const-string v4, "android.permission."

    .line 291
    .line 292
    const-string v11, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    .line 293
    .line 294
    const-string v12, "\u9ed8\u8ba4"

    .line 295
    .line 296
    const-string v7, "\u5df2\u62d2\u7edd"

    .line 297
    .line 298
    const-string v10, "\u5df2\u5141\u8bb8"

    .line 299
    .line 300
    const-string v8, "\u672a\u8bbe\u7f6e"

    .line 301
    .line 302
    if-nez v3, :cond_18

    .line 303
    .line 304
    :try_start_b
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_18

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    check-cast v3, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v18

    .line 326
    if-nez v18, :cond_d

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_d
    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    move-object/from16 v19, v0

    .line 334
    .line 335
    array-length v0, v9

    .line 336
    move-object/from16 v20, v9

    .line 337
    .line 338
    const/4 v9, 0x3

    .line 339
    if-ne v0, v9, :cond_e

    .line 340
    .line 341
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const/4 v9, 0x2

    .line 346
    add-int/2addr v0, v9

    .line 347
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    goto :goto_d

    .line 356
    :cond_e
    move-object/from16 v9, v20

    .line 357
    .line 358
    :goto_d
    array-length v0, v9

    .line 359
    const/4 v3, 0x2

    .line 360
    if-eq v0, v3, :cond_f

    .line 361
    .line 362
    move-object/from16 v0, v19

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_f
    const/4 v3, 0x1

    .line 366
    aget-object v0, v9, v3

    .line 367
    .line 368
    const-string v3, "allow"

    .line 369
    .line 370
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_14

    .line 375
    .line 376
    const/4 v3, 0x1

    .line 377
    aget-object v0, v9, v3

    .line 378
    .line 379
    const-string v3, "foreground"

    .line 380
    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_10

    .line 386
    .line 387
    goto :goto_f

    .line 388
    :cond_10
    const/4 v3, 0x1

    .line 389
    aget-object v0, v9, v3

    .line 390
    .line 391
    const-string v3, "deny"

    .line 392
    .line 393
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_11

    .line 398
    .line 399
    move-object v0, v7

    .line 400
    :goto_e
    move-object/from16 v20, v13

    .line 401
    .line 402
    const/4 v3, 0x0

    .line 403
    goto :goto_10

    .line 404
    :cond_11
    const/4 v3, 0x1

    .line 405
    aget-object v0, v9, v3

    .line 406
    .line 407
    const-string v3, "ignore"

    .line 408
    .line 409
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_13

    .line 414
    .line 415
    :cond_12
    move-object v0, v8

    .line 416
    goto :goto_e

    .line 417
    :cond_13
    const/4 v3, 0x1

    .line 418
    aget-object v0, v9, v3

    .line 419
    .line 420
    const-string v3, "default"

    .line 421
    .line 422
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_12

    .line 427
    .line 428
    move-object v0, v12

    .line 429
    goto :goto_e

    .line 430
    :cond_14
    :goto_f
    move-object v0, v10

    .line 431
    goto :goto_e

    .line 432
    :goto_10
    aget-object v13, v9, v3

    .line 433
    .line 434
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 438
    if-eqz v3, :cond_15

    .line 439
    .line 440
    :goto_11
    move-object/from16 v0, v19

    .line 441
    .line 442
    move-object/from16 v13, v20

    .line 443
    .line 444
    goto/16 :goto_c

    .line 445
    .line 446
    :cond_15
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    const-string v13, "android:"

    .line 452
    .line 453
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const/4 v13, 0x0

    .line 457
    aget-object v21, v9, v13

    .line 458
    .line 459
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v13

    .line 463
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    const/4 v13, -0x1

    .line 475
    if-ne v3, v13, :cond_16

    .line 476
    .line 477
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 478
    .line 479
    const/4 v13, 0x0

    .line 480
    aget-object v17, v9, v13

    .line 481
    .line 482
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    goto :goto_11

    .line 486
    :cond_16
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    if-eqz v3, :cond_17

    .line 491
    .line 492
    move-object/from16 v21, v15

    .line 493
    .line 494
    goto :goto_12

    .line 495
    :cond_17
    new-instance v3, Ljava/lang/Exception;

    .line 496
    .line 497
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 498
    .line 499
    .line 500
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 501
    :catch_3
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-object/from16 v21, v15

    .line 510
    .line 511
    const/4 v13, 0x0

    .line 512
    aget-object v15, v9, v13

    .line 513
    .line 514
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    :goto_12
    new-instance v13, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 522
    .line 523
    invoke-direct {v13, v3}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    iput-boolean v0, v13, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 533
    .line 534
    const/4 v15, 0x0

    .line 535
    aget-object v0, v9, v15

    .line 536
    .line 537
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v1, v13}, Lha/za;->a(Lcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 540
    .line 541
    .line 542
    move-object/from16 v9, v21

    .line 543
    .line 544
    invoke-virtual {v9, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-object v15, v9

    .line 548
    goto :goto_11

    .line 549
    :cond_18
    move-object v9, v15

    .line 550
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 551
    .line 552
    iget v3, v1, Lha/za;->i:I

    .line 553
    .line 554
    const/16 v13, 0x1a

    .line 555
    .line 556
    if-lt v0, v13, :cond_19

    .line 557
    .line 558
    :try_start_e
    const-string v15, "android.permission.RUN_IN_BACKGROUND"

    .line 559
    .line 560
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v19

    .line 564
    if-nez v19, :cond_19

    .line 565
    .line 566
    new-instance v13, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 567
    .line 568
    invoke-direct {v13, v15}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    const/4 v2, 0x0

    .line 572
    iput-boolean v2, v13, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 573
    .line 574
    iput-object v6, v13, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 575
    .line 576
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v2, v14, v3, v13}, Lcom/yunpan/appmanage/util/k;->b(Ljava/lang/String;ILcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1, v13}, Lha/za;->a(Lcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v9, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    goto :goto_14

    .line 590
    :catch_4
    move-exception v0

    .line 591
    :goto_13
    move-object/from16 v2, p1

    .line 592
    .line 593
    goto/16 :goto_31

    .line 594
    .line 595
    :cond_19
    :goto_14
    const/16 v2, 0x1c

    .line 596
    .line 597
    if-lt v0, v2, :cond_1a

    .line 598
    .line 599
    const-string v0, "android.permission.RUN_ANY_IN_BACKGROUND"

    .line 600
    .line 601
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v13

    .line 605
    if-nez v13, :cond_1a

    .line 606
    .line 607
    new-instance v13, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 608
    .line 609
    invoke-direct {v13, v0}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    const/4 v15, 0x0

    .line 613
    iput-boolean v15, v13, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 614
    .line 615
    iput-object v5, v13, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 616
    .line 617
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 618
    .line 619
    .line 620
    move-result-object v15

    .line 621
    invoke-virtual {v15, v14, v3, v13}, Lcom/yunpan/appmanage/util/k;->b(Ljava/lang/String;ILcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v13}, Lha/za;->a(Lcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v9, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    :cond_1a
    iget-object v0, v1, Lha/za;->h:Landroid/content/pm/PackageInfo;

    .line 631
    .line 632
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 633
    .line 634
    const-class v15, Ljava/lang/String;

    .line 635
    .line 636
    const-string v2, "checkOperation"

    .line 637
    .line 638
    if-eqz v13, :cond_30

    .line 639
    .line 640
    move-object/from16 v21, v6

    .line 641
    .line 642
    :try_start_f
    array-length v6, v13

    .line 643
    move-object/from16 v22, v5

    .line 644
    .line 645
    const/4 v5, 0x0

    .line 646
    :goto_15
    if-ge v5, v6, :cond_2f

    .line 647
    .line 648
    aget-object v0, v13, v5

    .line 649
    .line 650
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v23

    .line 654
    if-eqz v23, :cond_1b

    .line 655
    .line 656
    :goto_16
    move-object/from16 v23, v4

    .line 657
    .line 658
    move/from16 v28, v5

    .line 659
    .line 660
    move/from16 v24, v6

    .line 661
    .line 662
    :goto_17
    move-object/from16 v25, v11

    .line 663
    .line 664
    move-object/from16 v27, v13

    .line 665
    .line 666
    move-object/from16 v26, v15

    .line 667
    .line 668
    :goto_18
    const/4 v4, 0x1

    .line 669
    goto/16 :goto_24

    .line 670
    .line 671
    :cond_1b
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 672
    .line 673
    .line 674
    move-result v23

    .line 675
    if-eqz v23, :cond_1c

    .line 676
    .line 677
    goto :goto_16

    .line 678
    :cond_1c
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 679
    .line 680
    .line 681
    move-result v23

    .line 682
    if-nez v23, :cond_1d

    .line 683
    .line 684
    goto :goto_16

    .line 685
    :cond_1d
    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 686
    .line 687
    .line 688
    move-result v23

    .line 689
    if-eqz v23, :cond_1e

    .line 690
    .line 691
    goto :goto_16

    .line 692
    :cond_1e
    move-object/from16 v23, v4

    .line 693
    .line 694
    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 695
    .line 696
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    if-eqz v4, :cond_1f

    .line 701
    .line 702
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 703
    .line 704
    move/from16 v24, v6

    .line 705
    .line 706
    const/16 v6, 0x1e

    .line 707
    .line 708
    if-ge v4, v6, :cond_20

    .line 709
    .line 710
    :goto_19
    move/from16 v28, v5

    .line 711
    .line 712
    goto :goto_17

    .line 713
    :cond_1f
    move/from16 v24, v6

    .line 714
    .line 715
    :cond_20
    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    .line 716
    .line 717
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    if-eqz v4, :cond_21

    .line 722
    .line 723
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 724
    .line 725
    const/16 v6, 0x21

    .line 726
    .line 727
    if-ge v4, v6, :cond_21

    .line 728
    .line 729
    :goto_1a
    goto :goto_19

    .line 730
    :cond_21
    const-string v4, "android.permission.PACKAGE_USAGE_STATS"

    .line 731
    .line 732
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v4

    .line 736
    if-eqz v4, :cond_22

    .line 737
    .line 738
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 739
    .line 740
    const/16 v6, 0x17

    .line 741
    .line 742
    if-ge v4, v6, :cond_23

    .line 743
    .line 744
    goto :goto_1a

    .line 745
    :cond_22
    const-string v6, "android.permission.FOREGROUND_SERVICE"

    .line 746
    .line 747
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    if-eqz v6, :cond_23

    .line 752
    .line 753
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 754
    .line 755
    const/16 v4, 0x1c

    .line 756
    .line 757
    if-ge v6, v4, :cond_23

    .line 758
    .line 759
    goto :goto_1a

    .line 760
    :cond_23
    :try_start_10
    new-instance v4, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 761
    .line 762
    invoke-direct {v4}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>()V

    .line 763
    .line 764
    .line 765
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 770
    .line 771
    invoke-virtual {v6, v0, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .line 773
    .line 774
    move-result v6

    .line 775
    if-nez v6, :cond_24

    .line 776
    .line 777
    const/4 v6, 0x1

    .line 778
    goto :goto_1b

    .line 779
    :cond_24
    const/4 v6, 0x0

    .line 780
    :goto_1b
    iput-boolean v6, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    .line 781
    .line 782
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 783
    .line 784
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    move-result v0

    .line 788
    const/4 v6, -0x1

    .line 789
    if-eq v0, v6, :cond_25

    .line 790
    .line 791
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v6

    .line 795
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    iput-object v6, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 800
    .line 801
    const/4 v6, -0x1

    .line 802
    goto :goto_1c

    .line 803
    :catchall_4
    move-exception v0

    .line 804
    move/from16 v28, v5

    .line 805
    .line 806
    move-object/from16 v25, v11

    .line 807
    .line 808
    move-object/from16 v27, v13

    .line 809
    .line 810
    move-object/from16 v26, v15

    .line 811
    .line 812
    goto/16 :goto_23

    .line 813
    .line 814
    :cond_25
    :goto_1c
    if-eq v0, v6, :cond_26

    .line 815
    .line 816
    iget-object v6, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 817
    .line 818
    if-nez v6, :cond_27

    .line 819
    .line 820
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0, v14, v3, v4}, Lcom/yunpan/appmanage/util/k;->b(Ljava/lang/String;ILcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 825
    .line 826
    .line 827
    :cond_26
    move/from16 v28, v5

    .line 828
    .line 829
    move-object/from16 v25, v11

    .line 830
    .line 831
    move-object/from16 v27, v13

    .line 832
    .line 833
    move-object/from16 v26, v15

    .line 834
    .line 835
    goto/16 :goto_22

    .line 836
    .line 837
    :cond_27
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v6

    .line 841
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v6

    .line 845
    iput-object v6, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 846
    .line 847
    :try_start_11
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 848
    .line 849
    move-object/from16 v25, v11

    .line 850
    .line 851
    const/16 v11, 0x1c

    .line 852
    .line 853
    if-lt v6, v11, :cond_28

    .line 854
    .line 855
    :try_start_12
    iget-object v6, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 856
    .line 857
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    .line 859
    .line 860
    move-result-object v6

    .line 861
    iget-object v11, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 862
    .line 863
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 868
    .line 869
    .line 870
    move-result-object v26
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 871
    move/from16 v28, v5

    .line 872
    .line 873
    move-object/from16 v27, v13

    .line 874
    .line 875
    const/4 v13, 0x3

    .line 876
    :try_start_13
    new-array v5, v13, [Ljava/lang/Object;

    .line 877
    .line 878
    const/4 v13, 0x0

    .line 879
    aput-object v0, v5, v13

    .line 880
    .line 881
    const/4 v13, 0x1

    .line 882
    aput-object v26, v5, v13

    .line 883
    .line 884
    const/4 v13, 0x2

    .line 885
    aput-object v14, v5, v13

    .line 886
    .line 887
    invoke-static {v6, v11, v2, v5}, Lorg/lsposed/hiddenapibypass/j;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    check-cast v0, Ljava/lang/Integer;

    .line 892
    .line 893
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    move-object/from16 v26, v15

    .line 898
    .line 899
    goto :goto_1f

    .line 900
    :catchall_5
    :goto_1d
    move-object/from16 v26, v15

    .line 901
    .line 902
    goto/16 :goto_21

    .line 903
    .line 904
    :catchall_6
    move/from16 v28, v5

    .line 905
    .line 906
    :goto_1e
    move-object/from16 v27, v13

    .line 907
    .line 908
    goto :goto_1d

    .line 909
    :cond_28
    move/from16 v28, v5

    .line 910
    .line 911
    move-object/from16 v27, v13

    .line 912
    .line 913
    iget-object v5, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 914
    .line 915
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    move-result-object v5

    .line 919
    const/4 v6, 0x3

    .line 920
    new-array v11, v6, [Ljava/lang/Class;

    .line 921
    .line 922
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 923
    .line 924
    const/4 v13, 0x0

    .line 925
    aput-object v6, v11, v13

    .line 926
    .line 927
    const/4 v13, 0x1

    .line 928
    aput-object v6, v11, v13

    .line 929
    .line 930
    const/4 v6, 0x2

    .line 931
    aput-object v15, v11, v6

    .line 932
    .line 933
    invoke-virtual {v5, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    iget-object v6, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 938
    .line 939
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 944
    .line 945
    .line 946
    move-result-object v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 947
    move-object/from16 v26, v15

    .line 948
    .line 949
    const/4 v13, 0x3

    .line 950
    :try_start_14
    new-array v15, v13, [Ljava/lang/Object;

    .line 951
    .line 952
    const/4 v13, 0x0

    .line 953
    aput-object v0, v15, v13

    .line 954
    .line 955
    const/4 v13, 0x1

    .line 956
    aput-object v11, v15, v13

    .line 957
    .line 958
    const/4 v11, 0x2

    .line 959
    aput-object v14, v15, v11

    .line 960
    .line 961
    invoke-virtual {v5, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    check-cast v0, Ljava/lang/Integer;

    .line 966
    .line 967
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    :goto_1f
    if-eqz v0, :cond_29

    .line 972
    .line 973
    const/4 v5, 0x4

    .line 974
    if-ne v0, v5, :cond_2a

    .line 975
    .line 976
    :cond_29
    const/4 v5, 0x1

    .line 977
    goto :goto_20

    .line 978
    :cond_2a
    const/4 v5, 0x1

    .line 979
    if-ne v0, v5, :cond_2b

    .line 980
    .line 981
    iput-object v7, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 982
    .line 983
    goto :goto_22

    .line 984
    :cond_2b
    const/4 v5, 0x3

    .line 985
    if-ne v0, v5, :cond_2c

    .line 986
    .line 987
    iput-object v12, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 988
    .line 989
    iget-boolean v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    .line 990
    .line 991
    if-eqz v0, :cond_2d

    .line 992
    .line 993
    iput-object v10, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 994
    .line 995
    goto :goto_22

    .line 996
    :cond_2c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    iput-object v8, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 1002
    .line 1003
    goto :goto_22

    .line 1004
    :goto_20
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 1005
    .line 1006
    iput-object v10, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1007
    .line 1008
    goto :goto_22

    .line 1009
    :catchall_7
    move/from16 v28, v5

    .line 1010
    .line 1011
    move-object/from16 v25, v11

    .line 1012
    .line 1013
    goto :goto_1e

    .line 1014
    :catchall_8
    :goto_21
    :try_start_15
    iput-object v8, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 1015
    .line 1016
    goto :goto_22

    .line 1017
    :catchall_9
    move-exception v0

    .line 1018
    goto :goto_23

    .line 1019
    :cond_2d
    :goto_22
    invoke-virtual {v1, v4}, Lha/za;->a(Lcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    if-eqz v0, :cond_2e

    .line 1029
    .line 1030
    iget-boolean v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 1031
    .line 1032
    if-nez v0, :cond_2e

    .line 1033
    .line 1034
    goto/16 :goto_18

    .line 1035
    .line 1036
    :cond_2e
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 1037
    .line 1038
    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_18

    .line 1042
    .line 1043
    :goto_23
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_18

    .line 1047
    .line 1048
    :goto_24
    add-int/lit8 v5, v28, 0x1

    .line 1049
    .line 1050
    move-object/from16 v4, v23

    .line 1051
    .line 1052
    move/from16 v6, v24

    .line 1053
    .line 1054
    move-object/from16 v11, v25

    .line 1055
    .line 1056
    move-object/from16 v15, v26

    .line 1057
    .line 1058
    move-object/from16 v13, v27

    .line 1059
    .line 1060
    goto/16 :goto_15

    .line 1061
    .line 1062
    :cond_2f
    :goto_25
    move-object/from16 v26, v15

    .line 1063
    .line 1064
    goto :goto_26

    .line 1065
    :cond_30
    move-object/from16 v22, v5

    .line 1066
    .line 1067
    move-object/from16 v21, v6

    .line 1068
    .line 1069
    goto :goto_25

    .line 1070
    :goto_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1071
    .line 1072
    const/16 v4, 0x1a

    .line 1073
    .line 1074
    if-lt v0, v4, :cond_3a

    .line 1075
    .line 1076
    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 1077
    .line 1078
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    .line 1082
    if-nez v5, :cond_3a

    .line 1083
    .line 1084
    :try_start_17
    new-instance v5, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 1085
    .line 1086
    invoke-direct {v5}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v6

    .line 1093
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 1094
    .line 1095
    invoke-virtual {v6, v4, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .line 1097
    .line 1098
    move-result v6

    .line 1099
    if-nez v6, :cond_31

    .line 1100
    .line 1101
    const/4 v6, 0x1

    .line 1102
    goto :goto_27

    .line 1103
    :cond_31
    const/4 v6, 0x0

    .line 1104
    :goto_27
    iput-boolean v6, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    .line 1105
    .line 1106
    iput-object v4, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 1107
    .line 1108
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    move-result v4

    .line 1112
    const/4 v6, -0x1

    .line 1113
    if-eq v4, v6, :cond_32

    .line 1114
    .line 1115
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v6

    .line 1119
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v6

    .line 1123
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 1124
    .line 1125
    const/4 v6, -0x1

    .line 1126
    :cond_32
    if-eq v4, v6, :cond_39

    .line 1127
    .line 1128
    iget-object v6, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 1129
    .line 1130
    if-nez v6, :cond_33

    .line 1131
    .line 1132
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    invoke-virtual {v0, v14, v3, v5}, Lcom/yunpan/appmanage/util/k;->b(Ljava/lang/String;ILcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_2a

    .line 1140
    .line 1141
    :cond_33
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v6

    .line 1145
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v6

    .line 1149
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 1150
    .line 1151
    const/16 v6, 0x1c

    .line 1152
    .line 1153
    if-lt v0, v6, :cond_34

    .line 1154
    .line 1155
    :try_start_18
    iget-object v0, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 1156
    .line 1157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    iget-object v6, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 1162
    .line 1163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v4

    .line 1167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v3

    .line 1171
    const/4 v11, 0x3

    .line 1172
    new-array v13, v11, [Ljava/lang/Object;

    .line 1173
    .line 1174
    const/4 v11, 0x0

    .line 1175
    aput-object v4, v13, v11

    .line 1176
    .line 1177
    const/4 v4, 0x1

    .line 1178
    aput-object v3, v13, v4

    .line 1179
    .line 1180
    const/4 v3, 0x2

    .line 1181
    aput-object v14, v13, v3

    .line 1182
    .line 1183
    invoke-static {v0, v6, v2, v13}, Lorg/lsposed/hiddenapibypass/j;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v0

    .line 1187
    check-cast v0, Ljava/lang/Integer;

    .line 1188
    .line 1189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    goto :goto_28

    .line 1194
    :cond_34
    iget-object v0, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 1195
    .line 1196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    const/4 v6, 0x3

    .line 1201
    new-array v11, v6, [Ljava/lang/Class;

    .line 1202
    .line 1203
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1204
    .line 1205
    const/4 v13, 0x0

    .line 1206
    aput-object v6, v11, v13

    .line 1207
    .line 1208
    const/4 v13, 0x1

    .line 1209
    aput-object v6, v11, v13

    .line 1210
    .line 1211
    const/4 v6, 0x2

    .line 1212
    aput-object v26, v11, v6

    .line 1213
    .line 1214
    invoke-virtual {v0, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v0

    .line 1218
    iget-object v2, v1, Lha/za;->q:Lcom/android/internal/app/IAppOpsService;

    .line 1219
    .line 1220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v4

    .line 1224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v3

    .line 1228
    const/4 v6, 0x3

    .line 1229
    new-array v11, v6, [Ljava/lang/Object;

    .line 1230
    .line 1231
    const/4 v6, 0x0

    .line 1232
    aput-object v4, v11, v6

    .line 1233
    .line 1234
    const/4 v4, 0x1

    .line 1235
    aput-object v3, v11, v4

    .line 1236
    .line 1237
    const/4 v3, 0x2

    .line 1238
    aput-object v14, v11, v3

    .line 1239
    .line 1240
    invoke-virtual {v0, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    check-cast v0, Ljava/lang/Integer;

    .line 1245
    .line 1246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    :goto_28
    if-eqz v0, :cond_35

    .line 1251
    .line 1252
    const/4 v2, 0x4

    .line 1253
    if-ne v0, v2, :cond_36

    .line 1254
    .line 1255
    :cond_35
    const/4 v2, 0x1

    .line 1256
    goto :goto_29

    .line 1257
    :cond_36
    const/4 v2, 0x1

    .line 1258
    if-ne v0, v2, :cond_37

    .line 1259
    .line 1260
    iput-object v7, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 1261
    .line 1262
    goto :goto_2a

    .line 1263
    :cond_37
    const/4 v2, 0x3

    .line 1264
    if-ne v0, v2, :cond_38

    .line 1265
    .line 1266
    iput-object v12, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 1267
    .line 1268
    iget-boolean v0, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    .line 1269
    .line 1270
    if-eqz v0, :cond_39

    .line 1271
    .line 1272
    iput-object v10, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 1273
    .line 1274
    goto :goto_2a

    .line 1275
    :cond_38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1276
    .line 1277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1278
    .line 1279
    .line 1280
    iput-object v8, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 1281
    .line 1282
    goto :goto_2a

    .line 1283
    :goto_29
    iput-boolean v2, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 1284
    .line 1285
    iput-object v10, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 1286
    .line 1287
    goto :goto_2a

    .line 1288
    :catchall_a
    :try_start_19
    iput-object v8, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 1289
    .line 1290
    :cond_39
    :goto_2a
    invoke-virtual {v1, v5}, Lha/za;->a(Lcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 1291
    .line 1292
    .line 1293
    iget-object v0, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 1294
    .line 1295
    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 1296
    .line 1297
    .line 1298
    :catchall_b
    :cond_3a
    :try_start_1a
    new-instance v0, Ljava/util/ArrayList;

    .line 1299
    .line 1300
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1304
    .line 1305
    const/16 v3, 0x18

    .line 1306
    .line 1307
    if-lt v2, v3, :cond_3b

    .line 1308
    .line 1309
    new-instance v2, Lha/wa;

    .line 1310
    .line 1311
    invoke-direct {v2, v1, v0}, Lha/wa;-><init>(Lha/za;Ljava/util/ArrayList;)V

    .line 1312
    .line 1313
    .line 1314
    invoke-static {v9, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 1315
    .line 1316
    .line 1317
    goto :goto_2c

    .line 1318
    :cond_3b
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v2

    .line 1322
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v2

    .line 1326
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1327
    .line 1328
    .line 1329
    move-result v3

    .line 1330
    if-eqz v3, :cond_3c

    .line 1331
    .line 1332
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v3

    .line 1336
    check-cast v3, Ljava/util/Map$Entry;

    .line 1337
    .line 1338
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v3

    .line 1342
    check-cast v3, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 1343
    .line 1344
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    goto :goto_2b

    .line 1348
    :cond_3c
    :goto_2c
    new-instance v2, La2/m;

    .line 1349
    .line 1350
    const/16 v3, 0x11

    .line 1351
    .line 1352
    invoke-direct {v2, v3}, La2/m;-><init>(I)V

    .line 1353
    .line 1354
    .line 1355
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1356
    .line 1357
    .line 1358
    const/16 v2, 0x16

    .line 1359
    .line 1360
    new-array v3, v2, [Ljava/lang/String;

    .line 1361
    .line 1362
    const/4 v2, 0x0

    .line 1363
    aput-object v22, v3, v2

    .line 1364
    .line 1365
    const/4 v2, 0x1

    .line 1366
    aput-object v21, v3, v2

    .line 1367
    .line 1368
    const-string v2, "FOREGROUND_SERVICE"

    .line 1369
    .line 1370
    const/4 v4, 0x2

    .line 1371
    aput-object v2, v3, v4

    .line 1372
    .line 1373
    const-string v2, "START_FOREGROUND"

    .line 1374
    .line 1375
    const/4 v4, 0x3

    .line 1376
    aput-object v2, v3, v4

    .line 1377
    .line 1378
    const-string v2, "WRITE_CLIPBOARD"

    .line 1379
    .line 1380
    const/4 v4, 0x4

    .line 1381
    aput-object v2, v3, v4

    .line 1382
    .line 1383
    const-string v2, "READ_CLIPBOARD"

    .line 1384
    .line 1385
    const/4 v4, 0x5

    .line 1386
    aput-object v2, v3, v4

    .line 1387
    .line 1388
    const-string v2, "PACKAGE_USAGE_STATS"

    .line 1389
    .line 1390
    const/4 v4, 0x6

    .line 1391
    aput-object v2, v3, v4

    .line 1392
    .line 1393
    const-string v2, "REQUEST_DELETE_PACKAGES"

    .line 1394
    .line 1395
    const/4 v4, 0x7

    .line 1396
    aput-object v2, v3, v4

    .line 1397
    .line 1398
    const-string v2, "REQUEST_INSTALL_PACKAGES"

    .line 1399
    .line 1400
    const/16 v4, 0x8

    .line 1401
    .line 1402
    aput-object v2, v3, v4

    .line 1403
    .line 1404
    const-string v2, "QUERY_ALL_PACKAGES"

    .line 1405
    .line 1406
    const/16 v4, 0x9

    .line 1407
    .line 1408
    aput-object v2, v3, v4

    .line 1409
    .line 1410
    const-string v2, "SYSTEM_ALERT_WINDOW"

    .line 1411
    .line 1412
    const/16 v4, 0xa

    .line 1413
    .line 1414
    aput-object v2, v3, v4

    .line 1415
    .line 1416
    const-string v2, "WRITE_MEDIA_VIDEO"

    .line 1417
    .line 1418
    const/16 v4, 0xb

    .line 1419
    .line 1420
    aput-object v2, v3, v4

    .line 1421
    .line 1422
    const-string v2, "READ_MEDIA_VIDEO"

    .line 1423
    .line 1424
    const/16 v4, 0xc

    .line 1425
    .line 1426
    aput-object v2, v3, v4

    .line 1427
    .line 1428
    const-string v2, "WRITE_MEDIA_AUDIO"

    .line 1429
    .line 1430
    const/16 v4, 0xd

    .line 1431
    .line 1432
    aput-object v2, v3, v4

    .line 1433
    .line 1434
    const-string v2, "READ_MEDIA_AUDIO"

    .line 1435
    .line 1436
    const/16 v4, 0xe

    .line 1437
    .line 1438
    aput-object v2, v3, v4

    .line 1439
    .line 1440
    const-string v2, "WRITE_MEDIA_IMAGES"

    .line 1441
    .line 1442
    const/16 v4, 0xf

    .line 1443
    .line 1444
    aput-object v2, v3, v4

    .line 1445
    .line 1446
    const-string v2, "READ_MEDIA_IMAGES"

    .line 1447
    .line 1448
    const/16 v4, 0x10

    .line 1449
    .line 1450
    aput-object v2, v3, v4

    .line 1451
    .line 1452
    const-string v2, "NO_ISOLATED_STORAGE"

    .line 1453
    .line 1454
    const/16 v4, 0x11

    .line 1455
    .line 1456
    aput-object v2, v3, v4

    .line 1457
    .line 1458
    const-string v2, "LEGACY_STORAGE"

    .line 1459
    .line 1460
    const/16 v4, 0x12

    .line 1461
    .line 1462
    aput-object v2, v3, v4

    .line 1463
    .line 1464
    const-string v2, "MANAGE_EXTERNAL_STORAGE"

    .line 1465
    .line 1466
    const/16 v4, 0x13

    .line 1467
    .line 1468
    aput-object v2, v3, v4

    .line 1469
    .line 1470
    const-string v2, "WRITE_EXTERNAL_STORAGE"

    .line 1471
    .line 1472
    const/16 v4, 0x14

    .line 1473
    .line 1474
    aput-object v2, v3, v4

    .line 1475
    .line 1476
    const-string v2, "READ_EXTERNAL_STORAGE"

    .line 1477
    .line 1478
    const/16 v4, 0x15

    .line 1479
    .line 1480
    aput-object v2, v3, v4

    .line 1481
    .line 1482
    const/4 v2, 0x0

    .line 1483
    const/16 v4, 0x16

    .line 1484
    .line 1485
    :goto_2d
    if-ge v2, v4, :cond_3f

    .line 1486
    .line 1487
    aget-object v5, v3, v2

    .line 1488
    .line 1489
    const/4 v6, 0x0

    .line 1490
    :goto_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1491
    .line 1492
    .line 1493
    move-result v7
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    .line 1494
    if-ge v6, v7, :cond_3e

    .line 1495
    .line 1496
    :try_start_1b
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v7

    .line 1500
    check-cast v7, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 1501
    .line 1502
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 1503
    .line 1504
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1505
    .line 1506
    .line 1507
    move-result v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    .line 1508
    if-eqz v7, :cond_3d

    .line 1509
    .line 1510
    :try_start_1c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v5

    .line 1514
    check-cast v5, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 1515
    .line 1516
    const/4 v7, 0x0

    .line 1517
    invoke-virtual {v0, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    .line 1518
    .line 1519
    .line 1520
    :goto_2f
    const/4 v8, 0x1

    .line 1521
    goto :goto_30

    .line 1522
    :cond_3d
    const/4 v7, 0x0

    .line 1523
    const/4 v8, 0x1

    .line 1524
    add-int/2addr v6, v8

    .line 1525
    goto :goto_2e

    .line 1526
    :catch_5
    move-exception v0

    .line 1527
    const/4 v8, 0x1

    .line 1528
    goto/16 :goto_13

    .line 1529
    .line 1530
    :cond_3e
    const/4 v7, 0x0

    .line 1531
    goto :goto_2f

    .line 1532
    :goto_30
    add-int/2addr v2, v8

    .line 1533
    goto :goto_2d

    .line 1534
    :cond_3f
    move-object/from16 v2, p1

    .line 1535
    .line 1536
    :try_start_1d
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    .line 1540
    .line 1541
    .line 1542
    goto :goto_33

    .line 1543
    :goto_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1544
    .line 1545
    .line 1546
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1547
    .line 1548
    const/16 v4, 0x17

    .line 1549
    .line 1550
    if-ge v3, v4, :cond_40

    .line 1551
    .line 1552
    const-string v3, "\u4f4e\u4e8e\u5b89\u53536.0\u65e0\u9700\u7ba1\u7406\u6743\u9650"

    .line 1553
    .line 1554
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->r(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    goto :goto_32

    .line 1558
    :cond_40
    const-string v3, "\u83b7\u53d6\u6743\u9650\u4fe1\u606f\u5931\u8d25"

    .line 1559
    .line 1560
    const/4 v4, 0x1

    .line 1561
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 1562
    .line 1563
    .line 1564
    :goto_32
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1565
    .line 1566
    .line 1567
    :goto_33
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0517

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    iput-object p1, p0, Lha/za;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    const p1, 0x7f0b04f1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    iput-object p1, p0, Lha/za;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 25
    .line 26
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 27
    .line 28
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lx9/x3;

    .line 39
    .line 40
    invoke-direct {p1}, Lx9/x3;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lha/za;->l:Lx9/x3;

    .line 44
    .line 45
    iget-object v0, p0, Lha/za;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Landroidx/recyclerview/widget/y;

    .line 51
    .line 52
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/y;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0800cb

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/y;->e(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lha/za;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lha/za;->l:Lx9/x3;

    .line 71
    .line 72
    new-instance v0, Lha/va;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lha/va;-><init>(Lha/za;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 78
    .line 79
    new-instance v0, Lha/va;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lha/va;-><init>(Lha/za;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p1, Lc6/g;->f:Lc6/f;

    .line 85
    .line 86
    iget-object p1, p0, Lha/za;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 87
    .line 88
    new-instance v0, Lg2/c;

    .line 89
    .line 90
    const/16 v1, 0x16

    .line 91
    .line 92
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lha/va;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Lha/va;-><init>(Lha/za;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lmc/c;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-direct {v0, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance v0, Lha/p0;

    .line 124
    .line 125
    const/16 v1, 0x11

    .line 126
    .line 127
    invoke-direct {v0, v1, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
