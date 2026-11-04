.class public final Lx9/v0;
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
    const p3, 0x7f0e0136

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
    check-cast p3, Lx9/x0;

    .line 4
    .line 5
    iget-object p2, p3, Lx9/x0;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "\u6587\u4ef6\u83dc\u5355"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const v0, 0x7f0b04b5

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const p2, 0x7f080270

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-boolean p2, p3, Lx9/x0;->b:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    const p2, 0x7f0800bd

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const p2, 0x7f0800bc

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 37
    .line 38
    .line 39
    :goto_1
    const p2, 0x7f0b0523

    .line 40
    .line 41
    .line 42
    iget-object p3, p3, Lx9/x0;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
