.class public Lcom/yunpan/appmanage/httpserver/NsdHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "servicediscovery"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/net/nsd/NsdManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public registerService(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 12
    .line 13
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 14
    .line 15
    iget-wide v2, v2, Lcom/yunpan/appmanage/util/k;->k0:J

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "_http._tcp"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/yunpan/appmanage/httpserver/NsdHelper$1;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/yunpan/appmanage/httpserver/NsdHelper$1;-><init>(Lcom/yunpan/appmanage/httpserver/NsdHelper;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/NsdHelper;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/yunpan/appmanage/httpserver/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v0, v2, p1}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public unregisterService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/httpserver/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yunpan/appmanage/httpserver/NsdHelper;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
