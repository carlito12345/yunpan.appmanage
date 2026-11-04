.class public final Lcom/yunpan/appmanage/carsdk/y;
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
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/y;->a:Lcom/yunpan/appmanage/carsdk/h0;

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
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/y;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/yunpan/appmanage/carsdk/h0;->f:Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

    .line 8
    .line 9
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/y;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
