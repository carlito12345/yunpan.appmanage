.class public final Landroidx/recyclerview/widget/m0;
.super Landroidx/recyclerview/widget/s0;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic p:Landroidx/recyclerview/widget/u0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    iput-object v0, v7, Landroidx/recyclerview/widget/m0;->p:Landroidx/recyclerview/widget/u0;

    .line 4
    .line 5
    move/from16 v0, p9

    .line 6
    .line 7
    iput v0, v7, Landroidx/recyclerview/widget/m0;->n:I

    .line 8
    .line 9
    move-object/from16 v0, p10

    .line 10
    .line 11
    iput-object v0, v7, Landroidx/recyclerview/widget/m0;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p2

    .line 15
    move v2, p4

    .line 16
    move v3, p5

    .line 17
    move v4, p6

    .line 18
    move v5, p7

    .line 19
    move/from16 v6, p8

    .line 20
    .line 21
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/s0;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFFFF)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s0;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/s0;->k:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/m0;->n:I

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/m0;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/m0;->p:Landroidx/recyclerview/widget/u0;

    .line 14
    .line 15
    if-gtz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, v1, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {p1, v2, v0}, Ld6/a;->e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v2, v1, Landroidx/recyclerview/widget/u0;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Landroidx/recyclerview/widget/s0;->h:Z

    .line 34
    .line 35
    if-lez p1, :cond_2

    .line 36
    .line 37
    iget-object v2, v1, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    new-instance v3, Landroidx/recyclerview/widget/n0;

    .line 40
    .line 41
    invoke-direct {v3, v1, p0, p1}, Landroidx/recyclerview/widget/n0;-><init>(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/m0;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    iget-object p1, v1, Landroidx/recyclerview/widget/u0;->x:Landroid/view/View;

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/u0;->m(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method
