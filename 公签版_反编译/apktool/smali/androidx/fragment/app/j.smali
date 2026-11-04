.class public abstract Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/z1;

.field public final b:Lt0/g;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/z1;Lt0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/j;->b:Lt0/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/j;->b:Lt0/g;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/fragment/app/z1;->e:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/z1;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/z1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 6
    .line 7
    const-string v2, "operation.fragment.mView"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/bumptech/glide/d;->f(Landroid/view/View;)Landroidx/fragment/app/c2;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 17
    .line 18
    if-eq v1, v0, :cond_1

    .line 19
    .line 20
    sget-object v2, Landroidx/fragment/app/c2;->b:Landroidx/fragment/app/c2;

    .line 21
    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    return v0
.end method
