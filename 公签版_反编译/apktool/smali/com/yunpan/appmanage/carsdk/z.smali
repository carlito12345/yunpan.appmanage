.class public final Lcom/yunpan/appmanage/carsdk/z;
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
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/z;->a:Lcom/yunpan/appmanage/carsdk/h0;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/z;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/autolink/adapterinterface/IPower$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/IPower;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/yunpan/appmanage/carsdk/h0;->d:Lcom/autolink/adapterinterface/IPower;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/h0;->t:Lcom/yunpan/appmanage/carsdk/a0;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/autolink/adapterinterface/IPower;->registerPowerCallback(Lcom/autolink/adapterinterface/IPowerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/z;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/h0;->d:Lcom/autolink/adapterinterface/IPower;

    .line 5
    .line 6
    return-void
.end method
