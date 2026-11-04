.class public final La2/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La2/k;->a:I

    iput-object p2, p0, La2/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, La2/k;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ".BROADCAST_TO_ACTIVITY"

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    :try_start_0
    const-string p1, "typeName"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "ACC_IS_RUNNING_YES"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->I:Lcom/yunpan/appmanage/carsdk/u;

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->I:Lcom/yunpan/appmanage/carsdk/u;

    .line 60
    .line 61
    const/4 p2, 0x1

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 66
    .line 67
    const p2, 0x7f08021c

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 74
    .line 75
    const-string p2, "\u670d\u52a1\u8fd0\u884c\u4e2d"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string p2, "ACC_CLOSE"

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 90
    .line 91
    const p2, 0x7f080237

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 98
    .line 99
    const-string p2, "\u5f00\u542f\u670d\u52a1(\u603b\u5f00\u5173)"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    iget v6, p0, La2/k;->a:I

    .line 9
    .line 10
    packed-switch v6, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 34
    .line 35
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_2
    new-instance v0, Landroid/os/Message;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 50
    .line 51
    .line 52
    const-wide/16 v6, 0x29a

    .line 53
    .line 54
    iget-object v8, p0, La2/k;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v8, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    sparse-switch v9, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :sswitch_0
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    .line 67
    .line 68
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v1, 0x3

    .line 76
    goto :goto_0

    .line 77
    :sswitch_1
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 78
    .line 79
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const/4 v1, 0x2

    .line 87
    goto :goto_0

    .line 88
    :sswitch_2
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    .line 89
    .line 90
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const/4 v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :sswitch_3
    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    .line 100
    .line 101
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    const/4 v1, 0x0

    .line 109
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_0
    sget-object p1, Lma/h;->a:Lma/i;

    .line 114
    .line 115
    iget-boolean v1, p1, Lma/i;->f:Z

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    iget-object v1, p1, Lma/i;->h:Lma/f;

    .line 120
    .line 121
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p1, Lma/i;->h:Lma/f;

    .line 125
    .line 126
    const-wide/16 v1, 0x29c

    .line 127
    .line 128
    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    .line 130
    .line 131
    :cond_7
    iput v4, v0, Landroid/os/Message;->what:I

    .line 132
    .line 133
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    .line 135
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 136
    .line 137
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_1
    iput v5, v0, Landroid/os/Message;->what:I

    .line 142
    .line 143
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    .line 145
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 146
    .line 147
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :pswitch_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 157
    .line 158
    new-instance v0, Lfa/v;

    .line 159
    .line 160
    invoke-direct {v0, v8, p2, v3, v2}, Lfa/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_3
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 168
    .line 169
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 173
    .line 174
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    .line 181
    .line 182
    iput v2, v0, Landroid/os/Message;->what:I

    .line 183
    .line 184
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    .line 186
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 187
    .line 188
    const-wide/16 v1, 0x14d

    .line 189
    .line 190
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    .line 192
    .line 193
    :goto_1
    return-void

    .line 194
    :pswitch_4
    invoke-direct {p0, p1, p2}, La2/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_5
    iget-object p2, p0, La2/k;->b:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p2, Lu1/p;

    .line 201
    .line 202
    iget-object p2, p2, Lu1/p;->c:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p2, Ljava/util/concurrent/Executor;

    .line 205
    .line 206
    new-instance v0, Ls1/f;

    .line 207
    .line 208
    const/4 v1, 0x5

    .line 209
    invoke-direct {v0, p0, p1, v1}, Ls1/f;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-nez p1, :cond_8

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_8
    iget-object v1, p0, La2/k;->b:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v1, Lcom/yunpan/appmanage/service/StartService;

    .line 226
    .line 227
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->d(Lcom/yunpan/appmanage/service/StartService;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {v2}, Lta/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_b

    .line 240
    .line 241
    :try_start_0
    const-string p1, "bool"

    .line 242
    .line 243
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_9

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/yunpan/appmanage/service/StartService;->d()V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 254
    .line 255
    if-lt p1, v0, :cond_a

    .line 256
    .line 257
    invoke-static {v1}, Lq/t;->s(Lcom/yunpan/appmanage/service/StartService;)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_a
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->p(Lcom/yunpan/appmanage/service/StartService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .line 263
    .line 264
    :catch_0
    :cond_b
    :goto_2
    return-void

    .line 265
    :pswitch_7
    iget-object p1, p0, La2/k;->b:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p1, Lcom/yunpan/appmanage/service/AccService;

    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    if-nez v1, :cond_c

    .line 274
    .line 275
    goto/16 :goto_6

    .line 276
    .line 277
    :cond_c
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v6, ".BROADCAST_TO_ACC"

    .line 295
    .line 296
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    const-string v7, "bool"

    .line 308
    .line 309
    if-eqz v6, :cond_20

    .line 310
    .line 311
    :try_start_2
    const-string v0, "typeName"

    .line 312
    .line 313
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    if-nez v0, :cond_d

    .line 318
    .line 319
    goto/16 :goto_6

    .line 320
    .line 321
    :cond_d
    const-string v2, "INTERCEPT_KEY_ACC"

    .line 322
    .line 323
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_e

    .line 328
    .line 329
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    iput-boolean v0, p1, Lcom/yunpan/appmanage/service/AccService;->F:Z

    .line 334
    .line 335
    if-eqz v0, :cond_3d

    .line 336
    .line 337
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 338
    .line 339
    new-instance v0, Lta/d;

    .line 340
    .line 341
    invoke-direct {v0, p0, v4}, Lta/d;-><init>(La2/k;I)V

    .line 342
    .line 343
    .line 344
    const-wide/16 v2, 0x1388

    .line 345
    .line 346
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    .line 348
    .line 349
    goto/16 :goto_4

    .line 350
    .line 351
    :cond_e
    const-string v2, "UP_KEYMAP_ACC"

    .line 352
    .line 353
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_f

    .line 358
    .line 359
    sget v0, Lcom/yunpan/appmanage/service/AccService;->U0:I

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/yunpan/appmanage/service/AccService;->d()V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_4

    .line 365
    .line 366
    :cond_f
    const-string v2, "UP_KEYMAP_NISSAN"

    .line 367
    .line 368
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_11

    .line 373
    .line 374
    iget-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->c:Lpa/h;

    .line 375
    .line 376
    if-nez v0, :cond_10

    .line 377
    .line 378
    new-instance v0, Lpa/h;

    .line 379
    .line 380
    invoke-direct {v0, p1}, Lpa/h;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 381
    .line 382
    .line 383
    iput-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->c:Lpa/h;

    .line 384
    .line 385
    :cond_10
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->c:Lpa/h;

    .line 386
    .line 387
    invoke-virtual {p1}, Lpa/h;->a()V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_4

    .line 391
    .line 392
    :cond_11
    const-string v2, "UP_KEYMAP_LOGCAT"

    .line 393
    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_13

    .line 399
    .line 400
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 401
    .line 402
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 403
    .line 404
    if-eqz v0, :cond_12

    .line 405
    .line 406
    const-string v0, "\u914d\u7f6e\u66f4\u65b0"

    .line 407
    .line 408
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :cond_12
    invoke-virtual {p1}, Lcom/yunpan/appmanage/service/AccService;->e()V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_4

    .line 415
    .line 416
    :cond_13
    const-string v2, "UP_KEYMAP_EVENT"

    .line 417
    .line 418
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_14

    .line 423
    .line 424
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0, p1}, Lwa/s;->p(Lcom/yunpan/appmanage/service/AccService;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_4

    .line 432
    .line 433
    :cond_14
    const-string v2, "UP_AUTO_INIT"

    .line 434
    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_15

    .line 440
    .line 441
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 442
    .line 443
    invoke-virtual {p1}, Lwa/u;->c()V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_4

    .line 447
    .line 448
    :cond_15
    const-string v2, "ACC_IS_RUNNING"

    .line 449
    .line 450
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eqz v2, :cond_16

    .line 455
    .line 456
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 457
    .line 458
    iget-object p1, p1, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 459
    .line 460
    const-string v0, "ACC_IS_RUNNING_YES"

    .line 461
    .line 462
    invoke-static {p1, v0}, Lta/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_4

    .line 466
    .line 467
    :cond_16
    const-string v2, "UP_FLOAT_BUTTON"

    .line 468
    .line 469
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-eqz v2, :cond_17

    .line 474
    .line 475
    invoke-static {}, Lya/e;->b()Lya/e;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lya/e;->d()V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_4

    .line 483
    .line 484
    :cond_17
    const-string v2, "UP_INIT_JIE_TU"

    .line 485
    .line 486
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-eqz v2, :cond_18

    .line 491
    .line 492
    sget-object v0, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 493
    .line 494
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/carsdk/h0;->b(Lcom/yunpan/appmanage/service/AccService;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_4

    .line 498
    .line 499
    :cond_18
    const-string v2, "UP_INIT_AIONY"

    .line 500
    .line 501
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-eqz v2, :cond_1b

    .line 506
    .line 507
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->f()Lz7/s;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    if-nez p1, :cond_19

    .line 512
    .line 513
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    iget-boolean p1, p1, Lwa/s;->q:Z

    .line 518
    .line 519
    if-eqz p1, :cond_3d

    .line 520
    .line 521
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->j()V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_4

    .line 525
    .line 526
    :cond_19
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    iget-boolean v0, v0, Lwa/s;->q:Z

    .line 531
    .line 532
    if-eqz v0, :cond_1a

    .line 533
    .line 534
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/carsdk/e;->b(Lz7/s;)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_4

    .line 542
    .line 543
    :cond_1a
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    iget-object p1, p1, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 548
    .line 549
    invoke-static {p1}, Lcom/yunpan/appmanage/carsdk/e;->i(Landroid/content/Context;)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_4

    .line 553
    .line 554
    :cond_1b
    const-string v2, "UP_INIT_SIDEBAR"

    .line 555
    .line 556
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-eqz v2, :cond_1c

    .line 561
    .line 562
    invoke-static {}, Lya/h;->a()Lya/h;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0, p1}, Lya/h;->b(Lcom/yunpan/appmanage/service/AccService;)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_4

    .line 570
    .line 571
    :cond_1c
    const-string v2, "UP_INIT_FLY18"

    .line 572
    .line 573
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_1e

    .line 578
    .line 579
    iget-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->d:Lcom/yunpan/appmanage/carsdk/x;

    .line 580
    .line 581
    if-eqz v0, :cond_1d

    .line 582
    .line 583
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/x;->m()V

    .line 584
    .line 585
    .line 586
    :cond_1d
    invoke-static {p1}, Lcom/yunpan/appmanage/carsdk/x;->i(Landroid/content/Context;)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-eqz v0, :cond_3d

    .line 591
    .line 592
    new-instance v0, Lcom/yunpan/appmanage/carsdk/x;

    .line 593
    .line 594
    invoke-direct {v0, p1}, Lcom/yunpan/appmanage/carsdk/x;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 595
    .line 596
    .line 597
    iput-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->d:Lcom/yunpan/appmanage/carsdk/x;

    .line 598
    .line 599
    goto/16 :goto_4

    .line 600
    .line 601
    :cond_1e
    const-string v2, "UP_INIT_NotUseShizuku"

    .line 602
    .line 603
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-eqz v2, :cond_1f

    .line 608
    .line 609
    sget-object p1, Lfa/n0;->a:Lfa/o0;

    .line 610
    .line 611
    invoke-virtual {p1}, Lfa/o0;->d()V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_4

    .line 615
    .line 616
    :cond_1f
    const-string v2, "UP_ACC_SHELL_SECCOMP_ROOT"

    .line 617
    .line 618
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-eqz v0, :cond_3d

    .line 623
    .line 624
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 625
    .line 626
    new-instance v0, Lta/d;

    .line 627
    .line 628
    invoke-direct {v0, p0, v5}, Lta/d;-><init>(La2/k;I)V

    .line 629
    .line 630
    .line 631
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 632
    .line 633
    .line 634
    goto/16 :goto_4

    .line 635
    .line 636
    :cond_20
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    invoke-static {v6}, Lta/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    if-eqz v6, :cond_23

    .line 649
    .line 650
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 651
    .line 652
    invoke-virtual {v2}, Lwa/u;->c()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-eqz v2, :cond_21

    .line 660
    .line 661
    sget v0, Lcom/yunpan/appmanage/service/AccService;->U0:I

    .line 662
    .line 663
    invoke-virtual {p1}, Lcom/yunpan/appmanage/service/AccService;->g()V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_4

    .line 667
    .line 668
    :cond_21
    sget v2, Lcom/yunpan/appmanage/service/AccService;->U0:I

    .line 669
    .line 670
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 671
    .line 672
    if-lt v2, v0, :cond_22

    .line 673
    .line 674
    invoke-static {p1}, Lq/t;->r(Lcom/yunpan/appmanage/service/AccService;)V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_4

    .line 678
    .line 679
    :cond_22
    invoke-virtual {p1, v5}, Landroid/app/Service;->stopForeground(Z)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_4

    .line 683
    .line 684
    :catch_1
    move-exception p1

    .line 685
    goto/16 :goto_5

    .line 686
    .line 687
    :cond_23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    new-instance v6, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v0, ".BROADCAST_AUTO_RORATION_UP_TWO"

    .line 700
    .line 701
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    if-eqz v0, :cond_25

    .line 713
    .line 714
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 715
    .line 716
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    iput-boolean v0, p1, Lwa/u;->Q:Z

    .line 721
    .line 722
    sget-object v0, Lwa/y;->a:Lwa/z;

    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    iget-boolean p1, p1, Lwa/u;->Q:Z

    .line 728
    .line 729
    if-nez p1, :cond_24

    .line 730
    .line 731
    iget-object p1, v0, Lwa/z;->c:Lv8/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 732
    .line 733
    if-eqz p1, :cond_3d

    .line 734
    .line 735
    :try_start_4
    invoke-virtual {p1}, Lv8/a;->b()V

    .line 736
    .line 737
    .line 738
    iget-object p1, v0, Lwa/z;->c:Lv8/a;

    .line 739
    .line 740
    invoke-virtual {p1}, Lv8/a;->g()V

    .line 741
    .line 742
    .line 743
    const/4 p1, 0x0

    .line 744
    iput-object p1, v0, Lwa/z;->c:Lv8/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 745
    .line 746
    goto/16 :goto_4

    .line 747
    .line 748
    :cond_24
    :try_start_5
    iget-object p1, v0, Lwa/z;->d:Lv8/a;

    .line 749
    .line 750
    if-eqz p1, :cond_3d

    .line 751
    .line 752
    invoke-virtual {v0}, Lwa/z;->b()V

    .line 753
    .line 754
    .line 755
    goto/16 :goto_4

    .line 756
    .line 757
    :cond_25
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 758
    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-eqz v0, :cond_27

    .line 764
    .line 765
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 766
    .line 767
    const/high16 v0, -0x80000000

    .line 768
    .line 769
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 770
    .line 771
    .line 772
    move-result p1

    .line 773
    const/16 v0, 0xc

    .line 774
    .line 775
    if-ne p1, v0, :cond_26

    .line 776
    .line 777
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    const/16 v0, 0xc8

    .line 782
    .line 783
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_4

    .line 787
    .line 788
    :cond_26
    const/16 v0, 0xa

    .line 789
    .line 790
    if-ne p1, v0, :cond_3d

    .line 791
    .line 792
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    const/16 v0, 0xc9

    .line 797
    .line 798
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_4

    .line 802
    .line 803
    :cond_27
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 804
    .line 805
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    const-wide/16 v6, 0x8ae

    .line 810
    .line 811
    if-eqz v0, :cond_29

    .line 812
    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 814
    .line 815
    .line 816
    move-result-wide v2

    .line 817
    iget-wide v4, p1, Lcom/yunpan/appmanage/service/AccService;->n:J

    .line 818
    .line 819
    sub-long/2addr v2, v4

    .line 820
    cmp-long p1, v2, v6

    .line 821
    .line 822
    if-gez p1, :cond_28

    .line 823
    .line 824
    goto/16 :goto_6

    .line 825
    .line 826
    :cond_28
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 827
    .line 828
    .line 829
    move-result-object p1

    .line 830
    const/16 v0, 0xca

    .line 831
    .line 832
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 833
    .line 834
    .line 835
    goto/16 :goto_4

    .line 836
    .line 837
    :cond_29
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 838
    .line 839
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    if-eqz v0, :cond_2a

    .line 844
    .line 845
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    const/16 v0, 0xcb

    .line 850
    .line 851
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_4

    .line 855
    .line 856
    :cond_2a
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 857
    .line 858
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-eqz v0, :cond_2e

    .line 863
    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 865
    .line 866
    .line 867
    move-result-wide v8

    .line 868
    iget-wide v10, p1, Lcom/yunpan/appmanage/service/AccService;->n:J

    .line 869
    .line 870
    sub-long/2addr v8, v10

    .line 871
    cmp-long p1, v8, v6

    .line 872
    .line 873
    if-gez p1, :cond_2b

    .line 874
    .line 875
    goto/16 :goto_6

    .line 876
    .line 877
    :cond_2b
    const-string p1, "wifi_state"

    .line 878
    .line 879
    const/4 v0, 0x4

    .line 880
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 881
    .line 882
    .line 883
    move-result p1

    .line 884
    if-eqz p1, :cond_3d

    .line 885
    .line 886
    if-eq p1, v5, :cond_2d

    .line 887
    .line 888
    if-eq p1, v3, :cond_3d

    .line 889
    .line 890
    if-eq p1, v2, :cond_2c

    .line 891
    .line 892
    goto/16 :goto_4

    .line 893
    .line 894
    :cond_2c
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    const/16 v0, 0x12c

    .line 899
    .line 900
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 901
    .line 902
    .line 903
    goto/16 :goto_4

    .line 904
    .line 905
    :cond_2d
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 906
    .line 907
    .line 908
    move-result-object p1

    .line 909
    const/16 v0, 0x12d

    .line 910
    .line 911
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 912
    .line 913
    .line 914
    goto/16 :goto_4

    .line 915
    .line 916
    :cond_2e
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 917
    .line 918
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    if-eqz v0, :cond_33

    .line 923
    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 925
    .line 926
    .line 927
    move-result-wide v3

    .line 928
    iget-wide v8, p1, Lcom/yunpan/appmanage/service/AccService;->n:J

    .line 929
    .line 930
    sub-long/2addr v3, v8

    .line 931
    cmp-long v0, v3, v6

    .line 932
    .line 933
    if-gez v0, :cond_2f

    .line 934
    .line 935
    goto/16 :goto_6

    .line 936
    .line 937
    :cond_2f
    const-string v0, "networkInfo"

    .line 938
    .line 939
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    check-cast v0, Landroid/net/NetworkInfo;

    .line 944
    .line 945
    if-nez v0, :cond_30

    .line 946
    .line 947
    goto/16 :goto_6

    .line 948
    .line 949
    :cond_30
    iget-object v3, p1, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 950
    .line 951
    if-eqz v3, :cond_31

    .line 952
    .line 953
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 954
    .line 955
    .line 956
    move-result v3

    .line 957
    if-eqz v3, :cond_32

    .line 958
    .line 959
    :cond_31
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    iput-object v2, p1, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 964
    .line 965
    :cond_32
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 966
    .line 967
    new-instance v2, Ls1/f;

    .line 968
    .line 969
    invoke-direct {v2, p0, v5, v0}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 970
    .line 971
    .line 972
    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 973
    .line 974
    .line 975
    goto/16 :goto_4

    .line 976
    .line 977
    :cond_33
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 978
    .line 979
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 980
    .line 981
    .line 982
    move-result v0

    .line 983
    if-eqz v0, :cond_35

    .line 984
    .line 985
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 986
    .line 987
    .line 988
    move-result-object p1

    .line 989
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 994
    .line 995
    and-int/lit8 p1, p1, 0x30

    .line 996
    .line 997
    const/16 v0, 0x20

    .line 998
    .line 999
    if-ne p1, v0, :cond_34

    .line 1000
    .line 1001
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p1

    .line 1005
    const/16 v0, 0x79

    .line 1006
    .line 1007
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 1008
    .line 1009
    .line 1010
    goto/16 :goto_4

    .line 1011
    .line 1012
    :cond_34
    const/16 v0, 0x10

    .line 1013
    .line 1014
    if-ne p1, v0, :cond_3d

    .line 1015
    .line 1016
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p1

    .line 1020
    const/16 v0, 0x78

    .line 1021
    .line 1022
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_4

    .line 1026
    .line 1027
    :cond_35
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 1028
    .line 1029
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1033
    const-string v2, ","

    .line 1034
    .line 1035
    const-string v3, ""

    .line 1036
    .line 1037
    if-eqz v0, :cond_37

    .line 1038
    .line 1039
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1040
    .line 1041
    .line 1042
    move-result-wide v4

    .line 1043
    iput-wide v4, p1, Lcom/yunpan/appmanage/service/AccService;->g:J

    .line 1044
    .line 1045
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p1

    .line 1049
    const/16 v0, 0x15e

    .line 1050
    .line 1051
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 1052
    .line 1053
    .line 1054
    const-string p1, "device"

    .line 1055
    .line 1056
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1057
    .line 1058
    .line 1059
    move-result-object p1

    .line 1060
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 1061
    .line 1062
    if-nez p1, :cond_36

    .line 1063
    .line 1064
    goto/16 :goto_6

    .line 1065
    .line 1066
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 1082
    .line 1083
    .line 1084
    move-result p1

    .line 1085
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object p1

    .line 1092
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    const/16 v2, 0x160

    .line 1097
    .line 1098
    invoke-virtual {v0, v2, p1}, Lwa/s;->j(ILjava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    goto/16 :goto_4

    .line 1102
    .line 1103
    :cond_37
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 1104
    .line 1105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v0

    .line 1109
    if-eqz v0, :cond_38

    .line 1110
    .line 1111
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    const/16 v4, 0x15f

    .line 1116
    .line 1117
    invoke-virtual {v0, v4}, Lwa/s;->i(I)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->p:Landroid/hardware/usb/UsbManager;

    .line 1121
    .line 1122
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    iget-object v4, p1, Lcom/yunpan/appmanage/service/AccService;->q:Ljava/util/HashSet;

    .line 1127
    .line 1128
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v4

    .line 1143
    if-eqz v4, :cond_3d

    .line 1144
    .line 1145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v4

    .line 1149
    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 1150
    .line 1151
    iget-object v5, p1, Lcom/yunpan/appmanage/service/AccService;->q:Ljava/util/HashSet;

    .line 1152
    .line 1153
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 1162
    .line 1163
    .line 1164
    move-result v7

    .line 1165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 1172
    .line 1173
    .line 1174
    move-result v4

    .line 1175
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v4

    .line 1182
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1183
    .line 1184
    .line 1185
    goto :goto_3

    .line 1186
    :cond_38
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 1187
    .line 1188
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v0

    .line 1192
    if-eqz v0, :cond_3a

    .line 1193
    .line 1194
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1195
    .line 1196
    .line 1197
    move-result-object p1

    .line 1198
    const/16 v0, 0x168

    .line 1199
    .line 1200
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 1201
    .line 1202
    .line 1203
    const-string p1, "accessory"

    .line 1204
    .line 1205
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1206
    .line 1207
    .line 1208
    move-result-object p1

    .line 1209
    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 1210
    .line 1211
    if-nez p1, :cond_39

    .line 1212
    .line 1213
    goto/16 :goto_6

    .line 1214
    .line 1215
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object p1

    .line 1231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object p1

    .line 1238
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1239
    .line 1240
    .line 1241
    goto :goto_4

    .line 1242
    :cond_3a
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 1243
    .line 1244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    if-eqz v0, :cond_3b

    .line 1249
    .line 1250
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1251
    .line 1252
    .line 1253
    move-result-object p1

    .line 1254
    const/16 v0, 0x169

    .line 1255
    .line 1256
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 1257
    .line 1258
    .line 1259
    goto :goto_4

    .line 1260
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    const-string v2, ".MAP_TASK"

    .line 1273
    .line 1274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v0

    .line 1285
    if-eqz v0, :cond_3d

    .line 1286
    .line 1287
    const-string v0, "\u63a5\u5230\u5e7f\u64ad"

    .line 1288
    .line 1289
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1290
    .line 1291
    .line 1292
    const-string v0, "json"

    .line 1293
    .line 1294
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    instance-of v2, v0, Lz7/o;

    .line 1303
    .line 1304
    if-eqz v2, :cond_3c

    .line 1305
    .line 1306
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1311
    .line 1312
    .line 1313
    goto :goto_4

    .line 1314
    :cond_3c
    instance-of v2, v0, Lz7/s;

    .line 1315
    .line 1316
    if-eqz v2, :cond_3d

    .line 1317
    .line 1318
    new-instance v2, Lz7/o;

    .line 1319
    .line 1320
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    invoke-virtual {v2, v0}, Lz7/o;->k(Lz7/p;)V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1331
    .line 1332
    .line 1333
    :catch_2
    :cond_3d
    :goto_4
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1334
    .line 1335
    .line 1336
    move-result-object p1

    .line 1337
    iget-object p1, p1, Lwa/s;->l:Ljava/util/HashSet;

    .line 1338
    .line 1339
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result p1

    .line 1343
    if-eqz p1, :cond_3f

    .line 1344
    .line 1345
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1346
    .line 1347
    .line 1348
    move-result-object p1

    .line 1349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1350
    .line 1351
    .line 1352
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    iget-object v0, v0, Lwa/s;->w:Lz7/s;

    .line 1357
    .line 1358
    if-nez v0, :cond_3e

    .line 1359
    .line 1360
    goto :goto_6

    .line 1361
    :cond_3e
    iget-object v0, p1, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 1362
    .line 1363
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 1364
    .line 1365
    new-instance v1, Ls1/f;

    .line 1366
    .line 1367
    const/16 v2, 0xd

    .line 1368
    .line 1369
    invoke-direct {v1, p1, v2, p2}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1370
    .line 1371
    .line 1372
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1373
    .line 1374
    .line 1375
    goto :goto_6

    .line 1376
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1377
    .line 1378
    .line 1379
    :cond_3f
    :goto_6
    return-void

    .line 1380
    :pswitch_8
    iget-object p1, p0, La2/k;->b:Ljava/lang/Object;

    .line 1381
    .line 1382
    check-cast p1, Lfe/c;

    .line 1383
    .line 1384
    invoke-virtual {p1}, Lfe/c;->g()V

    .line 1385
    .line 1386
    .line 1387
    return-void

    .line 1388
    :pswitch_9
    const-string p1, "get size="

    .line 1389
    .line 1390
    const-string v0, "set size="

    .line 1391
    .line 1392
    const-string v1, "localCallback size="

    .line 1393
    .line 1394
    const-string v2, "subscribe size="

    .line 1395
    .line 1396
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    const-string v4, "action="

    .line 1399
    .line 1400
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object p2

    .line 1407
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1411
    .line 1412
    .line 1413
    move-result-object p2

    .line 1414
    invoke-static {p2}, Lif/a;->o0(Ljava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    iget-object p2, p0, La2/k;->b:Ljava/lang/Object;

    .line 1418
    .line 1419
    check-cast p2, Ll6/d;

    .line 1420
    .line 1421
    iget-object v3, p2, Ll6/d;->e:Lj6/c;

    .line 1422
    .line 1423
    if-nez v3, :cond_41

    .line 1424
    .line 1425
    iget-object p2, p2, Ll6/d;->o:Ljava/util/ArrayList;

    .line 1426
    .line 1427
    monitor-enter p2

    .line 1428
    :try_start_7
    iget-object v3, p0, La2/k;->b:Ljava/lang/Object;

    .line 1429
    .line 1430
    check-cast v3, Ll6/d;

    .line 1431
    .line 1432
    iget-object v3, v3, Ll6/d;->o:Ljava/util/ArrayList;

    .line 1433
    .line 1434
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1435
    .line 1436
    .line 1437
    move-result v3

    .line 1438
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v2

    .line 1450
    invoke-static {v2}, Lif/a;->o0(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1454
    iget-object p2, p0, La2/k;->b:Ljava/lang/Object;

    .line 1455
    .line 1456
    check-cast p2, Ll6/d;

    .line 1457
    .line 1458
    iget-object v2, p2, Ll6/d;->q:Ljava/util/ArrayList;

    .line 1459
    .line 1460
    monitor-enter v2

    .line 1461
    :try_start_8
    iget-object p2, p0, La2/k;->b:Ljava/lang/Object;

    .line 1462
    .line 1463
    check-cast p2, Ll6/d;

    .line 1464
    .line 1465
    iget-object p2, p2, Ll6/d;->q:Ljava/util/ArrayList;

    .line 1466
    .line 1467
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 1468
    .line 1469
    .line 1470
    move-result p2

    .line 1471
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v1

    .line 1483
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 1484
    .line 1485
    .line 1486
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1487
    iget-object v1, p0, La2/k;->b:Ljava/lang/Object;

    .line 1488
    .line 1489
    check-cast v1, Ll6/d;

    .line 1490
    .line 1491
    iget-object v1, v1, Ll6/d;->m:Ljava/util/ArrayList;

    .line 1492
    .line 1493
    monitor-enter v1

    .line 1494
    :try_start_9
    iget-object v2, p0, La2/k;->b:Ljava/lang/Object;

    .line 1495
    .line 1496
    check-cast v2, Ll6/d;

    .line 1497
    .line 1498
    iget-object v2, v2, Ll6/d;->m:Ljava/util/ArrayList;

    .line 1499
    .line 1500
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1501
    .line 1502
    .line 1503
    move-result v2

    .line 1504
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v0

    .line 1516
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1520
    iget-object v0, p0, La2/k;->b:Ljava/lang/Object;

    .line 1521
    .line 1522
    check-cast v0, Ll6/d;

    .line 1523
    .line 1524
    iget-object v0, v0, Ll6/d;->n:Ljava/util/ArrayList;

    .line 1525
    .line 1526
    monitor-enter v0

    .line 1527
    :try_start_a
    iget-object v1, p0, La2/k;->b:Ljava/lang/Object;

    .line 1528
    .line 1529
    check-cast v1, Ll6/d;

    .line 1530
    .line 1531
    iget-object v1, v1, Ll6/d;->n:Ljava/util/ArrayList;

    .line 1532
    .line 1533
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1534
    .line 1535
    .line 1536
    move-result v1

    .line 1537
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1538
    .line 1539
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1546
    .line 1547
    .line 1548
    move-result-object p1

    .line 1549
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1553
    if-gtz v3, :cond_40

    .line 1554
    .line 1555
    if-gtz p2, :cond_40

    .line 1556
    .line 1557
    if-gtz v2, :cond_40

    .line 1558
    .line 1559
    if-lez v1, :cond_42

    .line 1560
    .line 1561
    :cond_40
    iget-object p1, p0, La2/k;->b:Ljava/lang/Object;

    .line 1562
    .line 1563
    check-cast p1, Ll6/d;

    .line 1564
    .line 1565
    invoke-virtual {p1}, Ll6/d;->f()V

    .line 1566
    .line 1567
    .line 1568
    iget-object p1, p0, La2/k;->b:Ljava/lang/Object;

    .line 1569
    .line 1570
    check-cast p1, Ll6/d;

    .line 1571
    .line 1572
    invoke-virtual {p1}, Ll6/d;->a()Z

    .line 1573
    .line 1574
    .line 1575
    goto :goto_7

    .line 1576
    :catchall_0
    move-exception p1

    .line 1577
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1578
    throw p1

    .line 1579
    :catchall_1
    move-exception p1

    .line 1580
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1581
    throw p1

    .line 1582
    :catchall_2
    move-exception p1

    .line 1583
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1584
    throw p1

    .line 1585
    :catchall_3
    move-exception p1

    .line 1586
    :try_start_e
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1587
    throw p1

    .line 1588
    :cond_41
    const-string p1, "service has bond!"

    .line 1589
    .line 1590
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 1591
    .line 1592
    .line 1593
    :cond_42
    :goto_7
    return-void

    .line 1594
    :pswitch_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1595
    .line 1596
    .line 1597
    move-result-object p1

    .line 1598
    iget-object v0, p0, La2/k;->b:Ljava/lang/Object;

    .line 1599
    .line 1600
    check-cast v0, Lha/j6;

    .line 1601
    .line 1602
    iget-object v2, v0, Lha/a4;->b:Landroid/content/Context;

    .line 1603
    .line 1604
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v2

    .line 1608
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    .line 1616
    const-string v2, ".BROADCAST_ACC_KEY_CODE"

    .line 1617
    .line 1618
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v2

    .line 1625
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result p1

    .line 1629
    if-eqz p1, :cond_43

    .line 1630
    .line 1631
    :try_start_f
    const-string p1, "keyCode"

    .line 1632
    .line 1633
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1634
    .line 1635
    .line 1636
    move-result p1

    .line 1637
    const-string v2, "action"

    .line 1638
    .line 1639
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1640
    .line 1641
    .line 1642
    move-result p2

    .line 1643
    if-eq p1, v1, :cond_43

    .line 1644
    .line 1645
    iget-object v1, v0, Lha/j6;->l:Lx9/i2;

    .line 1646
    .line 1647
    new-instance v2, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 1648
    .line 1649
    invoke-direct {v2, p1, p2}, Lcom/yunpan/appmanage/bean/IntIntBean;-><init>(II)V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1653
    .line 1654
    .line 1655
    iget-object p1, v0, Lha/j6;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1656
    .line 1657
    iget-object p2, v0, Lha/j6;->l:Lx9/i2;

    .line 1658
    .line 1659
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 1660
    .line 1661
    .line 1662
    move-result p2

    .line 1663
    sub-int/2addr p2, v5

    .line 1664
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 1665
    .line 1666
    .line 1667
    :catch_3
    :cond_43
    return-void

    .line 1668
    :pswitch_b
    iget-object p1, p0, La2/k;->b:Ljava/lang/Object;

    .line 1669
    .line 1670
    check-cast p1, Lcom/bumptech/glide/manager/r;

    .line 1671
    .line 1672
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1673
    .line 1674
    .line 1675
    new-instance p2, Lcom/bumptech/glide/manager/q;

    .line 1676
    .line 1677
    invoke-direct {p2, p1, v3}, Lcom/bumptech/glide/manager/q;-><init>(Lcom/bumptech/glide/manager/r;I)V

    .line 1678
    .line 1679
    .line 1680
    sget-object p1, Lcom/bumptech/glide/manager/r;->g:Ljava/util/concurrent/Executor;

    .line 1681
    .line 1682
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1683
    .line 1684
    .line 1685
    return-void

    .line 1686
    :pswitch_c
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 1687
    .line 1688
    .line 1689
    move-result v0

    .line 1690
    if-nez v0, :cond_44

    .line 1691
    .line 1692
    iget-object v0, p0, La2/k;->b:Ljava/lang/Object;

    .line 1693
    .line 1694
    check-cast v0, La2/l;

    .line 1695
    .line 1696
    invoke-virtual {v0}, La2/l;->a()Ljava/util/List;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v1

    .line 1700
    iget-object v2, v0, La2/l;->j:Lr1/d;

    .line 1701
    .line 1702
    iget-object v3, v0, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 1703
    .line 1704
    invoke-static {p1, p2, v2, v3, v1}, La2/g;->b(Landroid/content/Context;Landroid/content/Intent;Lr1/d;Landroid/media/AudioDeviceInfo;Ljava/util/List;)La2/g;

    .line 1705
    .line 1706
    .line 1707
    move-result-object p1

    .line 1708
    invoke-virtual {v0, p1}, La2/l;->b(La2/g;)V

    .line 1709
    .line 1710
    .line 1711
    :cond_44
    return-void

    .line 1712
    nop

    .line 1713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_3
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
