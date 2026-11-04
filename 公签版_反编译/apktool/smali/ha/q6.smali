.class public final Lha/q6;
.super Lha/a4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00af

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .line 1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v3, 0x1a

    .line 7
    .line 8
    if-lt v2, v3, :cond_0

    .line 9
    .line 10
    const-string v2, "batterymanager"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/os/BatteryManager;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lg7/d;->e(Landroid/os/BatteryManager;)I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    if-eq v2, v1, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :try_start_1
    new-instance v4, Landroid/content/IntentFilter;

    .line 29
    .line 30
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v4

    .line 39
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    if-nez v2, :cond_1

    .line 43
    .line 44
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    if-lt v4, v3, :cond_1

    .line 47
    .line 48
    new-instance v2, Landroid/content/IntentFilter;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v2}, Leg/a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_1
    if-nez v2, :cond_2

    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    const-string p0, "level"

    .line 61
    .line 62
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const-string v0, "scale"

    .line 67
    .line 68
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    if-eq p0, v1, :cond_4

    .line 73
    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    int-to-float p0, p0

    .line 78
    const/high16 v1, 0x42c80000    # 100.0f

    .line 79
    .line 80
    mul-float p0, p0, v1

    .line 81
    .line 82
    int-to-float v0, v0

    .line 83
    div-float/2addr p0, v0

    .line 84
    float-to-int p0, p0

    .line 85
    return p0

    .line 86
    :catch_1
    :cond_4
    :goto_1
    return v1
.end method

