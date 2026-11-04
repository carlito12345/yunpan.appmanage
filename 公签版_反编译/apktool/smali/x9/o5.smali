.class public final Lx9/o5;
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
    .locals 1

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lx9/n5;

    .line 4
    .line 5
    iget-object p2, p3, Lx9/n5;->b:Ljava/lang/String;

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
    iget p2, p3, Lx9/n5;->a:I

    .line 14
    .line 15
    const p3, 0x7f0b04b5

    .line 16
    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    const p2, 0x7f08008c

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    if-ne p2, v0, :cond_1

    .line 29
    .line 30
    const p2, 0x7f080295

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x2

    .line 38
    if-ne p2, v0, :cond_2

    .line 39
    .line 40
    const p2, 0x7f080211

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v0, 0x3

    .line 48
    if-ne p2, v0, :cond_3

    .line 49
    .line 50
    const p2, 0x7f0802d1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 v0, 0x4

    .line 58
    if-eq p2, v0, :cond_9

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    if-ne p2, v0, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x6

    .line 65
    if-ne p2, v0, :cond_5

    .line 66
    .line 67
    const p2, 0x7f0802ca

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    const/4 v0, 0x7

    .line 75
    if-ne p2, v0, :cond_6

    .line 76
    .line 77
    const p2, 0x7f0802e7

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    const/16 v0, 0x14

    .line 85
    .line 86
    if-ne p2, v0, :cond_7

    .line 87
    .line 88
    const p2, 0x7f0802ed

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_7
    const/16 v0, 0x15

    .line 96
    .line 97
    if-ne p2, v0, :cond_8

    .line 98
    .line 99
    const p2, 0x7f080273

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    const p2, 0x7f080132

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_9
    :goto_0
    const p2, 0x7f080262

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p3, p2}, Lh6/a;->b(II)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method
