.class Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunpan/appmanage/httpserver/HttpMdns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscoveryListener"
.end annotation


# instance fields
.field private final mHttpMdns:Lcom/yunpan/appmanage/httpserver/HttpMdns;


# direct methods
.method private constructor <init>(Lcom/yunpan/appmanage/httpserver/HttpMdns;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->mHttpMdns:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/httpserver/HttpMdns;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;-><init>(Lcom/yunpan/appmanage/httpserver/HttpMdns;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;)Lcom/yunpan/appmanage/httpserver/HttpMdns;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->mHttpMdns:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    return-object p0
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->mHttpMdns:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/httpserver/HttpMdns;->c(Lcom/yunpan/appmanage/httpserver/HttpMdns;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->mHttpMdns:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/httpserver/HttpMdns;->c(Lcom/yunpan/appmanage/httpserver/HttpMdns;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->mHttpMdns:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yunpan/appmanage/httpserver/HttpMdns;->b(Lcom/yunpan/appmanage/httpserver/HttpMdns;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;->mHttpMdns:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/yunpan/appmanage/httpserver/HttpMdns;->a(Lcom/yunpan/appmanage/httpserver/HttpMdns;)Landroid/net/nsd/NsdManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener$1;-><init>(Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->e:Ljava/lang/String;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    const/16 v1, 0xd

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    add-int/lit8 p1, p1, -0x1

    .line 55
    .line 56
    :goto_0
    if-ltz p1, :cond_2

    .line 57
    .line 58
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 59
    .line 60
    iget-object v5, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lcom/yunpan/appmanage/util/d;

    .line 67
    .line 68
    iget-wide v5, v5, Lcom/yunpan/appmanage/util/d;->d:J

    .line 69
    .line 70
    cmp-long v7, v5, v3

    .line 71
    .line 72
    if-nez v7, :cond_1

    .line 73
    .line 74
    iget-object v5, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->e0:Z

    .line 80
    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "\u8bbe\u5907\u79bb\u5f00\uff1a"

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    :cond_2
    :try_start_1
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p1

    .line 113
    :cond_3
    :goto_3
    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
