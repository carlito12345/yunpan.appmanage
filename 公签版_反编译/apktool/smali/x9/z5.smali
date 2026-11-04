.class public final Lx9/z5;
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
    const p3, 0x7f0e017f

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
    const p2, 0x7f0b0523

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "\u6253\u5f00"

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const v0, 0x7f0802a4

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0b04b5

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    const-string p2, "\u5b89\u88c5"

    .line 31
    .line 32
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const p2, 0x7f080281

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    const-string p2, "\u5220\u9664"

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    const p2, 0x7f0800c4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_2
    const-string p2, "\u526a\u5207"

    .line 63
    .line 64
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    const p2, 0x7f0801f7

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_3
    const-string p2, "\u89e3\u538b"

    .line 79
    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_4
    const-string p2, "\u538b\u7f29"

    .line 92
    .line 93
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    const p2, 0x7f0802b7

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :cond_5
    const-string p2, "\u6539\u540d"

    .line 108
    .line 109
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_6

    .line 114
    .line 115
    const p2, 0x7f0802ba

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_6
    const-string p2, "\u63cf\u8ff0"

    .line 124
    .line 125
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_7

    .line 130
    .line 131
    const p2, 0x7f0802bb

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_7
    const-string p2, "\u8fd4\u56de"

    .line 140
    .line 141
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-nez p2, :cond_f

    .line 146
    .line 147
    const-string p2, "\u53d6\u6d88"

    .line 148
    .line 149
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_8

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_8
    const-string p2, "\u5206\u4eab"

    .line 157
    .line 158
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_9

    .line 163
    .line 164
    const p2, 0x7f0801f4

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_9
    const-string p2, "\u79fb\u52a8"

    .line 172
    .line 173
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_a

    .line 178
    .line 179
    const p2, 0x7f080299

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_a
    const-string p2, "\u4e0b\u8f7d"

    .line 187
    .line 188
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_b

    .line 193
    .line 194
    const p2, 0x7f080256

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_b
    const-string p2, "\u4e0a\u4f20"

    .line 202
    .line 203
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_c

    .line 208
    .line 209
    const p2, 0x7f0802e1

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_c
    const-string p2, "\u590d\u5236"

    .line 217
    .line 218
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-eqz p2, :cond_d

    .line 223
    .line 224
    const p2, 0x7f080245

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_d
    const-string p2, "\u64ad\u653e"

    .line 232
    .line 233
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-eqz p2, :cond_e

    .line 238
    .line 239
    const p2, 0x7f080226

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_e
    const-string p2, "\u770b\u56fe"

    .line 247
    .line 248
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    if-eqz p2, :cond_10

    .line 253
    .line 254
    invoke-virtual {p1, v1, v0}, Lh6/a;->b(II)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_f
    :goto_0
    const p2, 0x7f08025b

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v1, p2}, Lh6/a;->b(II)V

    .line 262
    .line 263
    .line 264
    :cond_10
    :goto_1
    return-void
.end method
