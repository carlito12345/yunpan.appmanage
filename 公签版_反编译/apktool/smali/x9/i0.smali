.class public final Lx9/i0;
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
    const p3, 0x7f0e0130

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 4
    .line 5
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/StringBoolBean;->name:Ljava/lang/String;

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
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/StringBoolBean;->isCheck:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const p2, 0x7f080234

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const p2, 0x7f080237

    .line 22
    .line 23
    .line 24
    :goto_0
    const p3, 0x7f0b04b5

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
