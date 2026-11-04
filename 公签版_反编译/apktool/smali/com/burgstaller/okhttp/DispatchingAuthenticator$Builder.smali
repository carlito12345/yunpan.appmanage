.class public final Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/burgstaller/okhttp/DispatchingAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/Authenticator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->registry:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/burgstaller/okhttp/DispatchingAuthenticator;
    .locals 3

    .line 1
    new-instance v0, Lcom/burgstaller/okhttp/DispatchingAuthenticator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->registry:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/burgstaller/okhttp/DispatchingAuthenticator;-><init>(Ljava/util/Map;Lcom/burgstaller/okhttp/DispatchingAuthenticator$1;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public with(Ljava/lang/String;Lokhttp3/Authenticator;)Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->registry:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
