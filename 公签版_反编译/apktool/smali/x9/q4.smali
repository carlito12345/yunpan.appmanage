.class public final Lx9/q4;
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
    const p3, 0x7f0e012e

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
    .locals 2

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lx9/x0;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const v1, 0x7f0b04b5

    .line 7
    .line 8
    .line 9
    if-ge p2, v0, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p3, Lx9/x0;->b:Z

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const p2, 0x7f0802b0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p2, 0x7f0802af

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-boolean p2, p3, Lx9/x0;->b:Z

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    const p2, 0x7f080234

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const p2, 0x7f080237

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 38
    .line 39
    .line 40
    :goto_2
    const p2, 0x7f0b0523

    .line 41
    .line 42
    .line 43
    iget-object p3, p3, Lx9/x0;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
