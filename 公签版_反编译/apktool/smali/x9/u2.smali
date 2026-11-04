.class public final Lx9/u2;
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
    const p3, 0x7f0e0143

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
    check-cast p3, Lx9/w3;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean p2, p3, Lx9/w3;->c:Z

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const p2, 0x7f080132

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const p2, 0x7f08025e

    .line 17
    .line 18
    .line 19
    :goto_0
    const v0, 0x7f0b04b5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 23
    .line 24
    .line 25
    const p2, 0x7f0b0523

    .line 26
    .line 27
    .line 28
    iget-object p3, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    return-void
.end method
