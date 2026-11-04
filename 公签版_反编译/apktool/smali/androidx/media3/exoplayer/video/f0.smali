.class public final synthetic Landroidx/media3/exoplayer/video/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La2/j0;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(La2/j0;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/f0;->a:La2/j0;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/f0;->b:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/f0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/f0;->a:La2/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    .line 9
    .line 10
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 11
    .line 12
    iget-object v1, v0, Ly1/x;->t:Lz1/e;

    .line 13
    .line 14
    invoke-virtual {v1}, Lz1/e;->M()Lz1/a;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lua/g5;

    .line 19
    .line 20
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/f0;->c:J

    .line 21
    .line 22
    iget-object v6, p0, Landroidx/media3/exoplayer/video/f0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v3, v2, v6, v4, v5}, Lua/g5;-><init>(Lz1/a;Ljava/lang/Object;J)V

    .line 25
    .line 26
    .line 27
    const/16 v4, 0x1a

    .line 28
    .line 29
    invoke-virtual {v1, v2, v4, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Ly1/x;->h0:Ljava/lang/Object;

    .line 33
    .line 34
    if-ne v1, v6, :cond_0

    .line 35
    .line 36
    new-instance v1, Lua/t6;

    .line 37
    .line 38
    const/16 v2, 0xd

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lua/t6;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Ly1/x;->m:Lu1/m;

    .line 44
    .line 45
    invoke-virtual {v0, v4, v1}, Lu1/m;->e(ILu1/j;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
