.class public final synthetic Landroidx/media3/exoplayer/video/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/j0;

.field public final synthetic c:Ly1/c;


# direct methods
.method public synthetic constructor <init>(La2/j0;Ly1/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/media3/exoplayer/video/g0;->a:I

    iput-object p1, p0, Landroidx/media3/exoplayer/video/g0;->b:La2/j0;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/g0;->c:Ly1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/g0;->b:La2/j0;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/video/g0;->c:Ly1/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    monitor-exit v1

    .line 15
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    .line 16
    .line 17
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 20
    .line 21
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    .line 22
    .line 23
    iget-object v2, v0, Lz1/e;->d:Lba/i;

    .line 24
    .line 25
    iget-object v2, v2, Lba/i;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lf2/c0;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lz1/e;->J(Lf2/c0;)Lz1/a;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lua/g5;

    .line 34
    .line 35
    const/16 v4, 0x1b

    .line 36
    .line 37
    invoke-direct {v3, v2, v1, v4}, Lua/g5;-><init>(Lz1/a;Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x3fc

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/g0;->b:La2/j0;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    .line 54
    .line 55
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    .line 61
    .line 62
    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lua/t6;

    .line 67
    .line 68
    iget-object v3, p0, Landroidx/media3/exoplayer/video/g0;->c:Ly1/c;

    .line 69
    .line 70
    const/16 v4, 0x16

    .line 71
    .line 72
    invoke-direct {v2, v1, v3, v4}, Lua/t6;-><init>(Lz1/a;Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    const/16 v3, 0x3f7

    .line 76
    .line 77
    invoke-virtual {v0, v1, v3, v2}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
