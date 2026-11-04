.class public abstract Lwa/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 6
    .line 7
    invoke-static {v0}, Lwa/g;->d(Landroid/content/ContextWrapper;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 19
    .line 20
    invoke-virtual {v0}, Lag/c;->k()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/hsae/bluetoothsdk/bean/BluetoothDevice;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/hsae/bluetoothsdk/bean/BluetoothDevice;->getStatus()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x5

    .line 53
    if-ne v1, v2, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string v0, "\u91cd\u542f\u84dd\u7259\u6a21\u5757"

    .line 57
    .line 58
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lag/c;->l()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v1, 0x1

    .line 75
    if-ne v0, v1, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lag/c;->f()V

    .line 87
    .line 88
    .line 89
    const-wide/16 v0, 0x29a

    .line 90
    .line 91
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lag/c;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    const-string v0, "\u65e0\u6743\u9650"

    .line 108
    .line 109
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_1
    const-string v2, "connectivity"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    nop

    .line 30
    :goto_0
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_2
    const-string v0, "\u91cd\u542f wifi \u6a21\u5757"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lpa/i;->d()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x3

    .line 47
    if-ne v0, v1, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->closeWifi()V

    .line 65
    .line 66
    .line 67
    :goto_1
    const-wide/16 v0, 0x3e8

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {v0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifi()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_1
    const-string v0, "\u65e0\u6743\u9650"

    .line 92
    .line 93
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void
.end method

.method public static c(Lz7/s;I)V
    .locals 7

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_1f

    .line 6
    .line 7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 p1, 0x15

    .line 10
    .line 11
    if-lt p0, p1, :cond_4

    .line 12
    .line 13
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-boolean p0, p0, Lwa/s;->a:Z

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lwa/t;->a:Lwa/u;

    .line 22
    .line 23
    iget-object p0, p0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 24
    .line 25
    const-string p1, "media_session"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lt0/e;->n(Landroid/media/session/MediaSessionManager;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-object p0, p0, Lwa/s;->b:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_3

    .line 82
    .line 83
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget-object p0, p0, Lwa/s;->b:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/4 p1, 0x0

    .line 122
    :goto_0
    if-eqz p1, :cond_4

    .line 123
    .line 124
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 129
    .line 130
    invoke-static {p1}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {p0, v0}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v1, "\u5f53\u524d\u64ad\u653e\u5668\uff1a"

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_e

    .line 169
    .line 170
    :cond_4
    new-instance p0, Lcom/hsae/autosdk/source/Source;

    .line 171
    .line 172
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/hsae/autosdk/source/Source;->getCurrentSource()Lcom/hsae/autosdk/source/SourceConst$App;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->RADIO:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 180
    .line 181
    if-ne p0, p1, :cond_5

    .line 182
    .line 183
    const-string p0, "\u6536\u97f3\u673a"

    .line 184
    .line 185
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 193
    .line 194
    const-string p1, "com.hsae.d531mc.radio"

    .line 195
    .line 196
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_e

    .line 200
    .line 201
    :cond_5
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->BT_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 202
    .line 203
    if-ne p0, p1, :cond_6

    .line 204
    .line 205
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 210
    .line 211
    const-string p1, "com.hsae.d531mc.bluetooth.music"

    .line 212
    .line 213
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_e

    .line 217
    .line 218
    :cond_6
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->BT_PHONE:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 219
    .line 220
    if-ne p0, p1, :cond_7

    .line 221
    .line 222
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 227
    .line 228
    const-string p1, "com.hsae.bluetooth.contacts"

    .line 229
    .line 230
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_e

    .line 234
    .line 235
    :cond_7
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->USB_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 236
    .line 237
    if-ne p0, p1, :cond_8

    .line 238
    .line 239
    new-instance p0, Landroid/content/Intent;

    .line 240
    .line 241
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 242
    .line 243
    .line 244
    const/high16 p1, 0x10200000

    .line 245
    .line 246
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    const-string p1, "com.hsae.d531mc.usbmedia"

    .line 250
    .line 251
    const-string v0, "com.hsae.d531mc.usbmedia.musicui.lifecycle.MusicActivity"

    .line 252
    .line 253
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object p1, p1, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 261
    .line 262
    invoke-static {v1, p1, p0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 263
    .line 264
    .line 265
    goto/16 :goto_e

    .line 266
    .line 267
    :cond_8
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->USB_VIDEO:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 268
    .line 269
    if-ne p0, p1, :cond_9

    .line 270
    .line 271
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 276
    .line 277
    const-string p1, "com.hsae.d531mc.usbvideo"

    .line 278
    .line 279
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_e

    .line 283
    .line 284
    :cond_9
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->HICAR_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 285
    .line 286
    if-ne p0, p1, :cond_a

    .line 287
    .line 288
    const-string p0, "hicar\u97f3\u4e50"

    .line 289
    .line 290
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_e

    .line 294
    .line 295
    :cond_a
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->KUWO_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 296
    .line 297
    if-ne p0, p1, :cond_b

    .line 298
    .line 299
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 304
    .line 305
    const-string p1, "cn.kuwo.kwmusiccar"

    .line 306
    .line 307
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_e

    .line 311
    .line 312
    :cond_b
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->KUWO_MV:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 313
    .line 314
    if-ne p0, p1, :cond_c

    .line 315
    .line 316
    const-string p0, "\u9177\u6211MV"

    .line 317
    .line 318
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_e

    .line 322
    .line 323
    :cond_c
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->CARLIFE_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 324
    .line 325
    if-ne p0, p1, :cond_d

    .line 326
    .line 327
    invoke-static {}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getInstance()Lcom/hsae/autosdk/carlife/CarLifeProxy;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->show()V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_e

    .line 335
    .line 336
    :cond_d
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->CARLIFE_PHONE:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 337
    .line 338
    if-ne p0, p1, :cond_e

    .line 339
    .line 340
    invoke-static {}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getInstance()Lcom/hsae/autosdk/carlife/CarLifeProxy;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-virtual {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->show()V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_e

    .line 348
    .line 349
    :cond_e
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->CARLIFE_VR:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 350
    .line 351
    if-ne p0, p1, :cond_f

    .line 352
    .line 353
    invoke-static {}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getInstance()Lcom/hsae/autosdk/carlife/CarLifeProxy;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-virtual {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->show()V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_e

    .line 361
    .line 362
    :cond_f
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->HICAR_NAVI:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 363
    .line 364
    if-ne p0, p1, :cond_10

    .line 365
    .line 366
    const-string p0, "hicar \u5bfc\u822a"

    .line 367
    .line 368
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_e

    .line 372
    .line 373
    :cond_10
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->HICAR_PHONE:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 374
    .line 375
    if-ne p0, p1, :cond_11

    .line 376
    .line 377
    const-string p0, "hicar \u901a\u8bdd\u4e2d"

    .line 378
    .line 379
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_e

    .line 383
    .line 384
    :cond_11
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->CARPLAY_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 385
    .line 386
    if-ne p0, p1, :cond_12

    .line 387
    .line 388
    invoke-static {}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->getInstance()Lcom/hsae/autosdk/carplay/CarPlayProxy;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-virtual {p0}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->show()V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_e

    .line 396
    .line 397
    :cond_12
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->CARPLAY_PHONE:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 398
    .line 399
    if-ne p0, p1, :cond_13

    .line 400
    .line 401
    invoke-static {}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->getInstance()Lcom/hsae/autosdk/carplay/CarPlayProxy;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p0}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->show()V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_e

    .line 409
    .line 410
    :cond_13
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->CARPLAY_SIRI:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 411
    .line 412
    if-ne p0, p1, :cond_14

    .line 413
    .line 414
    const-string p0, "carplay Siri"

    .line 415
    .line 416
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 417
    .line 418
    .line 419
    invoke-static {}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->getInstance()Lcom/hsae/autosdk/carplay/CarPlayProxy;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {p0}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->show()V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_e

    .line 427
    .line 428
    :cond_14
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->XIAOCHEN_FM:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 429
    .line 430
    if-ne p0, p1, :cond_15

    .line 431
    .line 432
    const-string p0, "XIAOCHEN FM"

    .line 433
    .line 434
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_e

    .line 438
    .line 439
    :cond_15
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->IPOD_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 440
    .line 441
    if-ne p0, p1, :cond_16

    .line 442
    .line 443
    const-string p0, "IPOD \u97f3\u6e90"

    .line 444
    .line 445
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_e

    .line 449
    .line 450
    :cond_16
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->AUDIO_DIAGNOSE:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 451
    .line 452
    if-ne p0, p1, :cond_17

    .line 453
    .line 454
    const-string p0, "\u97f3\u9891\u8bca\u65ad"

    .line 455
    .line 456
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_e

    .line 460
    .line 461
    :cond_17
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->ONLINE_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 462
    .line 463
    if-ne p0, p1, :cond_18

    .line 464
    .line 465
    const-string p0, "\u5728\u7ebf\u97f3\u4e50"

    .line 466
    .line 467
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_e

    .line 471
    .line 472
    :cond_18
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->ONLINE_VIDEO:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 473
    .line 474
    if-ne p0, p1, :cond_19

    .line 475
    .line 476
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 481
    .line 482
    const-string p1, "com.hsae.ccs20.onlinevideo"

    .line 483
    .line 484
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const-string p0, "\u5728\u7ebf\u89c6\u9891"

    .line 488
    .line 489
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_e

    .line 493
    .line 494
    :cond_19
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->HIMALAYA_FM:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 495
    .line 496
    if-ne p0, p1, :cond_1a

    .line 497
    .line 498
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 499
    .line 500
    .line 501
    move-result-object p0

    .line 502
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 503
    .line 504
    const-string p1, "com.ximalaya.ting.android.car"

    .line 505
    .line 506
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_e

    .line 510
    .line 511
    :cond_1a
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->NAVI:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 512
    .line 513
    if-ne p0, p1, :cond_1b

    .line 514
    .line 515
    const-string p0, "\u5bfc\u822a\u64ad\u62a5\u4e2d"

    .line 516
    .line 517
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_e

    .line 521
    .line 522
    :cond_1b
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->AIR:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 523
    .line 524
    if-ne p0, p1, :cond_1c

    .line 525
    .line 526
    const-string p0, "\u7a7a\u8c03"

    .line 527
    .line 528
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_e

    .line 532
    .line 533
    :cond_1c
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->ANDROID_BT:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 534
    .line 535
    if-ne p0, p1, :cond_1d

    .line 536
    .line 537
    const-string p0, "\u539f\u751f\u84dd\u7259"

    .line 538
    .line 539
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_e

    .line 543
    .line 544
    :cond_1d
    sget-object p1, Lcom/hsae/autosdk/source/SourceConst$App;->CB_KTV:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 545
    .line 546
    if-ne p0, p1, :cond_1e

    .line 547
    .line 548
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 553
    .line 554
    const-string p1, "com.changba.sd"

    .line 555
    .line 556
    invoke-static {p0, p1}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_e

    .line 560
    .line 561
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v0, "\u5f53\u524d\u6e90\uff1a"

    .line 564
    .line 565
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object p0

    .line 572
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object p0

    .line 579
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_e

    .line 583
    .line 584
    :cond_1f
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 585
    .line 586
    const/16 v3, 0x7d2

    .line 587
    .line 588
    const/4 v4, 0x2

    .line 589
    const-string v5, "type"

    .line 590
    .line 591
    const-string v6, "\u65e0\u6743\u9650"

    .line 592
    .line 593
    if-ne p1, v3, :cond_25

    .line 594
    .line 595
    :try_start_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    iget-object p1, p1, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 600
    .line 601
    invoke-static {p1}, Lwa/g;->d(Landroid/content/ContextWrapper;)Z

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    if-nez p1, :cond_20

    .line 606
    .line 607
    goto/16 :goto_e

    .line 608
    .line 609
    :cond_20
    invoke-virtual {v0, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-eqz p1, :cond_21

    .line 614
    .line 615
    invoke-virtual {p0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    invoke-virtual {p0}, Lz7/p;->e()I

    .line 620
    .line 621
    .line 622
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    :cond_21
    const-string p0, "\u5f00\u542f\u84dd\u7259"

    .line 624
    .line 625
    const-string p1, "\u5173\u95ed\u84dd\u7259"

    .line 626
    .line 627
    if-nez v2, :cond_23

    .line 628
    .line 629
    :try_start_2
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    invoke-static {}, Lag/c;->l()I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-ne v0, v1, :cond_22

    .line 643
    .line 644
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 645
    .line 646
    .line 647
    move-result-object p0

    .line 648
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 649
    .line 650
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    invoke-static {}, Lag/c;->f()V

    .line 654
    .line 655
    .line 656
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_e

    .line 660
    .line 661
    :cond_22
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    iget-object p1, p1, Lwa/s;->m:Lag/c;

    .line 666
    .line 667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 668
    .line 669
    .line 670
    invoke-static {}, Lag/c;->g()V

    .line 671
    .line 672
    .line 673
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_e

    .line 677
    .line 678
    :cond_23
    if-ne v2, v1, :cond_24

    .line 679
    .line 680
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 681
    .line 682
    .line 683
    move-result-object p0

    .line 684
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 685
    .line 686
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    invoke-static {}, Lag/c;->l()I

    .line 690
    .line 691
    .line 692
    move-result p0

    .line 693
    if-ne p0, v1, :cond_4d

    .line 694
    .line 695
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 700
    .line 701
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    invoke-static {}, Lag/c;->f()V

    .line 705
    .line 706
    .line 707
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_e

    .line 711
    .line 712
    :cond_24
    if-ne v2, v4, :cond_4d

    .line 713
    .line 714
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    iget-object p1, p1, Lwa/s;->m:Lag/c;

    .line 719
    .line 720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    invoke-static {}, Lag/c;->l()I

    .line 724
    .line 725
    .line 726
    move-result p1

    .line 727
    if-eq p1, v1, :cond_4d

    .line 728
    .line 729
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    iget-object p1, p1, Lwa/s;->m:Lag/c;

    .line 734
    .line 735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    .line 737
    .line 738
    invoke-static {}, Lag/c;->g()V

    .line 739
    .line 740
    .line 741
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 742
    .line 743
    .line 744
    goto/16 :goto_e

    .line 745
    .line 746
    :catch_0
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 747
    .line 748
    .line 749
    goto/16 :goto_e

    .line 750
    .line 751
    :cond_25
    const/16 v3, 0x7d3

    .line 752
    .line 753
    if-ne p1, v3, :cond_2e

    .line 754
    .line 755
    :try_start_3
    invoke-virtual {v0, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result p1

    .line 759
    if-eqz p1, :cond_26

    .line 760
    .line 761
    invoke-virtual {p0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 762
    .line 763
    .line 764
    move-result-object p0

    .line 765
    invoke-virtual {p0}, Lz7/p;->e()I

    .line 766
    .line 767
    .line 768
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 769
    :cond_26
    const-string p0, "\u5f00\u542f wifi"

    .line 770
    .line 771
    const-string p1, "\u5173\u95ed wifi"

    .line 772
    .line 773
    const/4 v0, 0x3

    .line 774
    if-nez v2, :cond_2a

    .line 775
    .line 776
    :try_start_4
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v1}, Lpa/i;->d()I

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    if-ne v1, v0, :cond_28

    .line 785
    .line 786
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    if-nez v0, :cond_27

    .line 795
    .line 796
    goto :goto_1

    .line 797
    :cond_27
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 798
    .line 799
    .line 800
    move-result-object p0

    .line 801
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->closeWifi()V

    .line 802
    .line 803
    .line 804
    :goto_1
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_e

    .line 808
    .line 809
    :cond_28
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 810
    .line 811
    .line 812
    move-result-object p1

    .line 813
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    if-nez v0, :cond_29

    .line 818
    .line 819
    goto :goto_2

    .line 820
    :cond_29
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 821
    .line 822
    .line 823
    move-result-object p1

    .line 824
    invoke-interface {p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifi()V

    .line 825
    .line 826
    .line 827
    :goto_2
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_e

    .line 831
    .line 832
    :cond_2a
    if-ne v2, v1, :cond_2c

    .line 833
    .line 834
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 835
    .line 836
    .line 837
    move-result-object p0

    .line 838
    invoke-virtual {p0}, Lpa/i;->d()I

    .line 839
    .line 840
    .line 841
    move-result p0

    .line 842
    if-ne p0, v0, :cond_4d

    .line 843
    .line 844
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 845
    .line 846
    .line 847
    move-result-object p0

    .line 848
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    if-nez v0, :cond_2b

    .line 853
    .line 854
    goto :goto_3

    .line 855
    :cond_2b
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 856
    .line 857
    .line 858
    move-result-object p0

    .line 859
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->closeWifi()V

    .line 860
    .line 861
    .line 862
    :goto_3
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    goto/16 :goto_e

    .line 866
    .line 867
    :cond_2c
    if-ne v2, v4, :cond_4d

    .line 868
    .line 869
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 870
    .line 871
    .line 872
    move-result-object p1

    .line 873
    invoke-virtual {p1}, Lpa/i;->d()I

    .line 874
    .line 875
    .line 876
    move-result p1

    .line 877
    if-eq p1, v0, :cond_4d

    .line 878
    .line 879
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 880
    .line 881
    .line 882
    move-result-object p1

    .line 883
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    if-nez v0, :cond_2d

    .line 888
    .line 889
    goto :goto_4

    .line 890
    :cond_2d
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 891
    .line 892
    .line 893
    move-result-object p1

    .line 894
    invoke-interface {p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifi()V

    .line 895
    .line 896
    .line 897
    :goto_4
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 898
    .line 899
    .line 900
    goto/16 :goto_e

    .line 901
    .line 902
    :catch_1
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    goto/16 :goto_e

    .line 906
    .line 907
    :cond_2e
    const/16 v3, 0x7d4

    .line 908
    .line 909
    if-ne p1, v3, :cond_37

    .line 910
    .line 911
    :try_start_5
    invoke-virtual {v0, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result p1

    .line 915
    if-eqz p1, :cond_2f

    .line 916
    .line 917
    invoke-virtual {p0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 918
    .line 919
    .line 920
    move-result-object p0

    .line 921
    invoke-virtual {p0}, Lz7/p;->e()I

    .line 922
    .line 923
    .line 924
    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 925
    :cond_2f
    const-string p0, "\u5f00\u542f\u70ed\u70b9"

    .line 926
    .line 927
    const-string p1, "\u5173\u95ed\u70ed\u70b9"

    .line 928
    .line 929
    const/16 v0, 0xd

    .line 930
    .line 931
    if-nez v2, :cond_33

    .line 932
    .line 933
    :try_start_6
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    invoke-virtual {v1}, Lpa/i;->c()I

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-ne v1, v0, :cond_31

    .line 942
    .line 943
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 944
    .line 945
    .line 946
    move-result-object p0

    .line 947
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    if-nez v0, :cond_30

    .line 952
    .line 953
    goto :goto_5

    .line 954
    :cond_30
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 955
    .line 956
    .line 957
    move-result-object p0

    .line 958
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->closeWifiAP()V

    .line 959
    .line 960
    .line 961
    :goto_5
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    goto/16 :goto_e

    .line 965
    .line 966
    :cond_31
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 967
    .line 968
    .line 969
    move-result-object p1

    .line 970
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    if-nez v0, :cond_32

    .line 975
    .line 976
    goto :goto_6

    .line 977
    :cond_32
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 978
    .line 979
    .line 980
    move-result-object p1

    .line 981
    invoke-interface {p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifiAP()V

    .line 982
    .line 983
    .line 984
    :goto_6
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    goto/16 :goto_e

    .line 988
    .line 989
    :cond_33
    if-ne v2, v1, :cond_35

    .line 990
    .line 991
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 992
    .line 993
    .line 994
    move-result-object p0

    .line 995
    invoke-virtual {p0}, Lpa/i;->c()I

    .line 996
    .line 997
    .line 998
    move-result p0

    .line 999
    if-ne p0, v0, :cond_4d

    .line 1000
    .line 1001
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p0

    .line 1005
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    if-nez v0, :cond_34

    .line 1010
    .line 1011
    goto :goto_7

    .line 1012
    :cond_34
    invoke-virtual {p0}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p0

    .line 1016
    invoke-interface {p0}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->closeWifiAP()V

    .line 1017
    .line 1018
    .line 1019
    :goto_7
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_e

    .line 1023
    .line 1024
    :cond_35
    if-ne v2, v4, :cond_4d

    .line 1025
    .line 1026
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 1027
    .line 1028
    .line 1029
    move-result-object p1

    .line 1030
    invoke-virtual {p1}, Lpa/i;->c()I

    .line 1031
    .line 1032
    .line 1033
    move-result p1

    .line 1034
    if-eq p1, v0, :cond_4d

    .line 1035
    .line 1036
    invoke-static {}, Lpa/i;->e()Lpa/i;

    .line 1037
    .line 1038
    .line 1039
    move-result-object p1

    .line 1040
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    if-nez v0, :cond_36

    .line 1045
    .line 1046
    goto :goto_8

    .line 1047
    :cond_36
    invoke-virtual {p1}, Lpa/i;->b()Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;

    .line 1048
    .line 1049
    .line 1050
    move-result-object p1

    .line 1051
    invoke-interface {p1}, Lcom/hsae/autosdk/settings/wifi/IHaseWifiManager;->openWifiAP()V

    .line 1052
    .line 1053
    .line 1054
    :goto_8
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_e

    .line 1058
    .line 1059
    :catch_2
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_e

    .line 1063
    .line 1064
    :cond_37
    const/16 p0, 0x7d5

    .line 1065
    .line 1066
    if-ne p1, p0, :cond_38

    .line 1067
    .line 1068
    invoke-static {}, Lwa/g;->a()V

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_e

    .line 1072
    .line 1073
    :cond_38
    const/16 p0, 0x7d6

    .line 1074
    .line 1075
    if-ne p1, p0, :cond_39

    .line 1076
    .line 1077
    invoke-static {}, Lwa/g;->b()V

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_e

    .line 1081
    .line 1082
    :cond_39
    const/16 p0, 0x7dc

    .line 1083
    .line 1084
    if-ne p1, p0, :cond_3a

    .line 1085
    .line 1086
    sget-object p0, Lpa/d;->a:Lpa/e;

    .line 1087
    .line 1088
    iget-object p1, p0, Lpa/e;->g:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 1089
    .line 1090
    invoke-interface {p1, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setAudioMute(Z)V

    .line 1091
    .line 1092
    .line 1093
    iget-object p0, p0, Lpa/e;->g:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 1094
    .line 1095
    invoke-interface {p0, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setNaviMuteState(Z)V

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_e

    .line 1099
    .line 1100
    :cond_3a
    const/16 p0, 0x7dd

    .line 1101
    .line 1102
    if-ne p1, p0, :cond_3b

    .line 1103
    .line 1104
    sget-object p0, Lpa/d;->a:Lpa/e;

    .line 1105
    .line 1106
    iget-object p1, p0, Lpa/e;->g:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 1107
    .line 1108
    invoke-interface {p1, v2}, Lcom/hsae/autosdk/settings/IAutoSettings;->setAudioMute(Z)V

    .line 1109
    .line 1110
    .line 1111
    iget-object p0, p0, Lpa/e;->g:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 1112
    .line 1113
    invoke-interface {p0, v2}, Lcom/hsae/autosdk/settings/IAutoSettings;->setNaviMuteState(Z)V

    .line 1114
    .line 1115
    .line 1116
    goto/16 :goto_e

    .line 1117
    .line 1118
    :cond_3b
    const/16 p0, 0x7da

    .line 1119
    .line 1120
    if-ne p1, p0, :cond_3c

    .line 1121
    .line 1122
    invoke-static {}, Lwa/g;->b()V

    .line 1123
    .line 1124
    .line 1125
    invoke-static {}, Lwa/g;->a()V

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_e

    .line 1129
    .line 1130
    :cond_3c
    const/16 p0, 0x7db

    .line 1131
    .line 1132
    if-ne p1, p0, :cond_44

    .line 1133
    .line 1134
    invoke-static {}, Lwa/g;->b()V

    .line 1135
    .line 1136
    .line 1137
    :try_start_7
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1138
    .line 1139
    .line 1140
    move-result-object p0

    .line 1141
    iget-object p0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 1142
    .line 1143
    invoke-static {p0}, Lwa/g;->d(Landroid/content/ContextWrapper;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result p0

    .line 1147
    if-nez p0, :cond_3d

    .line 1148
    .line 1149
    goto/16 :goto_e

    .line 1150
    .line 1151
    :cond_3d
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1152
    .line 1153
    .line 1154
    move-result-object p0

    .line 1155
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 1156
    .line 1157
    invoke-virtual {p0}, Lag/c;->k()Ljava/util/ArrayList;

    .line 1158
    .line 1159
    .line 1160
    move-result-object p0

    .line 1161
    if-eqz p0, :cond_3f

    .line 1162
    .line 1163
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1164
    .line 1165
    .line 1166
    move-result p1

    .line 1167
    if-nez p1, :cond_3f

    .line 1168
    .line 1169
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1170
    .line 1171
    .line 1172
    move-result-object p0

    .line 1173
    :cond_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1174
    .line 1175
    .line 1176
    move-result p1

    .line 1177
    if-eqz p1, :cond_3f

    .line 1178
    .line 1179
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object p1

    .line 1183
    check-cast p1, Lcom/hsae/bluetoothsdk/bean/BluetoothDevice;

    .line 1184
    .line 1185
    invoke-virtual {p1}, Lcom/hsae/bluetoothsdk/bean/BluetoothDevice;->getStatus()I

    .line 1186
    .line 1187
    .line 1188
    move-result p1

    .line 1189
    const/4 v0, 0x5

    .line 1190
    if-ne p1, v0, :cond_3e

    .line 1191
    .line 1192
    goto/16 :goto_e

    .line 1193
    .line 1194
    :cond_3f
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1195
    .line 1196
    .line 1197
    move-result-object p0

    .line 1198
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 1199
    .line 1200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    invoke-static {}, Lag/c;->n()Z

    .line 1204
    .line 1205
    .line 1206
    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1207
    if-nez p0, :cond_40

    .line 1208
    .line 1209
    goto :goto_9

    .line 1210
    :cond_40
    :try_start_8
    sget-object p0, Lag/c;->b:Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 1211
    .line 1212
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->isSearching()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1216
    goto :goto_9

    .line 1217
    :catch_3
    move-exception p0

    .line 1218
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1219
    .line 1220
    .line 1221
    :goto_9
    if-eqz v2, :cond_42

    .line 1222
    .line 1223
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p0

    .line 1227
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 1228
    .line 1229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1230
    .line 1231
    .line 1232
    invoke-static {}, Lag/c;->n()Z

    .line 1233
    .line 1234
    .line 1235
    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1236
    if-nez p0, :cond_41

    .line 1237
    .line 1238
    goto :goto_a

    .line 1239
    :cond_41
    :try_start_a
    sget-object p0, Lag/c;->b:Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 1240
    .line 1241
    invoke-interface {p0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->stopSearch()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 1242
    .line 1243
    .line 1244
    goto :goto_a

    .line 1245
    :catch_4
    move-exception p0

    .line 1246
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1247
    .line 1248
    .line 1249
    :goto_a
    const-wide/16 p0, 0x12c

    .line 1250
    .line 1251
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 1252
    .line 1253
    .line 1254
    :cond_42
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p0

    .line 1258
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 1259
    .line 1260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1261
    .line 1262
    .line 1263
    invoke-static {}, Lag/c;->n()Z

    .line 1264
    .line 1265
    .line 1266
    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1267
    if-nez p0, :cond_43

    .line 1268
    .line 1269
    goto/16 :goto_e

    .line 1270
    .line 1271
    :cond_43
    :try_start_c
    sget-object p0, Lag/c;->b:Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 1272
    .line 1273
    invoke-interface {p0, v1}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->search(Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 1274
    .line 1275
    .line 1276
    goto/16 :goto_e

    .line 1277
    .line 1278
    :catch_5
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1279
    .line 1280
    .line 1281
    goto/16 :goto_e

    .line 1282
    .line 1283
    :cond_44
    const/16 p0, 0x7de

    .line 1284
    .line 1285
    if-ne p1, p0, :cond_46

    .line 1286
    .line 1287
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1288
    .line 1289
    const/16 p1, 0x17

    .line 1290
    .line 1291
    if-ge p0, p1, :cond_45

    .line 1292
    .line 1293
    const/16 p0, 0x9

    .line 1294
    .line 1295
    goto :goto_b

    .line 1296
    :cond_45
    const/16 p0, 0x123

    .line 1297
    .line 1298
    :goto_b
    invoke-static {p0, v2}, Lta/l;->m(IZ)V

    .line 1299
    .line 1300
    .line 1301
    goto :goto_e

    .line 1302
    :cond_46
    const/16 p0, 0x7df

    .line 1303
    .line 1304
    if-ne p1, p0, :cond_4d

    .line 1305
    .line 1306
    :try_start_d
    const-string p0, "com.hsae.auto.IBINDER_REVERSING_MANAGER"

    .line 1307
    .line 1308
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1309
    .line 1310
    .line 1311
    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1312
    const-string p1, "\u6838\u5fc3\u670d\u52a1\u672a\u542f\u52a8"

    .line 1313
    .line 1314
    if-eqz p0, :cond_48

    .line 1315
    .line 1316
    :try_start_e
    invoke-static {p0}, Lcom/hsae/autosdk/reverse/IReverseApp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 1317
    .line 1318
    .line 1319
    move-result-object p0

    .line 1320
    if-nez p0, :cond_47

    .line 1321
    .line 1322
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1323
    .line 1324
    .line 1325
    return-void

    .line 1326
    :cond_47
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverseApp;->sendNormalAVMKeyPressed()V

    .line 1327
    .line 1328
    .line 1329
    goto :goto_e

    .line 1330
    :catch_6
    move-exception p0

    .line 1331
    goto :goto_d

    .line 1332
    :cond_48
    const-string p0, "com.hsae.auto.IBINDER_REVERSE"

    .line 1333
    .line 1334
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1335
    .line 1336
    .line 1337
    move-result-object p0

    .line 1338
    if-nez p0, :cond_49

    .line 1339
    .line 1340
    const-string p0, "\u4e0d\u9002\u5408\u60a8\u7684\u8f66\u673a"

    .line 1341
    .line 1342
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1343
    .line 1344
    .line 1345
    return-void

    .line 1346
    :cond_49
    invoke-static {p0}, Lcom/hsae/autosdk/reverse/IReverse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverse;

    .line 1347
    .line 1348
    .line 1349
    move-result-object p0

    .line 1350
    if-nez p0, :cond_4a

    .line 1351
    .line 1352
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1353
    .line 1354
    .line 1355
    return-void

    .line 1356
    :cond_4a
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getVehicleType()I

    .line 1357
    .line 1358
    .line 1359
    move-result p1

    .line 1360
    if-nez p1, :cond_4c

    .line 1361
    .line 1362
    invoke-interface {p0}, Lcom/hsae/autosdk/reverse/IReverse;->getCameraType()I

    .line 1363
    .line 1364
    .line 1365
    move-result p1

    .line 1366
    if-eqz p1, :cond_4b

    .line 1367
    .line 1368
    goto :goto_c

    .line 1369
    :cond_4b
    invoke-interface {p0, v1}, Lcom/hsae/autosdk/reverse/IReverse;->reqEnterAVMFrame(B)V

    .line 1370
    .line 1371
    .line 1372
    goto :goto_e

    .line 1373
    :cond_4c
    :goto_c
    const-string p0, "\u5f53\u524d\u8f66\u578b\u4e0d\u652f\u6301360"

    .line 1374
    .line 1375
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1376
    .line 1377
    .line 1378
    return-void

    .line 1379
    :goto_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    const-string v0, "\u62a5\u9519\uff1a"

    .line 1382
    .line 1383
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object p0

    .line 1390
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object p0

    .line 1397
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1398
    .line 1399
    .line 1400
    :catch_7
    :cond_4d
    :goto_e
    return-void
.end method

.method public static d(Landroid/content/ContextWrapper;)Z
    .locals 2

    .line 1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lag/c;->n()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lwa/s;->m:Lag/c;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lag/c;->n()Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :try_start_1
    sget-object v0, Lag/c;->b:Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/hsae/bluetoothsdk/IBluetoothManager;->disConnect()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    nop

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    .line 57
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    const-wide/16 v0, 0x14d

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lag/c;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lag/c;-><init>(Landroid/content/ContextWrapper;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, v0, Lwa/s;->m:Lag/c;

    .line 75
    .line 76
    const-wide/16 v0, 0x320

    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    iget-object p0, p0, Lwa/s;->m:Lag/c;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lag/c;->n()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    return p0

    .line 98
    :cond_3
    const/4 p0, 0x1

    .line 99
    return p0
.end method
