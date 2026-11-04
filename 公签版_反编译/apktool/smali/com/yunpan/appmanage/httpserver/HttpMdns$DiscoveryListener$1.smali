.class Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener$1;->this$0:Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0

    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener$1;->this$0:Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->a(Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;)Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/yunpan/appmanage/httpserver/HttpMdns;->b(Lcom/yunpan/appmanage/httpserver/HttpMdns;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_a

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0xe

    .line 28
    .line 29
    if-ge v3, v4, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v3, Lcom/yunpan/appmanage/util/d;

    .line 33
    .line 34
    const/16 v4, 0xd

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    move-object v5, v3

    .line 65
    move-object v9, v11

    .line 66
    move v10, p1

    .line 67
    invoke-direct/range {v5 .. v10}, Lcom/yunpan/appmanage/util/d;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const/16 v2, 0x26aa

    .line 71
    .line 72
    if-lt p1, v2, :cond_9

    .line 73
    .line 74
    const/16 v2, 0x270f

    .line 75
    .line 76
    if-le p1, v2, :cond_2

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_2
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 81
    .line 82
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 83
    .line 84
    iget-object v2, p1, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_9

    .line 91
    .line 92
    iget-wide v4, p1, Lcom/yunpan/appmanage/util/k;->k0:J

    .line 93
    .line 94
    iget-wide v6, v3, Lcom/yunpan/appmanage/util/d;->d:J

    .line 95
    .line 96
    cmp-long v2, v4, v6

    .line 97
    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_3
    iget-object v2, v3, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 103
    .line 104
    const-string v4, "127.0.0.1"

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    :try_start_1
    new-instance v2, Ljava/net/Socket;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 116
    .line 117
    .line 118
    :try_start_2
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 119
    .line 120
    iget-object v5, v3, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 121
    .line 122
    iget v6, v3, Lcom/yunpan/appmanage/util/d;->c:I

    .line 123
    .line 124
    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const/16 v5, 0x1f4

    .line 128
    .line 129
    invoke-virtual {v2, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    .line 131
    .line 132
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 133
    .line 134
    .line 135
    :try_start_4
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->e:Ljava/lang/String;

    .line 136
    .line 137
    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 138
    :goto_0
    :try_start_5
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 139
    .line 140
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-ge v1, v4, :cond_7

    .line 147
    .line 148
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Lcom/yunpan/appmanage/util/d;

    .line 155
    .line 156
    iget-object v4, v4, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v5, v3, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_6

    .line 165
    .line 166
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Lcom/yunpan/appmanage/util/d;

    .line 173
    .line 174
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/d;->d:J

    .line 175
    .line 176
    iget-wide v6, v3, Lcom/yunpan/appmanage/util/d;->d:J

    .line 177
    .line 178
    cmp-long v8, v4, v6

    .line 179
    .line 180
    if-nez v8, :cond_5

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    add-int/2addr v1, v0

    .line 184
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    :goto_1
    iget-object v0, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 194
    .line 195
    iget-object v4, v3, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v4, v0, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v0, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 206
    .line 207
    iget-object v4, v3, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 208
    .line 209
    iput-object v4, v0, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v0, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 218
    .line 219
    iget v4, v3, Lcom/yunpan/appmanage/util/d;->c:I

    .line 220
    .line 221
    iput v4, v0, Lcom/yunpan/appmanage/util/d;->c:I

    .line 222
    .line 223
    iget-object v0, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 230
    .line 231
    iget-wide v1, v3, Lcom/yunpan/appmanage/util/d;->d:J

    .line 232
    .line 233
    iput-wide v1, v0, Lcom/yunpan/appmanage/util/d;->d:J

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_7
    iget-object v0, v2, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    iget-boolean v0, v2, Lcom/yunpan/appmanage/util/w;->e0:Z

    .line 242
    .line 243
    if-nez v0, :cond_8

    .line 244
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v1, "\u53d1\u73b0\u8bbe\u5907\uff1a"

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object v1, v3, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, "\nIP\uff1a"

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object v1, v3, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    .line 276
    .line 277
    :catch_0
    :cond_8
    :goto_2
    :try_start_6
    monitor-exit p1

    .line 278
    goto :goto_7

    .line 279
    :goto_3
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 280
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 281
    :catch_1
    move-exception p1

    .line 282
    goto :goto_6

    .line 283
    :catchall_1
    move-exception p1

    .line 284
    :try_start_8
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :catchall_2
    move-exception v2

    .line 289
    :try_start_9
    const-class v3, Ljava/lang/Throwable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 290
    .line 291
    :try_start_a
    const-string v4, "addSuppressed"

    .line 292
    .line 293
    new-array v5, v0, [Ljava/lang/Class;

    .line 294
    .line 295
    aput-object v3, v5, v1

    .line 296
    .line 297
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    new-array v0, v0, [Ljava/lang/Object;

    .line 302
    .line 303
    aput-object v2, v0, v1

    .line 304
    .line 305
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 306
    .line 307
    .line 308
    :catch_2
    :goto_4
    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 309
    :catch_3
    :cond_9
    :goto_5
    return-void

    .line 310
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    :cond_a
    :goto_7
    return-void
.end method
