.class public final Lcom/yunpan/appmanage/carsdk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:I


# instance fields
.field public a:La1/i;

.field public final b:Lcom/yunpan/appmanage/service/AccService;

.field public final c:Lcom/yunpan/appmanage/carsdk/k;

.field public final d:Lcom/yunpan/appmanage/carsdk/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0xfe

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x19

    .line 5
    .line 6
    new-array v3, v2, [I

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    :goto_0
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget v4, v3, v1

    .line 14
    .line 15
    if-ne v4, v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, -0x1

    .line 22
    :goto_1
    sput v1, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x11
        0x12
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
        0x100
        0x101
    .end array-data
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/yunpan/appmanage/carsdk/k;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/yunpan/appmanage/carsdk/k;-><init>(Lcom/yunpan/appmanage/carsdk/m;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/m;->c:Lcom/yunpan/appmanage/carsdk/k;

    .line 25
    .line 26
    new-instance v1, Lcom/yunpan/appmanage/carsdk/l;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/yunpan/appmanage/carsdk/l;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/m;->d:Lcom/yunpan/appmanage/carsdk/l;

    .line 32
    .line 33
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/content/ComponentName;

    .line 39
    .line 40
    const-string v3, "com.desay.svcarinfo"

    .line 41
    .line 42
    const-string v4, "com.desay.svcarinfo.CarInfoService"

    .line 43
    .line 44
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/m;->b:Lcom/yunpan/appmanage/service/AccService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    :catch_0
    :cond_0
    return-void
.end method
