.class public final Lcom/yunpan/appmanage/carsdk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/carsdk/e;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/b;->a:Lcom/yunpan/appmanage/carsdk/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/b;->a:Lcom/yunpan/appmanage/carsdk/e;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/yunpan/appmanage/carsdk/e;->g:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/16 v3, 0x8f

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v1, v3, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/16 v3, 0x6f

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/e;->c:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->h:Lcom/yunpan/appmanage/carsdk/b;

    .line 41
    .line 42
    const-wide/16 v2, 0xc8

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
