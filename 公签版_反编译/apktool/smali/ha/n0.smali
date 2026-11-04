.class public final synthetic Lha/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lha/r0;


# direct methods
.method public synthetic constructor <init>(Lha/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/n0;->a:Lha/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lha/n0;->a:Lha/r0;

    .line 3
    .line 4
    iget v2, v1, Lha/r0;->i:I

    .line 5
    .line 6
    if-ne v2, v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_0
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    if-ne v2, v3, :cond_4

    .line 25
    .line 26
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/AppDao;->get_app_noCanStart_noHide_noUnInstall_noDisable()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 65
    .line 66
    :try_start_0
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 67
    .line 68
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 69
    .line 70
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    iget-object v6, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 79
    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    array-length v6, v5

    .line 83
    const/4 v7, 0x0

    .line 84
    :goto_1
    if-ge v7, v6, :cond_1

    .line 85
    .line 86
    aget-object v8, v5, v7

    .line 87
    .line 88
    iget-boolean v9, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 89
    .line 90
    if-eqz v9, :cond_2

    .line 91
    .line 92
    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 93
    .line 94
    if-eqz v8, :cond_2

    .line 95
    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v3

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    add-int/2addr v7, v0

    .line 103
    goto :goto_1

    .line 104
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    move-object v0, v1

    .line 109
    goto/16 :goto_7

    .line 110
    .line 111
    :cond_4
    const/4 v3, 0x3

    .line 112
    if-ne v2, v3, :cond_8

    .line 113
    .line 114
    new-instance v2, Ljava/util/HashSet;

    .line 115
    .line 116
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v1}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_5

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_5
    const-string v1, "com.android.packageinstaller"

    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    sub-int/2addr v3, v0

    .line 156
    :goto_3
    if-ltz v3, :cond_3

    .line 157
    .line 158
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 163
    .line 164
    iget-boolean v0, v0, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 165
    .line 166
    if-nez v0, :cond_6

    .line 167
    .line 168
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 173
    .line 174
    iget-boolean v0, v0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 175
    .line 176
    if-nez v0, :cond_6

    .line 177
    .line 178
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 183
    .line 184
    iget-boolean v0, v0, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 185
    .line 186
    if-nez v0, :cond_6

    .line 187
    .line 188
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_7
    add-int/lit8 v3, v3, -0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_8
    const/4 v1, 0x4

    .line 209
    if-ne v2, v1, :cond_d

    .line 210
    .line 211
    new-instance v2, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-interface {v3}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_c

    .line 237
    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 243
    .line 244
    iget-boolean v6, v5, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 245
    .line 246
    if-nez v6, :cond_9

    .line 247
    .line 248
    iget-boolean v6, v5, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 249
    .line 250
    if-nez v6, :cond_9

    .line 251
    .line 252
    iget-boolean v6, v5, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 253
    .line 254
    if-eqz v6, :cond_a

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_a
    :try_start_1
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 258
    .line 259
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 260
    .line 261
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 262
    .line 263
    iget-object v7, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 270
    .line 271
    if-eqz v6, :cond_9

    .line 272
    .line 273
    array-length v7, v6

    .line 274
    const/4 v8, 0x0

    .line 275
    :goto_5
    if-ge v8, v7, :cond_9

    .line 276
    .line 277
    aget-object v9, v6, v8

    .line 278
    .line 279
    iget-boolean v10, v9, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 280
    .line 281
    if-eqz v10, :cond_b

    .line 282
    .line 283
    iget-boolean v9, v9, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 284
    .line 285
    if-eqz v9, :cond_b

    .line 286
    .line 287
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :catch_1
    move-exception v5

    .line 292
    goto :goto_6

    .line 293
    :cond_b
    add-int/2addr v8, v0

    .line 294
    goto :goto_5

    .line 295
    :goto_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_c
    move-object v0, v2

    .line 300
    goto :goto_7

    .line 301
    :cond_d
    const/4 v0, 0x5

    .line 302
    if-ne v2, v0, :cond_e

    .line 303
    .line 304
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    goto :goto_7

    .line 317
    :cond_e
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :goto_7
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 333
    .line 334
    .line 335
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p2, 0x0

    .line 3
    iget-object v0, p0, Lha/n0;->a:Lha/r0;

    .line 4
    .line 5
    iget-object v1, v0, Lha/r0;->j:Lha/q0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lha/r0;->h:Lx9/v;

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge p3, v1, :cond_6

    .line 20
    .line 21
    iget-object v1, v0, Lha/r0;->h:Lx9/v;

    .line 22
    .line 23
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_1
    iget v1, v0, Lha/r0;->i:I

    .line 32
    .line 33
    if-ne v1, p1, :cond_2

    .line 34
    .line 35
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 36
    .line 37
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    iget-object p2, v0, Lha/r0;->h:Lx9/v;

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/yunpan/appmanage/db/AppBean;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    iget-object p2, v0, Lha/r0;->j:Lha/q0;

    .line 58
    .line 59
    iget-object v1, v0, Lha/r0;->h:Lx9/v;

    .line 60
    .line 61
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, v0, Lha/r0;->h:Lx9/v;

    .line 70
    .line 71
    invoke-virtual {v2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Lcom/yunpan/appmanage/db/AppBean;

    .line 76
    .line 77
    iget-object p3, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p2, v1, p3, p1}, Lha/q0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_2
    const/4 v2, 0x2

    .line 96
    if-ne v1, v2, :cond_3

    .line 97
    .line 98
    iget-object p1, v0, Lha/r0;->h:Lx9/v;

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/yunpan/appmanage/db/AppBean;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v1, Lb8/a;

    .line 109
    .line 110
    const/4 v2, 0x6

    .line 111
    invoke-direct {v1, p1, v2}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Lmc/c;

    .line 115
    .line 116
    invoke-direct {p1, p2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v1, Lha/o0;

    .line 134
    .line 135
    invoke-direct {v1, v0, p3, p2}, Lha/o0;-><init>(Lha/r0;II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    const/4 v2, 0x3

    .line 143
    if-eq v1, v2, :cond_5

    .line 144
    .line 145
    const/4 v2, 0x5

    .line 146
    if-ne v1, v2, :cond_4

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    const/4 v2, 0x4

    .line 150
    if-ne v1, v2, :cond_6

    .line 151
    .line 152
    iget-object v1, v0, Lha/r0;->h:Lx9/v;

    .line 153
    .line 154
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 161
    .line 162
    new-instance v2, Lb8/a;

    .line 163
    .line 164
    const/4 v3, 0x7

    .line 165
    invoke-direct {v2, v1, v3}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lmc/c;

    .line 169
    .line 170
    invoke-direct {v1, p2, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 174
    .line 175
    invoke-virtual {v1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p2, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    new-instance v1, Lha/o0;

    .line 188
    .line 189
    invoke-direct {v1, v0, p3, p1}, Lha/o0;-><init>(Lha/r0;II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v1}, Lec/b;->b(Lec/e;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    :goto_0
    iget-object p1, v0, Lha/r0;->j:Lha/q0;

    .line 197
    .line 198
    iget-object p2, v0, Lha/r0;->h:Lx9/v;

    .line 199
    .line 200
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, Lcom/yunpan/appmanage/db/AppBean;

    .line 205
    .line 206
    iget-object p2, p2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v1, v0, Lha/r0;->h:Lx9/v;

    .line 209
    .line 210
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    check-cast p3, Lcom/yunpan/appmanage/db/AppBean;

    .line 215
    .line 216
    iget-object p3, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    invoke-interface {p1, p2, p3, v1}, Lha/q0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_1
    return-void
.end method
