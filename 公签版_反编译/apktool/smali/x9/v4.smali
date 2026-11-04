.class public final Lx9/v4;
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
    const p3, 0x7f0e0176

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
    check-cast p3, Lx9/j1;

    .line 4
    .line 5
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

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
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "\u672c\u673a"

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
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const p2, 0x7f0802ef

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "adb"

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const p2, 0x7f0802cc

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v1, "\u96eb\u6267\u884c"

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    const p2, 0x7f0802ce

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 70
    .line 71
    const-string v1, "\u626b\u7801"

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    const p2, 0x7f0802d0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "\u5386\u53f2"

    .line 89
    .line 90
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    const p2, 0x7f080293

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 104
    .line 105
    const-string v1, "\u5feb\u6377\u6307\u4ee4"

    .line 106
    .line 107
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    const p2, 0x7f08025e

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 121
    .line 122
    const-string v1, "\u6fc0\u6d3b"

    .line 123
    .line 124
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_6

    .line 129
    .line 130
    const p2, 0x7f0801fe

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 138
    .line 139
    const-string v1, "\u8fd4\u56de"

    .line 140
    .line 141
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_7

    .line 146
    .line 147
    const p2, 0x7f0801d0

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    iget-object p2, p3, Lx9/j1;->a:Ljava/lang/String;

    .line 155
    .line 156
    const-string p3, "\u63a8\u9001"

    .line 157
    .line 158
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_8

    .line 163
    .line 164
    const p2, 0x7f0801f5

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 168
    .line 169
    .line 170
    :cond_8
    :goto_0
    return-void
.end method
