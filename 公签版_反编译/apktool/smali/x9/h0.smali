.class public final Lx9/h0;
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
    const p3, 0x7f0e0180

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
    check-cast p3, Lx9/w3;

    .line 4
    .line 5
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

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
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "TF"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const v0, 0x7f0b04b5

    .line 22
    .line 23
    .line 24
    if-nez p2, :cond_4

    .line 25
    .line 26
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "\u5185\u90e8\u5b58\u50a8"

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "\u62d4\u51faU\u76d8"

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    const p2, 0x7f080242

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, "\u76d8"

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    const p2, 0x7f08030b

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 72
    .line 73
    const-string p3, "\u6279\u91cf"

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    const p2, 0x7f0802a7

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const p2, 0x7f080132

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    :goto_0
    const p2, 0x7f080201

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method
