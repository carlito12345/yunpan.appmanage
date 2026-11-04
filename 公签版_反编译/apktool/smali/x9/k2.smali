.class public final Lx9/k2;
.super Lk4/a;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/fragment/app/e1;

.field public final c:I

.field public d:Landroidx/fragment/app/a;

.field public e:Landroidx/fragment/app/Fragment;

.field public f:Z

.field public final g:Landroidx/fragment/app/e1;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/e1;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk4/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 6
    .line 7
    iput-object v0, p0, Lx9/k2;->e:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iput-object p1, p0, Lx9/k2;->b:Landroidx/fragment/app/e1;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lx9/k2;->c:I

    .line 13
    .line 14
    iput-object p1, p0, Lx9/k2;->g:Landroidx/fragment/app/e1;

    .line 15
    .line 16
    iput-object p2, p0, Lx9/k2;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx9/k2;->g:Landroidx/fragment/app/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/fragment/app/a;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lx9/k2;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->h(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->d(Z)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lx9/k2;->f:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iput-boolean v1, p0, Lx9/k2;->f:Z

    .line 12
    .line 13
    iget-boolean v3, v0, Landroidx/fragment/app/a;->g:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/d1;

    .line 18
    .line 19
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/d1;->z(Landroidx/fragment/app/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iput-boolean v2, p0, Lx9/k2;->f:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "This transaction is already being added to the back stack"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    iput-boolean v2, p0, Lx9/k2;->f:Z

    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/k2;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final e(Lk4/g;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ViewPager with adapter "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " requires a view id"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method
