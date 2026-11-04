.class public final Lx9/y0;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lx9/y0;->h:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    iget-boolean p3, p0, Lx9/y0;->h:Z

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
    const p2, 0x7f080234

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p2, 0x7f080237

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
