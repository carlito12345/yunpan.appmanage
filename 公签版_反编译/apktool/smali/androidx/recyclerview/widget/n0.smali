.class public final Landroidx/recyclerview/widget/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/m0;

.field public final synthetic b:Landroidx/recyclerview/widget/u0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/m0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/n0;->b:Landroidx/recyclerview/widget/u0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/recyclerview/widget/n0;->a:Landroidx/recyclerview/widget/m0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/n0;->b:Landroidx/recyclerview/widget/u0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/n0;->a:Landroidx/recyclerview/widget/m0;

    .line 14
    .line 15
    iget-boolean v2, v1, Landroidx/recyclerview/widget/s0;->k:Z

    .line 16
    .line 17
    if-nez v2, :cond_4

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/recyclerview/widget/s0;->e:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    if-eq v2, v3, :cond_4

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/t1;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/recyclerview/widget/t1;->f()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->p:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x0

    .line 49
    :goto_0
    if-ge v4, v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroidx/recyclerview/widget/s0;

    .line 56
    .line 57
    iget-boolean v5, v5, Landroidx/recyclerview/widget/s0;->l:Z

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, v0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v0, "viewHolder"

    .line 76
    .line 77
    invoke-static {v1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    return-void
.end method
