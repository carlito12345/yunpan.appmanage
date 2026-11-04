.class public abstract Lcom/yunpan/appmanage/util/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lo9/a;

.field public static b:Lokhttp3/OkHttpClient;


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, ""

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "https://dns.quad9.net/dns-query"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "https://dns.adguard.com/dns-query"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "https://dns.google/dns-query"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "https://doh.360.cn/dns-query"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "https://dns.alidns.com/dns-query"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "https://doh.pub/dns-query"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()V
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj9/a;

    .line 7
    .line 8
    const-string v2, "OkExoPlayer"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lj9/a;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Lj9/a;->d(I)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 18
    .line 19
    iput-object v3, v1, Lj9/a;->b:Ljava/util/logging/Level;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {v0}, Lcom/yunpan/appmanage/util/f0;->c(Lokhttp3/OkHttpClient$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance v1, Lokhttp3/Cache;

    .line 33
    .line 34
    new-instance v3, Ljava/io/File;

    .line 35
    .line 36
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "dohcache"

    .line 47
    .line 48
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-wide/32 v4, 0x1400000

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v3, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Lcom/yunpan/appmanage/util/f0;->a(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Landroidx/room/i;

    .line 70
    .line 71
    const/4 v5, 0x6

    .line 72
    const/4 v6, 0x0

    .line 73
    invoke-direct {v4, v5, v6}, Landroidx/room/i;-><init>(IZ)V

    .line 74
    .line 75
    .line 76
    iput-object v0, v4, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    invoke-static {v3}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_1
    iput-object v0, v4, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 91
    .line 92
    new-instance v0, Lo9/a;

    .line 93
    .line 94
    invoke-direct {v0, v4}, Lo9/a;-><init>(Landroidx/room/i;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 98
    .line 99
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 100
    .line 101
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v3, Lj9/a;

    .line 105
    .line 106
    const-string v4, "OkGo"

    .line 107
    .line 108
    invoke-direct {v3, v4}, Lj9/a;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v2}, Lj9/a;->d(I)V

    .line 112
    .line 113
    .line 114
    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 115
    .line 116
    iput-object v2, v3, Lj9/a;->b:Ljava/util/logging/Level;

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    .line 124
    const-wide/16 v3, 0x78

    .line 125
    .line 126
    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-wide/16 v3, 0x3

    .line 135
    .line 136
    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sget-object v2, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :try_start_1
    invoke-static {v0}, Lcom/yunpan/appmanage/util/f0;->c(Lokhttp3/OkHttpClient$Builder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_1
    move-exception v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :goto_2
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    sput-object v2, Lk9/a;->d:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    sget-object v3, Lb9/a;->a:Lb9/b;

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const-string v4, "okHttpClient == null"

    .line 170
    .line 171
    invoke-static {v2, v4}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iput-object v2, v3, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 175
    .line 176
    sput-object v2, Lcom/yunpan/appmanage/util/f0;->b:Lokhttp3/OkHttpClient;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public static declared-synchronized c(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3

    .line 1
    const-class v0, Lcom/yunpan/appmanage/util/f0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lva/a;

    .line 5
    .line 6
    sget-object v2, Lva/a;->d:Lhh/c;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Lva/a;-><init>(Lhh/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    .line 13
    .line 14
    sget-object v1, Li9/b;->b:Li9/a;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method
