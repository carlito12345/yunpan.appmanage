.class public abstract Lf2/l1;
.super Lf2/k;
.source "SourceFile"


# instance fields
.field public final k:Lf2/a;


# direct methods
.method public constructor <init>(Lf2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf2/k;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/l1;->k:Lf2/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/l1;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f()Lr1/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l1;->k:Lf2/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/a;->f()Lr1/q0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final g()Lr1/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l1;->k:Lf2/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/a;->g()Lr1/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l1;->k:Lf2/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/a;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final k(Lw1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2/k;->j:Lw1/x;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lu1/f0;->k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lf2/k;->i:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0}, Lf2/l1;->A()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public r(Lr1/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l1;->k:Lf2/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf2/a;->r(Lr1/y;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(Ljava/lang/Object;Lf2/c0;)Lf2/c0;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lf2/l1;->x(Lf2/c0;)Lf2/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final t(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    return-wide p2
.end method

.method public final u(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    return p1
.end method

.method public final v(Ljava/lang/Object;Lf2/a;Lr1/q0;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lf2/l1;->y(Lr1/q0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(Lf2/c0;)Lf2/c0;
    .locals 0

    .line 1
    return-object p1
.end method

.method public abstract y(Lr1/q0;)V
.end method

.method public final z()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lf2/l1;->k:Lf2/a;

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lf2/k;->w(Ljava/lang/Object;Lf2/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
