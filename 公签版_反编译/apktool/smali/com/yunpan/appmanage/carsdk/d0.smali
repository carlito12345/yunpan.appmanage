.class public final Lcom/yunpan/appmanage/carsdk/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/carsdk/h0;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/d0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/d0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/autolink/adapterinterface/IHardKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IHardKeyService;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/yunpan/appmanage/carsdk/h0;->b:Lcom/autolink/adapterinterface/IHardKeyService;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-interface {p2, v0}, Lcom/autolink/adapterinterface/IHardKeyService;->enableDispatch(Z)Z

    .line 11
    .line 12
    .line 13
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/h0;->b:Lcom/autolink/adapterinterface/IHardKeyService;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/yunpan/appmanage/carsdk/h0;->B:Lcom/yunpan/appmanage/carsdk/c0;

    .line 16
    .line 17
    invoke-interface {p2, v0}, Lcom/autolink/adapterinterface/IHardKeyService;->registerHardKeyEvent(Lcom/autolink/adapterinterface/IHardKeyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/d0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/yunpan/appmanage/carsdk/h0;->b:Lcom/autolink/adapterinterface/IHardKeyService;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method
