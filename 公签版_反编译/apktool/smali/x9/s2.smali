.class public final Lx9/s2;
.super Lc6/g;
.source "SourceFile"

# interfaces
.implements Le6/a;


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
    const p3, 0x7f0e015c

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
    check-cast p3, Lz7/s;

    .line 4
    .line 5
    iget-object p2, p3, Lz7/s;->a:Lb8/n;

    .line 6
    .line 7
    const-string v0, "isOpen"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lz7/p;->b()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x1

    .line 26
    :goto_0
    const-string v0, "name"

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p3}, Lz7/p;->i()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const v0, 0x7f0b0523

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    xor-int/2addr p2, v1

    .line 43
    const p3, 0x7f0b0609

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3, p2}, Lh6/a;->d(IZ)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
