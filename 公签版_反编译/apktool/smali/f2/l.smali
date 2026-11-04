.class public final Lf2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/d1;


# instance fields
.field public final a:Lf2/d1;

.field public final b:Lu7/g0;


# direct methods
.method public constructor <init>(Lf2/d1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/l;->a:Lf2/d1;

    .line 5
    .line 6
    invoke-static {p2}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lf2/l;->b:Lu7/g0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ly1/j0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l;->a:Lf2/d1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lf2/d1;->a(Ly1/j0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final b()Lu7/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l;->b:Lu7/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/l;->a:Lf2/d1;

    .line 2
    .line 3
    invoke-interface {v0}, Lf2/d1;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l;->a:Lf2/d1;

    .line 2
    .line 3
    invoke-interface {v0}, Lf2/d1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final p()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/l;->a:Lf2/d1;

    .line 2
    .line 3
    invoke-interface {v0}, Lf2/d1;->p()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final r(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/l;->a:Lf2/d1;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lf2/d1;->r(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
