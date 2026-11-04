.class public final Lx9/b5;
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
    const p3, 0x7f0e0163

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
    check-cast p3, Ljava/lang/String;

    .line 4
    .line 5
    const p2, 0x7f0b0534

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "\u5b89\u88c5\u5305"

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const v0, 0x7f0b04b5

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const p2, 0x7f08008f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    const-string p2, "\u538b\u7f29\u5305"

    .line 31
    .line 32
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const p2, 0x7f0802b7

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    const-string p2, "\u56fe\u7247"

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    const p2, 0x7f08020f

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_2
    const-string p2, "\u89c6\u9891"

    .line 63
    .line 64
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    const p2, 0x7f0802e5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_3
    const-string p2, "\u97f3\u4e50"

    .line 79
    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    const p2, 0x7f08029b

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-string p2, "\u6587\u6863"

    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_5

    .line 100
    .line 101
    const p2, 0x7f0802df

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    const-string p2, "\u641c\u7d22"

    .line 109
    .line 110
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const v1, 0x7f0801da

    .line 115
    .line 116
    .line 117
    if-eqz p2, :cond_6

    .line 118
    .line 119
    invoke-virtual {p1, v0, v1}, Lh6/a;->b(II)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    const-string p2, "\u6587\u4ef6"

    .line 124
    .line 125
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_7

    .line 130
    .line 131
    const p2, 0x7f080260

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    const-string p2, "\u6587\u4ef6\u5939"

    .line 139
    .line 140
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_8

    .line 145
    .line 146
    const p2, 0x7f080132

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_8
    const-string p2, ">"

    .line 154
    .line 155
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_9

    .line 160
    .line 161
    const p2, 0x7f0801db

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_9
    const-string p2, "\u5929\u5185"

    .line 169
    .line 170
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_a

    .line 175
    .line 176
    const p2, 0x7f080293

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_a
    invoke-virtual {p1, v0, v1}, Lh6/a;->b(II)V

    .line 184
    .line 185
    .line 186
    :goto_0
    return-void
.end method
