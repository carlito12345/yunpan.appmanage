.class public final Lx9/u1;
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
    const p3, 0x7f0e014f

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
    iget-boolean p2, p3, Lx9/w3;->c:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const p2, 0x7f080132

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p2, 0x7f08025c

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
    iget-object v0, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0b057b

    .line 31
    .line 32
    .line 33
    iget-object p3, p3, Lx9/w3;->j:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
