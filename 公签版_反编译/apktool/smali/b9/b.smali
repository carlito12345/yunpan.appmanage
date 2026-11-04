.class public final Lb9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lokhttp3/OkHttpClient;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lb9/b;->a:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    iput v2, p0, Lb9/b;->c:I

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    iput v2, p0, Lb9/b;->d:I

    .line 22
    .line 23
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 24
    .line 25
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lj9/a;

    .line 29
    .line 30
    const-string v4, "OkGo"

    .line 31
    .line 32
    invoke-direct {v3, v4}, Lj9/a;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    invoke-virtual {v3, v4}, Lj9/a;->d(I)V

    .line 37
    .line 38
    .line 39
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 40
    .line 41
    iput-object v4, v3, Lj9/a;->b:Ljava/util/logging/Level;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 44
    .line 45
    .line 46
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    const-wide/32 v4, 0xea60

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    .line 59
    .line 60
    new-array v3, v1, [Ljava/io/InputStream;

    .line 61
    .line 62
    :try_start_0
    invoke-static {v3}, Li9/b;->a([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    array-length v5, v3

    .line 70
    const/4 v6, 0x0

    .line 71
    :goto_0
    if-ge v6, v5, :cond_1

    .line 72
    .line 73
    aget-object v7, v3, v6

    .line 74
    .line 75
    instance-of v8, v7, Ljavax/net/ssl/X509TrustManager;

    .line 76
    .line 77
    if-eqz v8, :cond_0

    .line 78
    .line 79
    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    add-int/2addr v6, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move-object v7, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    sget-object v7, Li9/b;->a:Lhh/c;

    .line 87
    .line 88
    :goto_1
    const-string v3, "TLS"

    .line 89
    .line 90
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 95
    .line 96
    aput-object v7, v0, v1

    .line 97
    .line 98
    invoke-virtual {v3, v4, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 102
    .line 103
    .line 104
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {v2, v0, v7}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 106
    .line 107
    .line 108
    sget-object v0, Li9/b;->b:Li9/a;

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 118
    .line 119
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    .line 123
    goto :goto_3

    .line 124
    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    .line 125
    .line 126
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :goto_3
    new-instance v1, Ljava/lang/AssertionError;

    .line 131
    .line 132
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :goto_4
    throw v1

    .line 137
    :goto_5
    goto :goto_4
.end method

.method public static b(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lokhttp3/Call;

    .line 29
    .line 30
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lokhttp3/Call;

    .line 71
    .line 72
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    const-string v1, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    .line 7
    .line 8
    invoke-static {v0, v1}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 12
    .line 13
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lokhttp3/Call;

    .line 36
    .line 37
    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 56
    .line 57
    invoke-static {v0, v1}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 61
    .line 62
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lokhttp3/Call;

    .line 85
    .line 86
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    return-void
.end method
