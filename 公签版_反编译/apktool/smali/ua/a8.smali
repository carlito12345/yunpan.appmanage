.class public final synthetic Lua/a8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/q8;


# direct methods
.method public synthetic constructor <init>(Lua/q8;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/a8;->a:I

    iput-object p1, p0, Lua/a8;->b:Lua/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lua/a8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/a8;->b:Lua/q8;

    .line 7
    .line 8
    const/16 p3, 0x13

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p2, p3, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p3, 0x14

    .line 20
    .line 21
    if-ne p2, p3, :cond_1

    .line 22
    .line 23
    iget-object p2, p1, Lua/q8;->n:Lx9/n;

    .line 24
    .line 25
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-lez p2, :cond_2

    .line 30
    .line 31
    iget-object p1, p1, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :cond_2
    :goto_0
    return v0

    .line 42
    :pswitch_0
    iget-object p1, p0, Lua/a8;->b:Lua/q8;

    .line 43
    .line 44
    const/16 p3, 0x13

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    if-ne p2, p3, :cond_3

    .line 48
    .line 49
    iget-object p1, p1, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/16 p3, 0x14

    .line 56
    .line 57
    if-ne p2, p3, :cond_4

    .line 58
    .line 59
    iget-object p2, p1, Lua/q8;->n:Lx9/n;

    .line 60
    .line 61
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-lez p2, :cond_5

    .line 66
    .line 67
    iget-object p1, p1, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    :cond_5
    :goto_1
    return v0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lua/a8;->b:Lua/q8;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-nez p3, :cond_a

    .line 88
    .line 89
    const/16 p3, 0x16

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    if-ne p2, p3, :cond_6

    .line 93
    .line 94
    const/16 p2, 0x14d

    .line 95
    .line 96
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    const/16 p1, 0x15

    .line 101
    .line 102
    if-ne p2, p1, :cond_7

    .line 103
    .line 104
    iget-object p1, v0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    const/16 p1, 0x13

    .line 111
    .line 112
    if-ne p2, p1, :cond_8

    .line 113
    .line 114
    iget-object p1, v0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    const/16 p1, 0x14

    .line 121
    .line 122
    if-ne p2, p1, :cond_a

    .line 123
    .line 124
    iget-object p1, v0, Lua/q8;->n:Lx9/n;

    .line 125
    .line 126
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-lez p1, :cond_9

    .line 131
    .line 132
    iget-object p1, v0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    iget-object p1, v0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_a
    const/4 v1, 0x0

    .line 145
    :goto_2
    return v1

    .line 146
    :pswitch_2
    iget-object p1, p0, Lua/a8;->b:Lua/q8;

    .line 147
    .line 148
    const/16 p3, 0x13

    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    if-ne p2, p3, :cond_b

    .line 152
    .line 153
    iget-object p1, p1, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_b
    const/16 p3, 0x14

    .line 160
    .line 161
    if-ne p2, p3, :cond_c

    .line 162
    .line 163
    iget-object p2, p1, Lua/q8;->n:Lx9/n;

    .line 164
    .line 165
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-lez p2, :cond_d

    .line 170
    .line 171
    iget-object p1, p1, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const/4 v0, 0x0

    .line 181
    :cond_d
    :goto_3
    return v0

    .line 182
    :pswitch_3
    iget-object p1, p0, Lua/a8;->b:Lua/q8;

    .line 183
    .line 184
    const/16 p3, 0x13

    .line 185
    .line 186
    const/4 v0, 0x1

    .line 187
    if-ne p2, p3, :cond_e

    .line 188
    .line 189
    iget-object p1, p1, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_e
    const/16 p3, 0x14

    .line 196
    .line 197
    if-ne p2, p3, :cond_f

    .line 198
    .line 199
    iget-object p2, p1, Lua/q8;->n:Lx9/n;

    .line 200
    .line 201
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-lez p2, :cond_10

    .line 206
    .line 207
    iget-object p1, p1, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    :cond_10
    :goto_4
    return v0

    .line 218
    :pswitch_4
    iget-object p1, p0, Lua/a8;->b:Lua/q8;

    .line 219
    .line 220
    const/16 p3, 0x13

    .line 221
    .line 222
    const/4 v0, 0x1

    .line 223
    if-ne p2, p3, :cond_11

    .line 224
    .line 225
    iget-object p1, p1, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_11
    const/16 p3, 0x14

    .line 232
    .line 233
    if-ne p2, p3, :cond_12

    .line 234
    .line 235
    iget-object p2, p1, Lua/q8;->n:Lx9/n;

    .line 236
    .line 237
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-lez p2, :cond_13

    .line 242
    .line 243
    iget-object p1, p1, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    const/4 v0, 0x0

    .line 253
    :cond_13
    :goto_5
    return v0

    .line 254
    :pswitch_5
    iget-object p1, p0, Lua/a8;->b:Lua/q8;

    .line 255
    .line 256
    const/16 p3, 0x13

    .line 257
    .line 258
    const/4 v0, 0x1

    .line 259
    if-ne p2, p3, :cond_14

    .line 260
    .line 261
    iget-object p1, p1, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_14
    const/16 p3, 0x14

    .line 268
    .line 269
    if-ne p2, p3, :cond_15

    .line 270
    .line 271
    iget-object p2, p1, Lua/q8;->n:Lx9/n;

    .line 272
    .line 273
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-lez p2, :cond_16

    .line 278
    .line 279
    iget-object p1, p1, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    const/4 v0, 0x0

    .line 289
    :cond_16
    :goto_6
    return v0

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
