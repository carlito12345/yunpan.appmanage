.class public final Lv3/g;
.super Lv3/r;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lv3/t;


# direct methods
.method public constructor <init>(Lv3/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/g;->f:Lv3/t;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lv3/r;-><init>(Lv3/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final q(Lv3/o;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lv3/o;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    const v1, 0x7f13007f

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lv3/g;->f:Lv3/t;

    .line 10
    .line 11
    iget-object v0, v0, Lv3/t;->g1:Lr1/m0;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Ly1/x;

    .line 17
    .line 18
    invoke-virtual {v0}, Ly1/x;->M()Lr1/v0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lv3/g;->s(Lr1/v0;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v1, p1, Lv3/o;->b:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    new-instance v0, Lua/z6;

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    invoke-direct {v0, v1, p0}, Lua/z6;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/g;->f:Lv3/t;

    .line 2
    .line 3
    iget-object v0, v0, Lv3/t;->m:Lv3/n;

    .line 4
    .line 5
    iget-object v0, v0, Lv3/n;->e:[Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p1, v0, v1

    .line 9
    .line 10
    return-void
.end method

.method public final s(Lr1/v0;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lv3/r;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lv3/r;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lv3/q;

    .line 18
    .line 19
    iget-object v2, v2, Lv3/q;->a:Lr1/w0;

    .line 20
    .line 21
    iget-object v2, v2, Lr1/w0;->b:Lr1/r0;

    .line 22
    .line 23
    iget-object v3, p1, Lr1/v0;->v:Lu7/d1;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Lu7/d1;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v0
.end method
