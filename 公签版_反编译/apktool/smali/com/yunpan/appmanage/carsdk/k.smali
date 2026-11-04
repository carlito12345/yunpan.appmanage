.class public final Lcom/yunpan/appmanage/carsdk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/carsdk/m;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/k;->a:Lcom/yunpan/appmanage/carsdk/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/k;->a:Lcom/yunpan/appmanage/carsdk/m;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 10
    .line 11
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/k;->a:Lcom/yunpan/appmanage/carsdk/m;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 10
    .line 11
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/k;->a:Lcom/yunpan/appmanage/carsdk/m;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    :cond_0
    :try_start_0
    new-instance p1, La1/i;

    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    invoke-direct {p1, v2, p2}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v1, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 17
    .line 18
    new-instance p1, Lcom/yunpan/appmanage/carsdk/j;

    .line 19
    .line 20
    invoke-direct {p1, v0, p0}, Lcom/yunpan/appmanage/carsdk/j;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v1, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 p2, 0x1

    .line 32
    filled-new-array {p2}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    sget v3, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 37
    .line 38
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/m;->d:Lcom/yunpan/appmanage/carsdk/l;

    .line 39
    .line 40
    invoke-virtual {p1, v3, v2}, La1/i;->B(Lcom/yunpan/appmanage/carsdk/l;[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :try_start_2
    iget-object p1, v1, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 44
    .line 45
    sget v1, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 46
    .line 47
    invoke-virtual {p1}, La1/i;->A()[I

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    array-length v1, p1

    .line 54
    if-lez v1, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    aget p1, p1, v0

    .line 61
    .line 62
    if-ne p1, p2, :cond_2

    .line 63
    .line 64
    const/16 p1, 0x1f8

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/16 p1, 0x1f9

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v1, p1}, Lwa/s;->i(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .line 71
    .line 72
    :catch_1
    :cond_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/k;->a:Lcom/yunpan/appmanage/carsdk/m;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 10
    .line 11
    return-void
.end method
