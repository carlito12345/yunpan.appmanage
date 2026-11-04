.class public Lcom/burgstaller/okhttp/basic/BasicAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/burgstaller/okhttp/digest/CachingAuthenticator;


# instance fields
.field private final credentials:Lcom/burgstaller/okhttp/digest/Credentials;

.field private proxy:Z


# direct methods
.method public constructor <init>(Lcom/burgstaller/okhttp/digest/Credentials;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->credentials:Lcom/burgstaller/okhttp/digest/Credentials;

    .line 5
    .line 6
    return-void
.end method

.method private authFromRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->proxy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Proxy-Authorization"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "Authorization"

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v2, "Basic"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x5

    .line 29
    const-string v1, "previous basic authentication failed, returning null"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->credentials:Lcom/burgstaller/okhttp/digest/Credentials;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/burgstaller/okhttp/digest/Credentials;->getUserName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->credentials:Lcom/burgstaller/okhttp/digest/Credentials;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/burgstaller/okhttp/digest/Credentials;->getPassword()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 v0, 0x197

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    iput-boolean p2, p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->proxy:Z

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->authFromRequest(Lokhttp3/Request;)Lokhttp3/Request;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public authenticateWithState(Lokhttp3/Route;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;->authFromRequest(Lokhttp3/Request;)Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
