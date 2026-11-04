.class public final Lcom/yunpan/appmanage/carsdk/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/carsdk/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/h0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/carsdk/b0;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/b0;->b:Lcom/yunpan/appmanage/carsdk/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/carsdk/b0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/b0;->b:Lcom/yunpan/appmanage/carsdk/h0;

    .line 7
    .line 8
    :try_start_0
    iget v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/yunpan/appmanage/carsdk/h0;->H:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lz7/s;

    .line 25
    .line 26
    const-string v3, "click"

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->z:Lcom/yunpan/appmanage/carsdk/b0;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, -0x1

    .line 43
    iput v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 44
    .line 45
    const-wide/16 v1, 0x0

    .line 46
    .line 47
    iput-wide v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :catch_0
    :cond_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/b0;->b:Lcom/yunpan/appmanage/carsdk/h0;

    .line 54
    .line 55
    :try_start_1
    iget v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 56
    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/yunpan/appmanage/carsdk/h0;->H:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lz7/s;

    .line 72
    .line 73
    const-string v3, "longClick"

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 83
    .line 84
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->A:Lcom/yunpan/appmanage/carsdk/b0;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    const/4 v1, -0x1

    .line 90
    iput v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 91
    .line 92
    const-wide/16 v1, 0x0

    .line 93
    .line 94
    iput-wide v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    iput v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->w:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .line 99
    :catch_1
    :cond_1
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
