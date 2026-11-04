.class public final Lg6/a;
.super Landroidx/recyclerview/widget/j0;
.source "SourceFile"


# instance fields
.field public c:Landroidx/recyclerview/widget/j0;

.field public final synthetic d:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg6/a;->d:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/j0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lg6/a;->d:Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;->b:Landroidx/recyclerview/widget/m1;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Lf6/a;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of v3, v1, Lc6/g;

    .line 19
    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    check-cast v1, Lc6/g;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lc6/g;->d(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v1, v3}, Lc6/g;->x(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lg6/a;->c:Landroidx/recyclerview/widget/j0;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j0;->c(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lg6/a;->c:Landroidx/recyclerview/widget/j0;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j0;->c(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    :cond_4
    :goto_0
    return v2
.end method
