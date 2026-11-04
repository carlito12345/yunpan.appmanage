.class public final synthetic Lua/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/i9;


# direct methods
.method public synthetic constructor <init>(Lua/i9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/s8;->a:I

    iput-object p1, p0, Lua/s8;->b:Lua/i9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lua/s8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/s8;->b:Lua/i9;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/16 p3, 0x13

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne p2, p3, :cond_2

    .line 23
    .line 24
    iget-object p1, v0, Lua/i9;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/16 p3, 0x14

    .line 32
    .line 33
    if-ne p2, p3, :cond_3

    .line 34
    .line 35
    iget-object p1, v0, Lua/i9;->z:Lx9/f0;

    .line 36
    .line 37
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/16 p3, 0x15

    .line 50
    .line 51
    if-ne p2, p3, :cond_4

    .line 52
    .line 53
    iget-object p1, v0, Lua/i9;->v:Lx9/s5;

    .line 54
    .line 55
    iget-wide p2, p1, Lx9/s5;->h:J

    .line 56
    .line 57
    const-wide/16 v3, 0x0

    .line 58
    .line 59
    cmp-long v5, p2, v3

    .line 60
    .line 61
    if-nez v5, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-lez p1, :cond_5

    .line 68
    .line 69
    iget-object p1, v0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/16 p3, 0x16

    .line 76
    .line 77
    if-ne p2, p3, :cond_5

    .line 78
    .line 79
    iget-object p2, v0, Lua/i9;->v:Lx9/s5;

    .line 80
    .line 81
    iget-wide v3, p2, Lx9/s5;->h:J

    .line 82
    .line 83
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    sub-int/2addr p2, v2

    .line 88
    int-to-long p2, p2

    .line 89
    cmp-long v0, v3, p2

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    const/16 p2, 0x14d

    .line 94
    .line 95
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    :goto_1
    return v1

    .line 100
    :pswitch_0
    iget-object v0, p0, Lua/s8;->b:Lua/i9;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v2, 0x1

    .line 111
    if-eqz p3, :cond_6

    .line 112
    .line 113
    iget-object p1, v0, Lua/i9;->F:Lx9/c6;

    .line 114
    .line 115
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-lez p1, :cond_b

    .line 120
    .line 121
    iget-object p1, v0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_b

    .line 128
    .line 129
    iget-object p1, v0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 132
    .line 133
    .line 134
    :goto_2
    const/4 v1, 0x1

    .line 135
    goto :goto_3

    .line 136
    :cond_6
    const/16 p3, 0x13

    .line 137
    .line 138
    if-ne p2, p3, :cond_7

    .line 139
    .line 140
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, "up"

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    const/16 p3, 0x14

    .line 151
    .line 152
    if-ne p2, p3, :cond_9

    .line 153
    .line 154
    iget-object p1, v0, Lua/i9;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_8

    .line 161
    .line 162
    iget-object p1, v0, Lua/i9;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    iget-object p1, v0, Lua/i9;->t:Lcom/recycleview/MyRecycleView;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    const/16 p3, 0x15

    .line 175
    .line 176
    if-ne p2, p3, :cond_a

    .line 177
    .line 178
    iget-object p1, v0, Lua/i9;->r:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_a
    const/16 p3, 0x16

    .line 185
    .line 186
    if-ne p2, p3, :cond_b

    .line 187
    .line 188
    const/16 p2, 0x14d

    .line 189
    .line 190
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_b
    :goto_3
    return v1

    .line 195
    :pswitch_1
    iget-object v0, p0, Lua/s8;->b:Lua/i9;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 201
    .line 202
    .line 203
    move-result p3

    .line 204
    const/4 v1, 0x0

    .line 205
    if-eqz p3, :cond_c

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_c
    const/16 p3, 0x13

    .line 209
    .line 210
    const/4 v2, 0x1

    .line 211
    if-ne p2, p3, :cond_e

    .line 212
    .line 213
    iget-object p1, v0, Lua/i9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 216
    .line 217
    .line 218
    :cond_d
    :goto_4
    const/4 v1, 0x1

    .line 219
    goto :goto_5

    .line 220
    :cond_e
    const/16 p3, 0x14

    .line 221
    .line 222
    if-ne p2, p3, :cond_f

    .line 223
    .line 224
    iget-object p1, v0, Lua/i9;->q:Lx9/y5;

    .line 225
    .line 226
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-lez p1, :cond_d

    .line 231
    .line 232
    iget-object p1, v0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_f
    const/16 p3, 0x15

    .line 239
    .line 240
    if-ne p2, p3, :cond_10

    .line 241
    .line 242
    iget-object p2, v0, Lua/i9;->l:Lx9/s5;

    .line 243
    .line 244
    iget-wide p2, p2, Lx9/s5;->h:J

    .line 245
    .line 246
    const-wide/16 v3, 0x0

    .line 247
    .line 248
    cmp-long v0, p2, v3

    .line 249
    .line 250
    if-nez v0, :cond_11

    .line 251
    .line 252
    const/16 p2, 0x14d

    .line 253
    .line 254
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_10
    const/16 p1, 0x16

    .line 259
    .line 260
    if-ne p2, p1, :cond_11

    .line 261
    .line 262
    iget-object p1, v0, Lua/i9;->l:Lx9/s5;

    .line 263
    .line 264
    iget-wide p2, p1, Lx9/s5;->h:J

    .line 265
    .line 266
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    sub-int/2addr p1, v2

    .line 271
    int-to-long v3, p1

    .line 272
    cmp-long p1, p2, v3

    .line 273
    .line 274
    if-nez p1, :cond_11

    .line 275
    .line 276
    iget-object p1, v0, Lua/i9;->n:Lx9/a6;

    .line 277
    .line 278
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-lez p1, :cond_11

    .line 283
    .line 284
    iget-object p1, v0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_11
    :goto_5
    return v1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
