.class public final Landroidx/leanback/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/h2;


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/f;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/a;->a:Landroidx/leanback/widget/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/a;->a:Landroidx/leanback/widget/f;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/f;->a:Landroidx/leanback/widget/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_2

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/leanback/widget/q;->K:La0/h;

    .line 18
    .line 19
    iget v4, v1, La0/h;->b:I

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-eq v4, v5, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v4, v5, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    if-eq v4, v5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v4, v1, La0/h;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, La0/m;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v4, Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, La0/h;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, La0/m;

    .line 52
    .line 53
    invoke-virtual {v1, v2, v4}, La0/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, v1, La0/h;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, La0/m;

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {v3}, La0/m;->e()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget-object v1, v1, La0/h;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, La0/m;

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, La0/m;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    iget-object v0, v0, Landroidx/leanback/widget/f;->e:Landroidx/recyclerview/widget/h2;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    check-cast v0, Landroidx/leanback/widget/a;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method
