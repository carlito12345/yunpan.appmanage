.class public final synthetic Lcom/yunpan/appmanage/carsdk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/carsdk/j;->a:I

    iput-object p2, p0, Lcom/yunpan/appmanage/carsdk/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/carsdk/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/j;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lhi/e;

    .line 9
    .line 10
    iget-boolean v1, v0, Lhi/e;->g:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lhi/e;->g:Z

    .line 17
    .line 18
    sget-object v1, Lhi/e;->h:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v2, Lha/db;

    .line 21
    .line 22
    const/4 v3, 0x6

    .line 23
    invoke-direct {v2, v3, v0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/j;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/yunpan/appmanage/carsdk/k;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/k;->a:Lcom/yunpan/appmanage/carsdk/m;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
