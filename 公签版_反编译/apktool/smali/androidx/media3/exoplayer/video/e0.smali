.class public final synthetic Landroidx/media3/exoplayer/video/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/j0;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(La2/j0;IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/e0;->b:La2/j0;

    iput p2, p0, Landroidx/media3/exoplayer/video/e0;->d:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/e0;->c:J

    return-void
.end method

.method public synthetic constructor <init>(La2/j0;JI)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/e0;->b:La2/j0;

    iput-wide p2, p0, Landroidx/media3/exoplayer/video/e0;->c:J

    iput p4, p0, Landroidx/media3/exoplayer/video/e0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/e0;->d:I

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/e0;->c:J

    .line 4
    .line 5
    iget-object v3, p0, Landroidx/media3/exoplayer/video/e0;->b:La2/j0;

    .line 6
    .line 7
    iget v4, p0, Landroidx/media3/exoplayer/video/e0;->a:I

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    packed-switch v4, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, v3, La2/j0;->c:Ly1/t;

    .line 18
    .line 19
    iget-object v3, v3, Ly1/t;->a:Ly1/x;

    .line 20
    .line 21
    iget-object v3, v3, Ly1/x;->t:Lz1/e;

    .line 22
    .line 23
    iget-object v4, v3, Lz1/e;->d:Lba/i;

    .line 24
    .line 25
    iget-object v4, v4, Lba/i;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lf2/c0;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lz1/e;->J(Lf2/c0;)Lz1/a;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-instance v5, Lua/t6;

    .line 34
    .line 35
    invoke-direct {v5, v4, v1, v2, v0}, Lua/t6;-><init>(Lz1/a;JI)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x3fd

    .line 39
    .line 40
    invoke-virtual {v3, v4, v0, v5}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, v3, La2/j0;->c:Ly1/t;

    .line 47
    .line 48
    iget-object v3, v3, Ly1/t;->a:Ly1/x;

    .line 49
    .line 50
    iget-object v3, v3, Ly1/x;->t:Lz1/e;

    .line 51
    .line 52
    iget-object v4, v3, Lz1/e;->d:Lba/i;

    .line 53
    .line 54
    iget-object v4, v4, Lba/i;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lf2/c0;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lz1/e;->J(Lf2/c0;)Lz1/a;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    new-instance v5, Lua/t6;

    .line 63
    .line 64
    invoke-direct {v5, v4, v0, v1, v2}, Lua/t6;-><init>(Lz1/a;IJ)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x3fa

    .line 68
    .line 69
    invoke-virtual {v3, v4, v0, v5}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 70
    .line 71
    .line 72
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
