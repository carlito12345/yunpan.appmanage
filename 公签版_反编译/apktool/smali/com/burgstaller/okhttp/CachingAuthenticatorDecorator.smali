.class public Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


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

.field private final innerAuthenticator:Lokhttp3/Authenticator;


# direct methods
.method public constructor <init>(Lokhttp3/Authenticator;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Authenticator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/burgstaller/okhttp/digest/CachingAuthenticator;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/burgstaller/okhttp/DefaultCacheKeyProvider;

    invoke-direct {v0}, Lcom/burgstaller/okhttp/DefaultCacheKeyProvider;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;-><init>(Lokhttp3/Authenticator;Ljava/util/Map;Lcom/burgstaller/okhttp/CacheKeyProvider;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Authenticator;Ljava/util/Map;Lcom/burgstaller/okhttp/CacheKeyProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Authenticator;",
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
    iput-object p1, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->innerAuthenticator:Lokhttp3/Authenticator;

    .line 3
    iput-object p2, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->authCache:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->cacheKeyProvider:Lcom/burgstaller/okhttp/CacheKeyProvider;

    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->innerAuthenticator:Lokhttp3/Authenticator;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p2, "Authorization"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->innerAuthenticator:Lokhttp3/Authenticator;

    .line 18
    .line 19
    instance-of p2, p2, Lcom/burgstaller/okhttp/digest/CachingAuthenticator;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->cacheKeyProvider:Lcom/burgstaller/okhttp/CacheKeyProvider;

    .line 24
    .line 25
    invoke-interface {p2, p1}, Lcom/burgstaller/okhttp/CacheKeyProvider;->getCachingKey(Lokhttp3/Request;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object v0, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->authCache:Ljava/util/Map;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;->innerAuthenticator:Lokhttp3/Authenticator;

    .line 32
    .line 33
    check-cast v1, Lcom/burgstaller/okhttp/digest/CachingAuthenticator;

    .line 34
    .line 35
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object p1
.end method
