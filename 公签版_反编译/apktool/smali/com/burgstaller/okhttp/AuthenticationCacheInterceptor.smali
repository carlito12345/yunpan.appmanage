.class public Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final authCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/burgstaller/okhttp/digest/CachingAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheKeyProvider:Lcom/burgstaller/okhttp/CacheKeyProvider;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/burgstaller/okhttp/digest/CachingAuthenticator;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/burgstaller/okhttp/DefaultCacheKeyProvider;

    invoke-direct {v0}, Lcom/burgstaller/okhttp/DefaultCacheKeyProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;-><init>(Ljava/util/Map;Lcom/burgstaller/okhttp/CacheKeyProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/burgstaller/okhttp/CacheKeyProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/burgstaller/okhttp/digest/CachingAuthenticator;",
            ">;",
            "Lcom/burgstaller/okhttp/CacheKeyProvider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;->authCache:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;->cacheKeyProvider:Lcom/burgstaller/okhttp/CacheKeyProvider;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;->cacheKeyProvider:Lcom/burgstaller/okhttp/CacheKeyProvider;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/burgstaller/okhttp/CacheKeyProvider;->getCachingKey(Lokhttp3/Request;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;->authCache:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/burgstaller/okhttp/digest/CachingAuthenticator;

    .line 18
    .line 19
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v3}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v3, v4

    .line 32
    :goto_0
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v2, v3, v0}, Lcom/burgstaller/okhttp/digest/CachingAuthenticator;->authenticateWithState(Lokhttp3/Route;Lokhttp3/Request;)Lokhttp3/Request;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v3, v4

    .line 40
    :goto_1
    if-nez v3, :cond_2

    .line 41
    .line 42
    move-object v3, v0

    .line 43
    :cond_2
    invoke-interface {p1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v5, 0x0

    .line 55
    :goto_2
    if-eqz v2, :cond_5

    .line 56
    .line 57
    const/16 v2, 0x191

    .line 58
    .line 59
    if-eq v5, v2, :cond_4

    .line 60
    .line 61
    const/16 v2, 0x197

    .line 62
    .line 63
    if-ne v5, v2, :cond_5

    .line 64
    .line 65
    :cond_4
    iget-object v2, p0, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;->authCache:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x4

    .line 85
    const-string v3, "Cached authentication expired. Sending a new request."

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :cond_5
    return-object v3
.end method
