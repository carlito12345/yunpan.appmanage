.class public final Landroidx/media3/exoplayer/video/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/video/t;

.field public final c:Landroid/util/SparseArray;

.field public final d:Z

.field public final e:Landroidx/media3/exoplayer/video/d;

.field public final f:Lu1/z;

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final h:J

.field public final i:Landroidx/media3/exoplayer/video/a0;

.field public j:Lu1/c0;

.field public k:Lu1/b0;

.field public l:Landroid/util/Pair;

.field public m:I

.field public n:I

.field public o:J

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/video/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/video/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/p;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/video/p;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/video/v;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Lu1/c0;

    .line 9
    .line 10
    invoke-direct {v0}, Lu1/c0;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/video/v;->j:Lu1/c0;

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/media3/exoplayer/video/p;->c:Landroidx/media3/exoplayer/video/t;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/video/v;->b:Landroidx/media3/exoplayer/video/t;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/media3/exoplayer/video/v;->c:Landroid/util/SparseArray;

    .line 28
    .line 29
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 30
    .line 31
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 32
    .line 33
    iget-boolean v0, p1, Landroidx/media3/exoplayer/video/p;->d:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/v;->d:Z

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/media3/exoplayer/video/p;->e:Lu1/z;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/media3/exoplayer/video/v;->f:Lu1/z;

    .line 40
    .line 41
    iget-wide v1, p1, Landroidx/media3/exoplayer/video/p;->g:J

    .line 42
    .line 43
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmp-long v5, v1, v3

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    neg-long v1, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-wide v1, v3

    .line 55
    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/v;->h:J

    .line 56
    .line 57
    iget-object v1, p1, Landroidx/media3/exoplayer/video/p;->h:Landroidx/media3/exoplayer/video/a0;

    .line 58
    .line 59
    iput-object v1, p0, Landroidx/media3/exoplayer/video/v;->i:Landroidx/media3/exoplayer/video/a0;

    .line 60
    .line 61
    new-instance v2, Landroidx/media3/exoplayer/video/d;

    .line 62
    .line 63
    iget-object p1, p1, Landroidx/media3/exoplayer/video/p;->b:Landroidx/media3/exoplayer/video/z;

    .line 64
    .line 65
    invoke-direct {v2, p1, v1, v0}, Landroidx/media3/exoplayer/video/d;-><init>(Landroidx/media3/exoplayer/video/z;Landroidx/media3/exoplayer/video/a0;Lu1/z;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Landroidx/media3/exoplayer/video/v;->e:Landroidx/media3/exoplayer/video/d;

    .line 69
    .line 70
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Landroidx/media3/exoplayer/video/v;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 76
    .line 77
    new-instance p1, Lr1/o;

    .line 78
    .line 79
    invoke-direct {p1}, Lr1/o;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lr1/o;->a()Lr1/p;

    .line 83
    .line 84
    .line 85
    iput-wide v3, p0, Landroidx/media3/exoplayer/video/v;->o:J

    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    iput p1, p0, Landroidx/media3/exoplayer/video/v;->p:I

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iput p1, p0, Landroidx/media3/exoplayer/video/v;->n:I

    .line 92
    .line 93
    return-void
.end method
