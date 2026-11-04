.class public final synthetic Lcom/yunpan/appmanage/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/util/i;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/util/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/util/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/media3/exoplayer/video/a;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/video/a;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ly3/c;->a:Ls5/c;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lcom/yunpan/appmanage/util/i;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v3, v0, v1, v2}, Ly3/c;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;Ly3/b;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    .line 27
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    const-wide/16 v7, 0x0

    .line 33
    .line 34
    move-object v4, v0

    .line 35
    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/yunpan/appmanage/util/i;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/yunpan/appmanage/util/i;->b:Landroid/content/Context;

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/util/i;-><init>(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v1, 0x21

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-lt v0, v1, :cond_5

    .line 56
    .line 57
    new-instance v0, Landroid/content/ComponentName;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/yunpan/appmanage/util/i;->b:Landroid/content/Context;

    .line 60
    .line 61
    const-string v3, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 62
    .line 63
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eq v3, v2, :cond_5

    .line 75
    .line 76
    invoke-static {}, Lt0/b;->a()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const-string v4, "locale"

    .line 81
    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    sget-object v3, Lq/m;->g:La0/f;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v5, La0/a;

    .line 90
    .line 91
    invoke-direct {v5, v3}, La0/a;-><init>(La0/f;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {v5}, La0/a;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    invoke-virtual {v5}, La0/a;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lq/m;

    .line 111
    .line 112
    if-eqz v3, :cond_0

    .line 113
    .line 114
    check-cast v3, Lq/a0;

    .line 115
    .line 116
    iget-object v3, v3, Lq/a0;->k:Landroid/content/Context;

    .line 117
    .line 118
    if-eqz v3, :cond_0

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const/4 v3, 0x0

    .line 126
    :goto_0
    if-eqz v3, :cond_3

    .line 127
    .line 128
    invoke-static {v3}, Lq/l;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v5, Lt0/j;

    .line 133
    .line 134
    new-instance v6, Lt0/m;

    .line 135
    .line 136
    invoke-direct {v6, v3}, Lt0/m;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v5, v6}, Lt0/j;-><init>(Lt0/l;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    sget-object v5, Lq/m;->c:Lt0/j;

    .line 144
    .line 145
    if-eqz v5, :cond_3

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    sget-object v5, Lt0/j;->b:Lt0/j;

    .line 149
    .line 150
    :goto_1
    iget-object v3, v5, Lt0/j;->a:Lt0/l;

    .line 151
    .line 152
    invoke-interface {v3}, Lt0/l;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_4

    .line 157
    .line 158
    invoke-static {v1}, La9/o;->a0(Landroid/content/Context;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_4

    .line 167
    .line 168
    invoke-static {v3}, Lq/k;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v4, v3}, Lq/l;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 180
    .line 181
    .line 182
    :cond_5
    sput-boolean v2, Lq/m;->f:Z

    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/yunpan/appmanage/util/i;->b:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v2, "enabled_notification_listeners"

    .line 192
    .line 193
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const-string v3, ""

    .line 198
    .line 199
    if-eqz v1, :cond_6

    .line 200
    .line 201
    const-string v4, "null"

    .line 202
    .line 203
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_7

    .line 208
    .line 209
    :cond_6
    move-object v1, v3

    .line 210
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 216
    .line 217
    iget-object v6, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 218
    .line 219
    const-string v7, "/"

    .line 220
    .line 221
    invoke-static {v4, v6, v7, v1}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-nez v4, :cond_a

    .line 226
    .line 227
    const-string v4, ":"

    .line 228
    .line 229
    invoke-static {v1, v4}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-object v6, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-class v6, Lcom/yunpan/appmanage/service/StartService;

    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v6, "::"

    .line 255
    .line 256
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    const/4 v6, 0x1

    .line 265
    if-eqz v3, :cond_8

    .line 266
    .line 267
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_9

    .line 276
    .line 277
    const/4 v3, 0x0

    .line 278
    invoke-static {v6, v3, v1}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-string v1, "notification_enabled"

    .line 294
    .line 295
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    .line 297
    .line 298
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 299
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v2, "cmd notification allow_listener "

    .line 303
    .line 304
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v2, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-class v2, Lcom/yunpan/appmanage/service/StartService;

    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 332
    .line 333
    .line 334
    :cond_a
    return-void

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
