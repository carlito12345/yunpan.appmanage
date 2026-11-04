.class public final Lx9/i4;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lx9/i4;->h:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    iget-boolean p3, p0, Lx9/i4;->h:Z

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const p3, 0x7f0e0138

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const p3, 0x7f0e0137

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final F()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lc6/g;->b()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lx9/x0;

    .line 13
    .line 14
    iget-boolean v1, v1, Lx9/x0;->b:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, -0x1

    .line 23
    return v0
.end method

.method public final G(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lx9/x0;

    .line 14
    .line 15
    if-ne v1, p1, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_1
    iput-boolean v3, v2, Lx9/x0;->b:Z

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lx9/x0;

    .line 4
    .line 5
    iget-boolean p2, p3, Lx9/x0;->b:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const p2, 0x7f0802b6

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p2, 0x7f0802ad

    .line 14
    .line 15
    .line 16
    :goto_0
    const v0, 0x7f0b04b5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 20
    .line 21
    .line 22
    const p2, 0x7f0b0523

    .line 23
    .line 24
    .line 25
    iget-object p3, p3, Lx9/x0;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
