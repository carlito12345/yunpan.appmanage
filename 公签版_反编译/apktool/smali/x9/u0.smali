.class public final Lx9/u0;
.super Lc6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e0132

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final F(I)V
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
    check-cast v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

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
    iput-boolean v3, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

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
    check-cast p3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 4
    .line 5
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 6
    .line 7
    const v0, 0x7f0b0523

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0b057b

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Lh6/a;->d(IZ)V

    .line 19
    .line 20
    .line 21
    const p2, 0x7f0b055a

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
