.class public final Lla/d;
.super Lcom/bumptech/glide/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/p;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/Class;)Lcom/bumptech/glide/m;
    .locals 3

    .line 1
    new-instance v0, Lla/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/p;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1, v2}, Lla/c;-><init>(Lcom/bumptech/glide/b;Lla/d;Ljava/lang/Class;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final m()Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/p;->m()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lla/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public final n()Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lla/d;->l(Ljava/lang/Class;)Lcom/bumptech/glide/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lla/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q()Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/p;->q()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lla/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public final r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/p;->r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lla/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public final s(Ljava/io/File;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lla/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/p;->t(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lla/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public final u(Ljava/lang/String;)Lcom/bumptech/glide/m;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lla/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public final x(Lw5/e;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lla/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/bumptech/glide/p;->x(Lw5/e;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lla/b;

    .line 10
    .line 11
    invoke-direct {v0}, Lla/b;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lla/b;->A(Lw5/e;)Lla/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-super {p0, p1}, Lcom/bumptech/glide/p;->x(Lw5/e;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
