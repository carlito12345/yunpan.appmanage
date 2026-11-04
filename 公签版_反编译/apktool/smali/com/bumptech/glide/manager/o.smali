.class public final Lcom/bumptech/glide/manager/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/AspectRatioFrameLayout;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/manager/o;->a:I

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/bumptech/glide/manager/o;->a:I

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/bumptech/glide/manager/o;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/bumptech/glide/manager/o;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    .line 10
    .line 11
    sget v1, Landroidx/media3/ui/AspectRatioFrameLayout;->d:I

    .line 12
    .line 13
    check-cast v0, Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast v0, Lcom/bumptech/glide/manager/r;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->b:Lcom/bumptech/glide/manager/m;

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/m;->a(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast v0, Lcom/bumptech/glide/manager/p;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, La6/q;->a()V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lcom/bumptech/glide/manager/p;->a:Landroidx/room/i;

    .line 38
    .line 39
    iget-boolean v1, v0, Landroidx/room/i;->a:Z

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/o;->b:Z

    .line 42
    .line 43
    iput-boolean v2, v0, Landroidx/room/i;->a:Z

    .line 44
    .line 45
    if-eq v1, v2, :cond_0

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/bumptech/glide/manager/m;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/m;->a(Z)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
