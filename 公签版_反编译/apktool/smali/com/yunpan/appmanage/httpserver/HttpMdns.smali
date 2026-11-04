.class public Lcom/yunpan/appmanage/httpserver/HttpMdns;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;
    }
.end annotation


# instance fields
.field private final mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private final mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistered:Z

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRegistered:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRunning:Z

    .line 8
    .line 9
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 10
    .line 11
    const-string v2, "servicediscovery"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/nsd/NsdManager;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 20
    .line 21
    new-instance v1, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Lcom/yunpan/appmanage/httpserver/HttpMdns$DiscoveryListener;-><init>(Lcom/yunpan/appmanage/httpserver/HttpMdns;I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 27
    .line 28
    return-void
.end method

.method public static bridge synthetic a(Lcom/yunpan/appmanage/httpserver/HttpMdns;)Landroid/net/nsd/NsdManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yunpan/appmanage/httpserver/HttpMdns;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRunning:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/yunpan/appmanage/httpserver/HttpMdns;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRunning:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRegistered:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 14
    .line 15
    const-string v2, "_http._tcp"

    .line 16
    .line 17
    iget-object v3, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRunning:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mRegistered:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yunpan/appmanage/httpserver/HttpMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