.method public static b()Lba/h;
    .locals 15

    .line 1
    const-string v0, "</div>"

    .line 2
    .line 3
    const-string v1, "https://www.ip.cn/"

    .line 4
    .line 5
    const-string v2, "isp"

    .line 6
    .line 7
    const-string v3, "city"

    .line 8
    .line 9
    const-string v4, "province"

    .line 10
    .line 11
    const-string v5, "country"

    .line 12
    .line 13
    const-string v6, "data"

    .line 14
    .line 15
    const-string v7, " "

    .line 16
    .line 17
    const-string v8, "https://my.ip.cn/json/?ticket="

    .line 18
    .line 19
    :try_start_0
    const-string v9, "https://qifu.baidu.com/api/v1/ip-portrait/brief-info/local"

    .line 20
    .line 21
    const-string v10, "https://www.baidu.com/"

    .line 22
    .line 23
    invoke-static {v9, v10}, Lha/q6;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    const-string v10, "Success"

    .line 28
    .line 29
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    if-eqz v10, :cond_0

    .line 34
    .line 35
    invoke-static {v9}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-virtual {v9}, Lz7/p;->g()Lz7/s;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-virtual {v9, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    new-instance v11, Lba/h;

    .line 52
    .line 53
    const-string v12, "query_ip"

    .line 54
    .line 55
    invoke-virtual {v9, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    new-instance v12, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    invoke-virtual {v13}, Lz7/p;->i()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    invoke-virtual {v13}, Lz7/p;->i()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    invoke-virtual {v13}, Lz7/p;->i()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    invoke-virtual {v13}, Lz7/p;->i()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v13, "scene"

    .line 125
    .line 126
    invoke-virtual {v10, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    const/4 v12, 0x1

    .line 142
    invoke-direct {v11, v9, v10, v12}, Lba/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    return-object v11

    .line 146
    :cond_0
    new-instance v9, Ljava/lang/Exception;

    .line 147
    .line 148
    const-string v10, "\u8bf7\u6c42\u5931\u8d25"

    .line 149
    .line 150
    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :catch_0
    new-instance v9, Lba/h;

    .line 155
    .line 156
    const-string v10, "\u67e5\u8be2\u5931\u8d25"

    .line 157
    .line 158
    const/4 v11, 0x1

    .line 159
    invoke-direct {v9, v10, v10, v11}, Lba/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    const/4 v11, 0x0

    .line 163
    :try_start_1
    const-string v12, "https://www.ip.cn"

    .line 164
    .line 165
    invoke-static {v12, v1}, Lha/q6;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    const-string v13, ""

    .line 170
    .line 171
    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    const-string v13, "var_ticket=\""

    .line 180
    .line 181
    const-string v14, "\";"

    .line 182
    .line 183
    invoke-static {v12, v13, v14, v11}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-static {v8, v1}, Lha/q6;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v6}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v6, "ip"

    .line 216
    .line 217
    invoke-virtual {v1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    iput-object v6, v9, Lba/h;->b:Ljava/lang/String;

    .line 226
    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v3, "district"

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iput-object v1, v9, Lba/h;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    .line 307
    goto :goto_0

    .line 308
    :catch_1
    nop

    .line 309
    :goto_0
    iget-object v1, v9, Lba/h;->c:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    const/4 v2, 0x1

    .line 316
    if-nez v1, :cond_1

    .line 317
    .line 318
    iget-object v1, v9, Lba/h;->c:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_2

    .line 325
    .line 326
    :cond_1
    :try_start_2
    const-string v1, "https://2026.ip138.com"

    .line 327
    .line 328
    const-string v3, "https://www.ip138.com/"

    .line 329
    .line 330
    invoke-static {v1, v3}, Lha/q6;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    const-string v3, "<title>\u60a8\u7684IP\u5730\u5740\u662f\uff1a"

    .line 335
    .line 336
    const-string v4, "</title>"

    .line 337
    .line 338
    invoke-static {v1, v3, v4, v11}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    iput-object v3, v9, Lba/h;->b:Ljava/lang/String;

    .line 343
    .line 344
    const-string v3, "<span>\u6765\u81ea\uff1a"

    .line 345
    .line 346
    const-string v4, "</span>"

    .line 347
    .line 348
    invoke-static {v1, v3, v4, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iput-object v1, v9, Lba/h;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 353
    .line 354
    goto :goto_1

    .line 355
    :catch_2
    nop

    .line 356
    :cond_2
    :goto_1
    iget-object v1, v9, Lba/h;->c:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_3

    .line 363
    .line 364
    iget-object v1, v9, Lba/h;->c:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_4

    .line 371
    .line 372
    :cond_3
    :try_start_3
    const-string v1, "https://www.ip131.com"

    .line 373
    .line 374
    const-string v3, "https://www.ip131.com/"

    .line 375
    .line 376
    invoke-static {v1, v3}, Lha/q6;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const-string v3, "color:#0000FF\">"

    .line 381
    .line 382
    invoke-static {v1, v3, v0, v11}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    iput-object v3, v9, Lba/h;->b:Ljava/lang/String;

    .line 387
    .line 388
    const-string v3, "font-weight: bold;\">"

    .line 389
    .line 390
    invoke-static {v1, v3, v0, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    iput-object v0, v9, Lba/h;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 395
    .line 396
    goto :goto_2

    .line 397
    :catch_3
    nop

    .line 398
    :cond_4
    :goto_2
    iget-object v0, v9, Lba/h;->c:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-nez v0, :cond_5

    .line 405
    .line 406
    iget-object v0, v9, Lba/h;->c:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_6

    .line 413
    .line 414
    :cond_5
    :try_start_4
    const-string v0, "https://ip.zzgjp.com"

    .line 415
    .line 416
    const-string v1, "https://ip.zzgjp.com/"

    .line 417
    .line 418
    invoke-static {v0, v1}, Lha/q6;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    const-string v1, "data-info=\"\u6211\u7684IP: "

    .line 423
    .line 424
    const-string v3, "\">"

    .line 425
    .line 426
    invoke-static {v0, v1, v3, v11}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    iput-object v1, v9, Lba/h;->b:Ljava/lang/String;

    .line 431
    .line 432
    const-string v1, ">\u5730\u70b9:</span><span"

    .line 433
    .line 434
    const-string v3, "</"

    .line 435
    .line 436
    invoke-static {v0, v1, v3, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    const-string v1, ">"

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    add-int/2addr v1, v2

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    iput-object v0, v9, Lba/h;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 452
    .line 453
    :catch_4
    :cond_6
    return-object v9
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/net/NetworkInterface;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/net/InetAddress;

    .line 45
    .line 46
    instance-of v3, v2, Ljava/net/Inet6Address;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 62
    .line 63
    const-string v1, "\u672a\u627e\u5230IPv6\u5730\u5740"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    throw v0

    .line 70
    :goto_2
    goto :goto_1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ll9/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "Referer"

    .line 7
    .line 8
    iget-object v1, v0, Lm9/e;->i:Lk9/a;

    .line 9
    .line 10
    invoke-virtual {v1, p0, p1}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p0, "User-Agent"

    .line 14
    .line 15
    const-string p1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0"

    .line 16
    .line 17
    iget-object v1, v0, Lm9/e;->i:Lk9/a;

    .line 18
    .line 19
    invoke-virtual {v1, p0, p1}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lm9/e;->a()Lokhttp3/Response;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :catch_0
    const-string p0, ""

    .line 58
    .line 59
    return-object p0
.end method

.method public static e(D)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "%.2f"

    .line 4
    .line 5
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 6
    .line 7
    cmpg-double v5, p0, v3

    .line 8
    .line 9
    if-gez v5, :cond_0

    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array p1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object p0, p1, v0

    .line 18
    .line 19
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "k"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    .line 31
    .line 32
    cmpg-double v7, p0, v5

    .line 33
    .line 34
    if-gez v7, :cond_1

    .line 35
    .line 36
    div-double/2addr p0, v3

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-array p1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p0, p1, v0

    .line 44
    .line 45
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "M"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    div-double/2addr p0, v3

    .line 57
    div-double/2addr p0, v3

    .line 58
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-array p1, v1, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object p0, p1, v0

    .line 65
    .line 66
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "G"

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    const p1, 0x7f0b04f1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 13
    .line 14
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 15
    .line 16
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v1, v2, v3, v0}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lx9/o2;

    .line 26
    .line 27
    invoke-direct {v1}, Lx9/o2;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 34
    .line 35
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 36
    .line 37
    iget p1, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 38
    .line 39
    if-lez p1, :cond_0

    .line 40
    .line 41
    new-instance v2, Lx9/k5;

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v3, "\u7528\u6237"

    .line 48
    .line 49
    invoke-direct {v2, v3, p1, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 56
    .line 57
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const-string v4, "\u54c1\u724c"

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    new-instance v2, Lx9/k5;

    .line 68
    .line 69
    invoke-direct {v2, v4, p1, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string v3, "\u672a\u77e5"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_3

    .line 83
    .line 84
    const-string v3, "unknown"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    const-string v3, "null"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    new-instance v3, Lx9/k5;

    .line 102
    .line 103
    const-string v5, "\u3001"

    .line 104
    .line 105
    invoke-static {p1, v5, v2}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v3, v4, p1, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    new-instance v2, Lx9/k5;

    .line 117
    .line 118
    invoke-direct {v2, v4, p1, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    new-instance p1, La1/d;

    .line 125
    .line 126
    const/16 v2, 0x1b

    .line 127
    .line 128
    invoke-direct {p1, v2, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Lmc/c;

    .line 132
    .line 133
    invoke-direct {v2, v0, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 137
    .line 138
    invoke-virtual {v2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v0, Lha/p0;

    .line 151
    .line 152
    const/16 v2, 0xc

    .line 153
    .line 154
    invoke-direct {v0, v2, v1}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
