.class public final Lx9/i3;
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
    const p3, 0x7f0e0172

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
    .locals 3

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
    const v0, 0x7f0b0534

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
    const-string v0, "\u5168\u9009"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const v0, 0x7f0800bd

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0b04b5

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "\u4e0d\u9009"

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const p2, 0x7f0800bc

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "\u6587\u4ef6"

    .line 55
    .line 56
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_2
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "\u76ee\u5f55"

    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_3
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, "\u5e94\u7528"

    .line 85
    .line 86
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_4
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 98
    .line 99
    const-string v0, "\u5220\u9664"

    .line 100
    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    const p2, 0x7f0800c4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_5
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 116
    .line 117
    const-string v0, "\u590d\u5236"

    .line 118
    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_6

    .line 124
    .line 125
    const p2, 0x7f0800c0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 133
    .line 134
    const-string v0, "\u526a\u5207"

    .line 135
    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_7

    .line 141
    .line 142
    const p2, 0x7f0801f7

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_7
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 150
    .line 151
    const-string v0, "\u5b89\u88c5"

    .line 152
    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_8

    .line 158
    .line 159
    const p2, 0x7f080281

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_8
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 167
    .line 168
    const-string v0, "\u9000\u51fa"

    .line 169
    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_9

    .line 175
    .line 176
    const p2, 0x7f0801d1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_9
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 184
    .line 185
    const-string v0, "\u4f20\u9001"

    .line 186
    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_a

    .line 192
    .line 193
    const p2, 0x7f0801f5

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_a
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 201
    .line 202
    const-string p3, "\u538b\u7f29"

    .line 203
    .line 204
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_b

    .line 209
    .line 210
    const p2, 0x7f0802b7

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_b
    const p2, 0x7f080132

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 221
    .line 222
    .line 223
    :goto_0
    return-void
.end method
