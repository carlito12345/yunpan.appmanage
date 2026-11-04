.class public final synthetic Lua/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lc6/f;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityDownload;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/n1;->a:I

    iput-object p1, p0, Lua/n1;->b:Lcom/yunpan/appmanage/ui/ActivityDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(ILandroid/view/View;)Z
    .locals 2

    .line 1
    sget p2, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 2
    .line 3
    iget-object p2, p0, Lua/n1;->b:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/yunpan/appmanage/util/c0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 9
    .line 10
    iget-object v1, p2, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 11
    .line 12
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    sub-int/2addr v1, p1

    .line 19
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/d0;->b(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lc6/g;->C(I)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 9

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/16 v1, 0x14d

    .line 4
    .line 5
    const/16 v2, 0x82

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x11

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/16 v6, 0x42

    .line 12
    .line 13
    iget-object v7, p0, Lua/n1;->b:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 14
    .line 15
    iget v8, p0, Lua/n1;->a:I

    .line 16
    .line 17
    sparse-switch v8, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    if-ne p1, v6, :cond_0

    .line 23
    .line 24
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 25
    .line 26
    const/4 p2, 0x2

    .line 27
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    .line 35
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 v3, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-ne p1, v4, :cond_1

    .line 43
    .line 44
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 52
    .line 53
    .line 54
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    if-ne p1, v2, :cond_2

    .line 66
    .line 67
    invoke-static {v1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    return v3

    .line 72
    :sswitch_0
    sget v8, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    if-ne p1, v6, :cond_3

    .line 78
    .line 79
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    const/4 v3, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    if-ne p1, v2, :cond_4

    .line 85
    .line 86
    invoke-static {v1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    if-ne p1, v0, :cond_5

    .line 91
    .line 92
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    if-ne p1, v4, :cond_7

    .line 104
    .line 105
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 106
    .line 107
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-lez p1, :cond_6

    .line 112
    .line 113
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    :goto_3
    return v3

    .line 124
    :sswitch_1
    sget v8, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    if-ne p1, v6, :cond_9

    .line 130
    .line 131
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_4
    const/4 v3, 0x1

    .line 135
    goto :goto_5

    .line 136
    :cond_9
    if-ne p1, v4, :cond_c

    .line 137
    .line 138
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 139
    .line 140
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-lez p1, :cond_a

    .line 145
    .line 146
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_a
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 153
    .line 154
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-lez p1, :cond_b

    .line 159
    .line 160
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_b
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_c
    if-ne p1, v2, :cond_e

    .line 171
    .line 172
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_d

    .line 179
    .line 180
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getItemCount()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-lez p1, :cond_8

    .line 187
    .line 188
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 189
    .line 190
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 191
    .line 192
    .line 193
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_d
    invoke-virtual {v7}, Lcom/yunpan/appmanage/ui/ActivityDownload;->B()V

    .line 200
    .line 201
    .line 202
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 203
    .line 204
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-lez p1, :cond_8

    .line 209
    .line 210
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_e
    if-ne p1, v0, :cond_f

    .line 217
    .line 218
    invoke-virtual {v7}, Lcom/yunpan/appmanage/ui/ActivityDownload;->B()V

    .line 219
    .line 220
    .line 221
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_f
    :goto_5
    return v3

    .line 228
    :sswitch_2
    sget v8, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 229
    .line 230
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    if-ne p1, v4, :cond_10

    .line 234
    .line 235
    invoke-static {v1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 236
    .line 237
    .line 238
    :goto_6
    const/4 v3, 0x1

    .line 239
    goto :goto_7

    .line 240
    :cond_10
    if-ne p1, v2, :cond_11

    .line 241
    .line 242
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 243
    .line 244
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_14

    .line 249
    .line 250
    invoke-static {v1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_11
    if-ne p1, v0, :cond_12

    .line 255
    .line 256
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_12
    if-ne p1, v6, :cond_14

    .line 263
    .line 264
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 265
    .line 266
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_13

    .line 271
    .line 272
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 273
    .line 274
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 275
    .line 276
    .line 277
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 280
    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_13
    iget-object p1, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 284
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_14
    :goto_7
    return v3

    .line 290
    nop

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLoadMore()V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/n1;->b:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sub-int/2addr v3, v2

    .line 20
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lba/r;

    .line 25
    .line 26
    iget-boolean v2, v1, Lba/r;->o:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lua/o1;

    .line 38
    .line 39
    invoke-direct {v2, v1, v3}, Lua/o1;-><init>(Lba/r;I)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lmc/c;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v3, v4, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Lha/h3;

    .line 63
    .line 64
    const/16 v4, 0xa

    .line 65
    .line 66
    invoke-direct {v3, v0, v4, v1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lec/b;->b(Lec/e;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lua/n1;->b:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget v3, p0, Lua/n1;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x3e8

    .line 18
    .line 19
    invoke-static {v0, p2}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ljava/lang/String;

    .line 29
    .line 30
    iget-object p3, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 46
    .line 47
    .line 48
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 49
    .line 50
    invoke-virtual {p2, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->D()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 68
    .line 69
    iget-object v1, p0, Lua/n1;->b:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :try_start_0
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lx9/u5;

    .line 81
    .line 82
    iget-object p1, p1, Lx9/u5;->c:Ljava/lang/String;

    .line 83
    .line 84
    const-string p2, "\u4e0b\u8f7d\u4e2d"

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    new-instance p1, Lha/z6;

    .line 93
    .line 94
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 95
    .line 96
    const-string v3, "\u662f\u5426\u505c\u6b62\u4e0b\u8f7d\uff1f\uff1f\uff1f"

    .line 97
    .line 98
    const-string v4, ""

    .line 99
    .line 100
    const-string v5, "\u786e\u5b9a"

    .line 101
    .line 102
    const-string v6, "\u53d6\u6d88"

    .line 103
    .line 104
    new-instance v7, Ld3/g;

    .line 105
    .line 106
    const/16 p2, 0xa

    .line 107
    .line 108
    invoke-direct {v7, p3, p2, v1}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v0, p1

    .line 112
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lha/a4;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    :catch_0
    :cond_0
    return-void

    .line 119
    :pswitch_2
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 120
    .line 121
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 126
    .line 127
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;->name:Ljava/lang/String;

    .line 128
    .line 129
    const-string p3, "\u6253\u5f00"

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-eqz p3, :cond_1

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->D()V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_1
    const-string p3, "\u63a8\u9001"

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    if-eqz p3, :cond_3

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->B()V

    .line 151
    .line 152
    .line 153
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 154
    .line 155
    iget-object p2, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_2

    .line 162
    .line 163
    const-string p1, "\u672a\u53d1\u73b0\u5176\u5b83\u8bbe\u5907"

    .line 164
    .line 165
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :cond_2
    iget-object p1, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_a

    .line 181
    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, Lcom/yunpan/appmanage/util/d;

    .line 187
    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v0, "http://"

    .line 191
    .line 192
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v3, p2, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v3, ":"

    .line 201
    .line 202
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v4, p2, Lcom/yunpan/appmanage/util/d;->c:I

    .line 206
    .line 207
    const-string v5, "/url"

    .line 208
    .line 209
    invoke-static {p3, v4, v5}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    new-instance v4, Ll9/b;

    .line 214
    .line 215
    invoke-direct {v4, p3}, Ll9/b;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object p3, v4, Lm9/e;->i:Lk9/a;

    .line 219
    .line 220
    const-string v5, "User-Agent"

    .line 221
    .line 222
    const-string v6, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 223
    .line 224
    invoke-virtual {p3, v5, v6}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p2, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget v0, p2, Lcom/yunpan/appmanage/util/d;->c:I

    .line 241
    .line 242
    const-string v3, "/url.html"

    .line 243
    .line 244
    invoke-static {v5, v0, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v3, "Referer"

    .line 249
    .line 250
    invoke-virtual {p3, v3, v0}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance p3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v0, "shareUrl="

    .line 256
    .line 257
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p3

    .line 281
    const-string v0, "application/x-www-form-urlencoded"

    .line 282
    .line 283
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iput-object p3, v4, Lm9/a;->n:Ljava/lang/String;

    .line 288
    .line 289
    iput-object v0, v4, Lm9/a;->m:Lokhttp3/MediaType;

    .line 290
    .line 291
    new-instance p3, Lua/r1;

    .line 292
    .line 293
    invoke-direct {p3, v2, p2}, Lua/r1;-><init>(ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, p3}, Lm9/e;->b(Lnh/b;)V

    .line 297
    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_3
    const-string p3, "\u5386\u53f2"

    .line 301
    .line 302
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result p3

    .line 306
    if-eqz p3, :cond_5

    .line 307
    .line 308
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 311
    .line 312
    .line 313
    move-result p3

    .line 314
    if-nez p3, :cond_4

    .line 315
    .line 316
    const/16 v2, 0x8

    .line 317
    .line 318
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 322
    .line 323
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->O:Landroid/widget/TextView;

    .line 327
    .line 328
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_5
    const-string p3, "\u8bf4\u660e"

    .line 333
    .line 334
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 335
    .line 336
    .line 337
    move-result p3

    .line 338
    if-eqz p3, :cond_7

    .line 339
    .line 340
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->O:Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 343
    .line 344
    .line 345
    move-result p3

    .line 346
    if-nez p3, :cond_6

    .line 347
    .line 348
    const/16 v2, 0x8

    .line 349
    .line 350
    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 354
    .line 355
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 359
    .line 360
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_7
    const-string p3, "\u626b\u7801"

    .line 365
    .line 366
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result p3

    .line 370
    if-eqz p3, :cond_9

    .line 371
    .line 372
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 373
    .line 374
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    if-nez p2, :cond_8

    .line 379
    .line 380
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 381
    .line 382
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_8
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->F()V

    .line 387
    .line 388
    .line 389
    :goto_1
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->O:Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 395
    .line 396
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    .line 398
    .line 399
    goto :goto_2

    .line 400
    :cond_9
    const-string p1, "\u8fd4\u56de"

    .line 401
    .line 402
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    if-eqz p1, :cond_a

    .line 407
    .line 408
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->C()V

    .line 409
    .line 410
    .line 411
    :cond_a
    :goto_2
    return-void

    .line 412
    :pswitch_3
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 413
    .line 414
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    sub-int/2addr p1, v0

    .line 419
    if-ne p3, p1, :cond_b

    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_b
    invoke-virtual {v1, p3}, Lcom/yunpan/appmanage/ui/ActivityDownload;->A(I)V

    .line 423
    .line 424
    .line 425
    :goto_3
    return-void

    .line 426
    :pswitch_4
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 427
    .line 428
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->B()V

    .line 429
    .line 430
    .line 431
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 432
    .line 433
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    check-cast p1, Lx9/b6;

    .line 438
    .line 439
    iget-object p2, p1, Lx9/b6;->a:Lba/i;

    .line 440
    .line 441
    if-eqz p2, :cond_c

    .line 442
    .line 443
    iget-object p3, p2, Lba/i;->a:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast p3, Ljava/lang/String;

    .line 446
    .line 447
    iget-object p2, p2, Lba/i;->f:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast p2, Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result p2

    .line 455
    if-nez p2, :cond_1f

    .line 456
    .line 457
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_6

    .line 461
    .line 462
    :cond_c
    iget-object p2, p1, Lx9/b6;->b:Landroidx/emoji2/text/q;

    .line 463
    .line 464
    if-eqz p2, :cond_f

    .line 465
    .line 466
    iget-object p3, p2, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast p3, Ljava/lang/String;

    .line 469
    .line 470
    iget p2, p2, Landroidx/emoji2/text/q;->b:I

    .line 471
    .line 472
    if-eqz p2, :cond_d

    .line 473
    .line 474
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_6

    .line 478
    .line 479
    :cond_d
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->Y:Lx9/n5;

    .line 480
    .line 481
    if-eqz p2, :cond_e

    .line 482
    .line 483
    iget-object p2, p2, Lx9/n5;->k:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 486
    .line 487
    .line 488
    move-result p2

    .line 489
    if-eqz p2, :cond_1f

    .line 490
    .line 491
    :cond_e
    new-instance p2, La2/u0;

    .line 492
    .line 493
    const/16 v0, 0xf

    .line 494
    .line 495
    invoke-direct {p2, v0}, La2/u0;-><init>(I)V

    .line 496
    .line 497
    .line 498
    new-instance v0, Lmc/c;

    .line 499
    .line 500
    invoke-direct {v0, v2, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 504
    .line 505
    invoke-virtual {v0, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {p2, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 514
    .line 515
    .line 516
    move-result-object p2

    .line 517
    new-instance v0, Lua/t1;

    .line 518
    .line 519
    invoke-direct {v0, v1, p3, p1, v2}, Lua/t1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;Ljava/lang/String;Lx9/b6;I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2, v0}, Lec/b;->b(Lec/e;)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_6

    .line 526
    .line 527
    :cond_f
    iget-object p2, p1, Lx9/b6;->c:Lba/j;

    .line 528
    .line 529
    if-eqz p2, :cond_11

    .line 530
    .line 531
    iget p3, p2, Lba/j;->e:I

    .line 532
    .line 533
    if-eq p3, v0, :cond_10

    .line 534
    .line 535
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 536
    .line 537
    .line 538
    goto/16 :goto_6

    .line 539
    .line 540
    :cond_10
    iget-object p3, p2, Lba/j;->b:Ljava/lang/String;

    .line 541
    .line 542
    iget-wide v2, p2, Lba/j;->c:J

    .line 543
    .line 544
    long-to-double v2, v2

    .line 545
    const-wide v4, 0x4198f9999999999aL    # 1.047527424E8

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    cmpl-double p2, v2, v4

    .line 551
    .line 552
    if-lez p2, :cond_1f

    .line 553
    .line 554
    const-string p1, "\u6682\u4e0d\u652f\u6301\u4f18\u4eab\u7248\u7684\u5927\u6587\u4ef6\u4e0b\u8f7d\uff0c(\u56e0\u4e3a\u9700\u8981\u4f18\u4eab\u7248\u8981\u4f1a\u5458\u624d\u80fd\u4e0b)"

    .line 555
    .line 556
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_6

    .line 560
    .line 561
    :cond_11
    iget-object p2, p1, Lx9/b6;->e:Lba/s;

    .line 562
    .line 563
    if-eqz p2, :cond_13

    .line 564
    .line 565
    iget p3, p2, Lba/s;->f:I

    .line 566
    .line 567
    const/4 v0, 0x2

    .line 568
    if-ne p3, v0, :cond_12

    .line 569
    .line 570
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_6

    .line 574
    .line 575
    :cond_12
    iget-object p2, p2, Lba/s;->i:Ljava/io/Serializable;

    .line 576
    .line 577
    move-object p3, p2

    .line 578
    check-cast p3, Ljava/lang/String;

    .line 579
    .line 580
    goto/16 :goto_5

    .line 581
    .line 582
    :cond_13
    iget-object p2, p1, Lx9/b6;->j:Lba/g;

    .line 583
    .line 584
    if-eqz p2, :cond_17

    .line 585
    .line 586
    iget-boolean p3, p2, Lba/g;->d:Z

    .line 587
    .line 588
    if-eqz p3, :cond_14

    .line 589
    .line 590
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_6

    .line 594
    .line 595
    :cond_14
    iget-object p3, v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->Z:Lx9/n5;

    .line 596
    .line 597
    iget-object p2, p2, Lba/g;->b:Ljava/lang/String;

    .line 598
    .line 599
    if-eqz p3, :cond_16

    .line 600
    .line 601
    iget-object p3, p3, Lx9/n5;->r:Ljava/lang/String;

    .line 602
    .line 603
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 604
    .line 605
    .line 606
    move-result p3

    .line 607
    if-eqz p3, :cond_15

    .line 608
    .line 609
    goto :goto_4

    .line 610
    :cond_15
    move-object p3, p2

    .line 611
    goto :goto_5

    .line 612
    :cond_16
    :goto_4
    new-instance p3, La2/u0;

    .line 613
    .line 614
    const/16 v3, 0xe

    .line 615
    .line 616
    invoke-direct {p3, v3}, La2/u0;-><init>(I)V

    .line 617
    .line 618
    .line 619
    new-instance v3, Lmc/c;

    .line 620
    .line 621
    invoke-direct {v3, v2, p3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    sget-object p3, Lrc/f;->b:Lec/j;

    .line 625
    .line 626
    invoke-virtual {v3, p3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 627
    .line 628
    .line 629
    move-result-object p3

    .line 630
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-virtual {p3, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 635
    .line 636
    .line 637
    move-result-object p3

    .line 638
    new-instance v2, Lua/t1;

    .line 639
    .line 640
    invoke-direct {v2, v1, p2, p1, v0}, Lua/t1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;Ljava/lang/String;Lx9/b6;I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p3, v2}, Lec/b;->b(Lec/e;)V

    .line 644
    .line 645
    .line 646
    goto :goto_6

    .line 647
    :cond_17
    iget-object p2, p1, Lx9/b6;->f:Lba/l;

    .line 648
    .line 649
    if-eqz p2, :cond_19

    .line 650
    .line 651
    iget-wide v2, p2, Lba/l;->b:J

    .line 652
    .line 653
    const-wide/16 v4, -0x1

    .line 654
    .line 655
    cmp-long p3, v2, v4

    .line 656
    .line 657
    if-nez p3, :cond_18

    .line 658
    .line 659
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 660
    .line 661
    .line 662
    goto :goto_6

    .line 663
    :cond_18
    iget-object p3, p2, Lba/l;->a:Ljava/lang/String;

    .line 664
    .line 665
    goto :goto_5

    .line 666
    :cond_19
    iget-object p2, p1, Lx9/b6;->i:Lba/n;

    .line 667
    .line 668
    if-eqz p2, :cond_1b

    .line 669
    .line 670
    iget-boolean p3, p2, Lba/n;->a:Z

    .line 671
    .line 672
    if-eqz p3, :cond_1a

    .line 673
    .line 674
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 675
    .line 676
    .line 677
    goto :goto_6

    .line 678
    :cond_1a
    iget-object p2, p2, Lba/n;->d:Ljava/lang/Object;

    .line 679
    .line 680
    move-object p3, p2

    .line 681
    check-cast p3, Ljava/lang/String;

    .line 682
    .line 683
    goto :goto_5

    .line 684
    :cond_1b
    iget-object p2, p1, Lx9/b6;->g:Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 685
    .line 686
    if-eqz p2, :cond_1c

    .line 687
    .line 688
    iget-object p3, p2, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 689
    .line 690
    goto :goto_5

    .line 691
    :cond_1c
    iget-object p2, p1, Lx9/b6;->h:Lba/k;

    .line 692
    .line 693
    if-eqz p2, :cond_1e

    .line 694
    .line 695
    iget-boolean p3, p2, Lba/k;->d:Z

    .line 696
    .line 697
    if-eqz p3, :cond_1d

    .line 698
    .line 699
    invoke-virtual {v1, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->G(Lx9/b6;)V

    .line 700
    .line 701
    .line 702
    goto :goto_6

    .line 703
    :cond_1d
    iget-object p3, p2, Lba/k;->a:Ljava/lang/String;

    .line 704
    .line 705
    goto :goto_5

    .line 706
    :cond_1e
    const-string p3, ""

    .line 707
    .line 708
    :cond_1f
    :goto_5
    invoke-virtual {v1, p3, p1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->E(Ljava/lang/String;Lx9/b6;)V

    .line 709
    .line 710
    .line 711
    :goto_6
    return-void

    .line 712
    nop

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
