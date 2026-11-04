.class public final Lcom/yunpan/appmanage/carsdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/carsdk/r;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/o;->a:Lcom/yunpan/appmanage/carsdk/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/o;->a:Lcom/yunpan/appmanage/carsdk/r;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/r;->d:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
