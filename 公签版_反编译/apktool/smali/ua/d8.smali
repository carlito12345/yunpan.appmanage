.class public final synthetic Lua/d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lc6/f;
.implements Lha/gb;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/q8;


# direct methods
.method public synthetic constructor <init>(Lua/q8;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/d8;->a:I

    iput-object p1, p0, Lua/d8;->b:Lua/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lua/d8;->b:Lua/q8;

    .line 2
    .line 3
    iget-object v0, p1, Lua/q8;->l:Lx9/g0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lx9/w3;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Lua/q8;->v(Lx9/w3;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/d8;->b:Lua/q8;

    .line 2
    .line 3
    iget-object v1, v0, Lua/q8;->l:Lx9/g0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lx9/w3;

    .line 11
    .line 12
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lua/q8;->l:Lx9/g0;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-static {v1, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lx9/w3;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lua/q8;->v(Lx9/w3;Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public c(ILandroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lua/d8;->b:Lua/q8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-static {v1, p2}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lua/q8;->D(I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 3

    .line 1
    iget v0, p0, Lua/d8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object v0, p0, Lua/d8;->b:Lua/q8;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x42

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x14d

    .line 17
    .line 18
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x21

    .line 23
    .line 24
    if-ne p1, v1, :cond_2

    .line 25
    .line 26
    iget-boolean p1, v0, Lua/q8;->p:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, v0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, v0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v0, 0x11

    .line 43
    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    const/16 p1, 0x120

    .line 47
    .line 48
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/16 v0, 0x82

    .line 53
    .line 54
    if-ne p1, v0, :cond_4

    .line 55
    .line 56
    const/16 p1, 0x121

    .line 57
    .line 58
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/4 v2, 0x0

    .line 63
    :goto_0
    return v2

    .line 64
    :pswitch_1
    iget-object v0, p0, Lua/d8;->b:Lua/q8;

    .line 65
    .line 66
    const/16 v1, 0x11

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    if-ne p1, v1, :cond_5

    .line 70
    .line 71
    iget-object p1, v0, Lua/q8;->w:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    const/16 v1, 0x21

    .line 78
    .line 79
    if-ne p1, v1, :cond_6

    .line 80
    .line 81
    iget-object p1, v0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    const/16 v1, 0x82

    .line 88
    .line 89
    if-ne p1, v1, :cond_8

    .line 90
    .line 91
    iget-object p1, v0, Lua/q8;->n:Lx9/n;

    .line 92
    .line 93
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-lez p1, :cond_7

    .line 98
    .line 99
    iget-object p1, v0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_7
    const/16 p1, 0x14d

    .line 106
    .line 107
    invoke-static {p1, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    const/16 v1, 0x42

    .line 112
    .line 113
    if-ne p1, v1, :cond_a

    .line 114
    .line 115
    iget-object p1, v0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_9

    .line 122
    .line 123
    iget-object p1, v0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_9
    const/16 p1, 0x120

    .line 130
    .line 131
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    const/4 v2, 0x0

    .line 139
    :goto_1
    return v2

    .line 140
    :pswitch_2
    iget-object v0, p0, Lua/d8;->b:Lua/q8;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x11

    .line 146
    .line 147
    const/4 v2, 0x1

    .line 148
    if-eq p1, v1, :cond_f

    .line 149
    .line 150
    const/16 v1, 0x42

    .line 151
    .line 152
    if-ne p1, v1, :cond_b

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_b
    const/16 p2, 0x21

    .line 156
    .line 157
    if-ne p1, p2, :cond_c

    .line 158
    .line 159
    iget-object p1, v0, Lua/q8;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectedPosition(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string p2, "up"

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_c
    const/16 p2, 0x82

    .line 175
    .line 176
    if-ne p1, p2, :cond_e

    .line 177
    .line 178
    iget-boolean p1, v0, Lua/q8;->p:Z

    .line 179
    .line 180
    if-eqz p1, :cond_d

    .line 181
    .line 182
    iget-object p1, v0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_d
    iget-object p1, v0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_e
    const/4 v2, 0x0

    .line 195
    goto :goto_3

    .line 196
    :cond_f
    :goto_2
    const/16 p1, 0x14d

    .line 197
    .line 198
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 199
    .line 200
    .line 201
    :goto_3
    return v2

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    const-string v4, "\u6536\u85cf\u680f"

    .line 9
    .line 10
    const-string v5, "/amapauto"

    .line 11
    .line 12
    const-string v6, "/vendor"

    .line 13
    .line 14
    const-string v7, "/data"

    .line 15
    .line 16
    const-string v8, "/system"

    .line 17
    .line 18
    const-string v9, "/"

    .line 19
    .line 20
    iget-object v10, v0, Lua/d8;->b:Lua/q8;

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    const/4 v12, 0x1

    .line 24
    iget v13, v0, Lua/d8;->a:I

    .line 25
    .line 26
    packed-switch v13, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lx9/w3;

    .line 36
    .line 37
    iget-boolean v3, v10, Lua/q8;->p:Z

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 42
    .line 43
    xor-int/2addr v3, v12

    .line 44
    iput-boolean v3, v2, Lx9/w3;->i:Z

    .line 45
    .line 46
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 47
    .line 48
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-boolean v3, v2, Lx9/w3;->c:Z

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_1

    .line 87
    .line 88
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    :cond_1
    invoke-virtual {v10, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v1, v10, Lua/q8;->l:Lx9/g0;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v10, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 107
    .line 108
    .line 109
    iget-object v1, v10, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 110
    .line 111
    iget-object v3, v10, Lua/q8;->l:Lx9/g0;

    .line 112
    .line 113
    invoke-static {v3, v12, v1}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10, v2, v11}, Lua/q8;->v(Lx9/w3;Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v10, v1}, Lua/q8;->D(I)V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void

    .line 124
    :pswitch_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lx9/w3;

    .line 140
    .line 141
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    const-string v3, "\u641c\u7d22\u7ed3\u679c"

    .line 148
    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Lx9/w3;

    .line 158
    .line 159
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    invoke-virtual {v10, v11}, Lua/q8;->p(Z)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_4
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 173
    .line 174
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Lx9/w3;

    .line 179
    .line 180
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_5

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_5
    const-string v1, "\u6b64\u76ee\u5f55\u662f\u4e34\u65f6\u76ee\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb\u5237\u65b0"

    .line 190
    .line 191
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_6
    :goto_1
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 197
    .line 198
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    sub-int/2addr v2, v12

    .line 203
    if-ne v1, v2, :cond_7

    .line 204
    .line 205
    if-nez v1, :cond_c

    .line 206
    .line 207
    :cond_7
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 208
    .line 209
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    add-int/lit8 v4, v1, 0x1

    .line 214
    .line 215
    sub-int v4, v2, v4

    .line 216
    .line 217
    const/4 v13, 0x1

    .line 218
    :goto_2
    if-lt v4, v13, :cond_8

    .line 219
    .line 220
    iget-object v14, v10, Lua/q8;->l:Lx9/g0;

    .line 221
    .line 222
    sub-int v15, v2, v13

    .line 223
    .line 224
    invoke-virtual {v14, v15}, Lc6/g;->C(I)V

    .line 225
    .line 226
    .line 227
    add-int/2addr v13, v12

    .line 228
    goto :goto_2

    .line 229
    :cond_8
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Lx9/w3;

    .line 236
    .line 237
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_9

    .line 244
    .line 245
    iget-object v1, v10, Lua/q8;->n:Lx9/n;

    .line 246
    .line 247
    iget-object v2, v10, Lua/q8;->O:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_9
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 254
    .line 255
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, Lx9/w3;

    .line 260
    .line 261
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-nez v2, :cond_a

    .line 268
    .line 269
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 270
    .line 271
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Lx9/w3;

    .line 276
    .line 277
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_a

    .line 284
    .line 285
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 286
    .line 287
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Lx9/w3;

    .line 292
    .line 293
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-nez v2, :cond_a

    .line 300
    .line 301
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 302
    .line 303
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Lx9/w3;

    .line 308
    .line 309
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_a

    .line 316
    .line 317
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 318
    .line 319
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Lx9/w3;

    .line 324
    .line 325
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-eqz v2, :cond_b

    .line 332
    .line 333
    :cond_a
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 334
    .line 335
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v2, Lx9/w3;

    .line 340
    .line 341
    invoke-virtual {v10, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 342
    .line 343
    .line 344
    :cond_b
    iget-object v2, v10, Lua/q8;->l:Lx9/g0;

    .line 345
    .line 346
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Lx9/w3;

    .line 351
    .line 352
    invoke-virtual {v10, v1, v11}, Lua/q8;->v(Lx9/w3;Z)V

    .line 353
    .line 354
    .line 355
    :cond_c
    :goto_3
    return-void

    .line 356
    :pswitch_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 360
    .line 361
    .line 362
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 363
    .line 364
    .line 365
    iget-object v2, v10, Lua/q8;->i:Lx9/n4;

    .line 366
    .line 367
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Lx9/w3;

    .line 372
    .line 373
    iget-object v5, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 374
    .line 375
    const-string v6, "\u62d4\u51faU\u76d8"

    .line 376
    .line 377
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-eqz v5, :cond_d

    .line 382
    .line 383
    new-instance v1, Lha/z6;

    .line 384
    .line 385
    iget-object v14, v10, Lda/h;->f:Landroid/app/Activity;

    .line 386
    .line 387
    iget-object v15, v10, Lda/h;->e:Landroid/content/Context;

    .line 388
    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    const-string v3, "\u5efa\u8bae\u5148\u5173\u95ed"

    .line 392
    .line 393
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iget-object v3, v10, Lda/h;->e:Landroid/content/Context;

    .line 397
    .line 398
    const v4, 0x7f13002f

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v3, "\u540e\u518d\u62d4\u51faU\u76d8"

    .line 409
    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v16

    .line 417
    new-instance v2, Ls9/a;

    .line 418
    .line 419
    const/16 v3, 0x10

    .line 420
    .line 421
    invoke-direct {v2, v3, v11}, Ls9/a;-><init>(IZ)V

    .line 422
    .line 423
    .line 424
    const-string v17, ""

    .line 425
    .line 426
    const-string v18, "\u5173\u95ed\u7ba1\u5bb6"

    .line 427
    .line 428
    const-string v19, "\u53d6\u6d88"

    .line 429
    .line 430
    move-object v13, v1

    .line 431
    move-object/from16 v20, v2

    .line 432
    .line 433
    invoke-direct/range {v13 .. v20}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_5

    .line 440
    .line 441
    :cond_d
    iget-object v5, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 442
    .line 443
    const-string v6, "\u626b\u63cf"

    .line 444
    .line 445
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-eqz v5, :cond_e

    .line 450
    .line 451
    new-instance v2, Lha/o1;

    .line 452
    .line 453
    iget-object v3, v10, Lda/h;->f:Landroid/app/Activity;

    .line 454
    .line 455
    iget-object v4, v10, Lda/h;->e:Landroid/content/Context;

    .line 456
    .line 457
    new-instance v5, Lua/c8;

    .line 458
    .line 459
    invoke-direct {v5, v10, v1}, Lua/c8;-><init>(Lua/q8;I)V

    .line 460
    .line 461
    .line 462
    invoke-direct {v2, v3, v4, v5}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/c8;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_5

    .line 469
    .line 470
    :cond_e
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 471
    .line 472
    const-string v5, "\u6e05\u7406"

    .line 473
    .line 474
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    if-eqz v1, :cond_f

    .line 479
    .line 480
    :try_start_0
    iget-object v1, v10, Lda/h;->f:Landroid/app/Activity;

    .line 481
    .line 482
    check-cast v1, Lda/g;

    .line 483
    .line 484
    const-class v2, Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Lda/g;->w(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    .line 488
    .line 489
    goto/16 :goto_5

    .line 490
    .line 491
    :cond_f
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 492
    .line 493
    const-string v5, "\u8bbe\u7f6e"

    .line 494
    .line 495
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-eqz v1, :cond_10

    .line 500
    .line 501
    new-instance v1, Lha/e6;

    .line 502
    .line 503
    iget-object v2, v10, Lda/h;->f:Landroid/app/Activity;

    .line 504
    .line 505
    iget-object v3, v10, Lda/h;->e:Landroid/content/Context;

    .line 506
    .line 507
    new-instance v4, Lua/d8;

    .line 508
    .line 509
    const/16 v5, 0xb

    .line 510
    .line 511
    invoke-direct {v4, v10, v5}, Lua/d8;-><init>(Lua/q8;I)V

    .line 512
    .line 513
    .line 514
    invoke-direct {v1, v2, v3, v4}, Lha/e6;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/d8;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_5

    .line 521
    .line 522
    :cond_10
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 523
    .line 524
    const-string v5, "\u641c\u7d22"

    .line 525
    .line 526
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_12

    .line 531
    .line 532
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 533
    .line 534
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_11

    .line 543
    .line 544
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 545
    .line 546
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 547
    .line 548
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 549
    .line 550
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-eqz v1, :cond_11

    .line 555
    .line 556
    const-string v1, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8(SD\u5361)\uff0c\u4e5f\u6ca1\u6709U\u76d8\uff0c\u8ba9\u6211\u641c\u5565\uff1f"

    .line 557
    .line 558
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_5

    .line 562
    .line 563
    :cond_11
    new-instance v1, Lha/rb;

    .line 564
    .line 565
    iget-object v2, v10, Lda/h;->f:Landroid/app/Activity;

    .line 566
    .line 567
    iget-object v3, v10, Lda/h;->e:Landroid/content/Context;

    .line 568
    .line 569
    new-instance v4, Lua/d8;

    .line 570
    .line 571
    const/16 v5, 0xc

    .line 572
    .line 573
    invoke-direct {v4, v10, v5}, Lua/d8;-><init>(Lua/q8;I)V

    .line 574
    .line 575
    .line 576
    invoke-direct {v1, v2, v3, v4}, Lha/rb;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/d8;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_5

    .line 583
    .line 584
    :cond_12
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 585
    .line 586
    const-string v5, "\u4e92\u4f20"

    .line 587
    .line 588
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    const-string v5, "\u5185\u90e8\u5b58\u50a8"

    .line 593
    .line 594
    const-string v6, ""

    .line 595
    .line 596
    if-eqz v1, :cond_17

    .line 597
    .line 598
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 599
    .line 600
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 601
    .line 602
    iput-object v6, v1, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 603
    .line 604
    iput-object v6, v1, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 605
    .line 606
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 607
    .line 608
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    if-nez v3, :cond_13

    .line 617
    .line 618
    iput-object v5, v1, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    iput-object v2, v1, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 625
    .line 626
    goto :goto_4

    .line 627
    :cond_13
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 628
    .line 629
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    if-nez v2, :cond_15

    .line 634
    .line 635
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    if-eqz v2, :cond_15

    .line 646
    .line 647
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    check-cast v2, Ljava/lang/String;

    .line 652
    .line 653
    new-instance v3, Ljava/io/File;

    .line 654
    .line 655
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_14

    .line 663
    .line 664
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->c(Ljava/io/File;)Z

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    if-eqz v2, :cond_14

    .line 669
    .line 670
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 671
    .line 672
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    iput-object v2, v1, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    iput-object v2, v1, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 683
    .line 684
    :cond_15
    :goto_4
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 685
    .line 686
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 687
    .line 688
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_16

    .line 693
    .line 694
    const-string v1, "\u6b64\u8bbe\u5907\u65e2\u6ca1\u6709SD\u5361\uff0c\u4e5f\u6ca1\u6709\u63d2\u5165U\u76d8\uff0c\u4e0d\u80fd\u4f7f\u7528\u6587\u4ef6\u4e92\u4f20"

    .line 695
    .line 696
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_5

    .line 700
    .line 701
    :cond_16
    new-instance v1, Lha/jc;

    .line 702
    .line 703
    iget-object v2, v10, Lda/h;->f:Landroid/app/Activity;

    .line 704
    .line 705
    iget-object v3, v10, Lda/h;->e:Landroid/content/Context;

    .line 706
    .line 707
    invoke-direct {v1, v2, v3}, Lha/jc;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_5

    .line 714
    .line 715
    :cond_17
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 716
    .line 717
    const-string v7, "\u7a7a\u76ee\u5f55"

    .line 718
    .line 719
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    if-eqz v1, :cond_18

    .line 724
    .line 725
    new-instance v1, Lha/z6;

    .line 726
    .line 727
    iget-object v14, v10, Lda/h;->f:Landroid/app/Activity;

    .line 728
    .line 729
    iget-object v15, v10, Lda/h;->e:Landroid/content/Context;

    .line 730
    .line 731
    new-instance v2, Lua/h8;

    .line 732
    .line 733
    invoke-direct {v2, v10}, Lua/h8;-><init>(Lua/q8;)V

    .line 734
    .line 735
    .line 736
    const-string v18, "\u786e\u5b9a"

    .line 737
    .line 738
    const-string v19, "\u53d6\u6d88"

    .line 739
    .line 740
    const-string v16, "\u662f\u5426\u8981\u6e05\u7406\u5185\u90e8\u5b58\u50a8\u4e2d\u7684\u6240\u6709\u7a7a\u6587\u4ef6\u5939\uff1f"

    .line 741
    .line 742
    const-string v17, ""

    .line 743
    .line 744
    move-object v13, v1

    .line 745
    move-object/from16 v20, v2

    .line 746
    .line 747
    invoke-direct/range {v13 .. v20}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_5

    .line 754
    .line 755
    :cond_18
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    if-eqz v1, :cond_19

    .line 762
    .line 763
    invoke-virtual {v10, v11}, Lua/q8;->p(Z)V

    .line 764
    .line 765
    .line 766
    goto/16 :goto_5

    .line 767
    .line 768
    :cond_19
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 769
    .line 770
    const-string v4, "Download"

    .line 771
    .line 772
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    if-eqz v1, :cond_1b

    .line 777
    .line 778
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 779
    .line 780
    iget-object v3, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 781
    .line 782
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    if-nez v1, :cond_1a

    .line 790
    .line 791
    new-instance v1, Ljava/io/File;

    .line 792
    .line 793
    iget-object v3, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 794
    .line 795
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 799
    .line 800
    .line 801
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    iget-object v3, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 806
    .line 807
    invoke-virtual {v1, v3}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    .line 809
    .line 810
    :catch_0
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    .line 811
    .line 812
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .line 814
    .line 815
    new-instance v3, Lx9/w3;

    .line 816
    .line 817
    sget-object v4, Lfa/g0;->a:Lfa/h0;

    .line 818
    .line 819
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v4

    .line 823
    invoke-direct {v3, v5, v4, v12}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    iget-object v3, v10, Lua/q8;->l:Lx9/g0;

    .line 833
    .line 834
    invoke-virtual {v3, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v10, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v10, v2, v11}, Lua/q8;->v(Lx9/w3;Z)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_5

    .line 844
    .line 845
    :cond_1b
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 846
    .line 847
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    if-eqz v1, :cond_1c

    .line 852
    .line 853
    invoke-virtual {v10, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 854
    .line 855
    .line 856
    new-instance v1, Ljava/util/ArrayList;

    .line 857
    .line 858
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    iget-object v3, v10, Lua/q8;->l:Lx9/g0;

    .line 865
    .line 866
    invoke-virtual {v3, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v10, v2, v11}, Lua/q8;->v(Lx9/w3;Z)V

    .line 870
    .line 871
    .line 872
    goto/16 :goto_5

    .line 873
    .line 874
    :cond_1c
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 875
    .line 876
    const-string v4, "\u5730\u56fe\u5206\u533a"

    .line 877
    .line 878
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    if-eqz v1, :cond_1d

    .line 883
    .line 884
    invoke-virtual {v10, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 885
    .line 886
    .line 887
    new-instance v1, Ljava/util/ArrayList;

    .line 888
    .line 889
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    iget-object v3, v10, Lua/q8;->l:Lx9/g0;

    .line 896
    .line 897
    invoke-virtual {v3, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v10, v2, v11}, Lua/q8;->v(Lx9/w3;Z)V

    .line 901
    .line 902
    .line 903
    goto/16 :goto_5

    .line 904
    .line 905
    :cond_1d
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 906
    .line 907
    const-string v4, "\u6839"

    .line 908
    .line 909
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    if-eqz v1, :cond_20

    .line 914
    .line 915
    iget-boolean v1, v10, Lua/q8;->V:Z

    .line 916
    .line 917
    if-eqz v1, :cond_1f

    .line 918
    .line 919
    new-instance v1, Lha/z6;

    .line 920
    .line 921
    iget-object v13, v10, Lda/h;->f:Landroid/app/Activity;

    .line 922
    .line 923
    iget-object v14, v10, Lda/h;->e:Landroid/content/Context;

    .line 924
    .line 925
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 926
    .line 927
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 928
    .line 929
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 930
    .line 931
    if-eqz v3, :cond_1e

    .line 932
    .line 933
    const-string v6, "\u5982\u679c\u5bf9\u8fd9\u65b9\u9762\u4e00\u7a8d\u4e0d\u901a\uff0c\u8bf7\u4e0d\u8981\u8fdb\u5165\uff0c\u6bd5\u7adf\u60a8\u7684\u6743\u9650\u9ad8\n\u4e0d\u61c2\u8bf7\u52ff\u6539\u52a8\u91cc\u9762\u7684\u6587\u4ef6\uff0c\u540e\u679c\u81ea\u8d1f"

    .line 934
    .line 935
    :cond_1e
    move-object/from16 v16, v6

    .line 936
    .line 937
    new-instance v3, Lkf/d;

    .line 938
    .line 939
    const/16 v4, 0x1d

    .line 940
    .line 941
    invoke-direct {v3, v4, v10, v2, v11}, Lkf/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 942
    .line 943
    .line 944
    const-string v15, "\u8fd9\u91cc\u662f\u7cfb\u7edf\u91cd\u8981\u76ee\u5f55\uff0c\u60a8\u786e\u5b9a\u8981\u8fdb\u5165\u5417\uff1f\n\u5982\u679c\u60a8\u60f3\u4fdd\u5b58\u6587\u4ef6\uff0c\u8bf7\u5728\u5185\u90e8\u5b58\u50a8\u4e2d\u4fdd\u5b58\uff0c\u90a3\u624d\u662fSD\u5361\u6839\u76ee\u5f55\n"

    .line 945
    .line 946
    const-string v17, "\u6211\u662f\u9ad8\u624b"

    .line 947
    .line 948
    const-string v18, "\u53d6\u6d88\u8bbf\u95ee"

    .line 949
    .line 950
    move-object v12, v1

    .line 951
    move-object/from16 v19, v3

    .line 952
    .line 953
    invoke-direct/range {v12 .. v19}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_5

    .line 960
    .line 961
    :cond_1f
    invoke-virtual {v10, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 962
    .line 963
    .line 964
    new-instance v1, Ljava/util/ArrayList;

    .line 965
    .line 966
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    iget-object v3, v10, Lua/q8;->l:Lx9/g0;

    .line 973
    .line 974
    invoke-virtual {v3, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v10, v2, v11}, Lua/q8;->v(Lx9/w3;Z)V

    .line 978
    .line 979
    .line 980
    goto :goto_5

    .line 981
    :cond_20
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 982
    .line 983
    const-string v4, "U\u76d8"

    .line 984
    .line 985
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 986
    .line 987
    .line 988
    move-result v1

    .line 989
    if-eqz v1, :cond_22

    .line 990
    .line 991
    iget-object v1, v2, Lx9/w3;->n:Lv3/f;

    .line 992
    .line 993
    if-nez v1, :cond_21

    .line 994
    .line 995
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 996
    .line 997
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    if-nez v1, :cond_21

    .line 1002
    .line 1003
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1004
    .line 1005
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1006
    .line 1007
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 1008
    .line 1009
    if-eqz v1, :cond_21

    .line 1010
    .line 1011
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 1012
    .line 1013
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    const-string v5, "umount "

    .line 1016
    .line 1017
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    iget-object v5, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 1021
    .line 1022
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v4

    .line 1029
    const/4 v5, 0x0

    .line 1030
    invoke-virtual {v1, v4, v5}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 1031
    .line 1032
    .line 1033
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    const-string v6, "mount -o rw,nosuid,nodev,noexec,noatime,fsuid=1023,fsgid=1023,gid=9997,mask=7 -t sdcardfs /mnt/media_rw/"

    .line 1036
    .line 1037
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v6, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 1041
    .line 1042
    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    const-string v3, " "

    .line 1050
    .line 1051
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    iget-object v3, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 1055
    .line 1056
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    invoke-virtual {v1, v3, v5}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_21
    invoke-virtual {v10, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 1067
    .line 1068
    .line 1069
    new-instance v1, Ljava/util/ArrayList;

    .line 1070
    .line 1071
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    .line 1076
    .line 1077
    iget-object v3, v10, Lua/q8;->l:Lx9/g0;

    .line 1078
    .line 1079
    invoke-virtual {v3, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v10, v2, v11}, Lua/q8;->v(Lx9/w3;Z)V

    .line 1083
    .line 1084
    .line 1085
    :catch_1
    :cond_22
    :goto_5
    return-void

    .line 1086
    :pswitch_3
    iget-object v4, v10, Lua/q8;->j:Lx9/i3;

    .line 1087
    .line 1088
    invoke-virtual {v4, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    check-cast v1, Lx9/w3;

    .line 1093
    .line 1094
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1095
    .line 1096
    const-string v5, "\u9000\u51fa"

    .line 1097
    .line 1098
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v4

    .line 1102
    if-eqz v4, :cond_23

    .line 1103
    .line 1104
    invoke-virtual {v10}, Lua/q8;->y()V

    .line 1105
    .line 1106
    .line 1107
    goto/16 :goto_10

    .line 1108
    .line 1109
    :cond_23
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1110
    .line 1111
    const-string v5, "\u5168\u9009"

    .line 1112
    .line 1113
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v4

    .line 1117
    if-eqz v4, :cond_25

    .line 1118
    .line 1119
    :goto_6
    iget-object v1, v10, Lua/q8;->n:Lx9/n;

    .line 1120
    .line 1121
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 1122
    .line 1123
    .line 1124
    move-result v1

    .line 1125
    if-ge v11, v1, :cond_3c

    .line 1126
    .line 1127
    iget-object v1, v10, Lua/q8;->n:Lx9/n;

    .line 1128
    .line 1129
    invoke-virtual {v1, v11}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v1

    .line 1133
    check-cast v1, Lx9/w3;

    .line 1134
    .line 1135
    iget-boolean v2, v1, Lx9/w3;->i:Z

    .line 1136
    .line 1137
    if-nez v2, :cond_24

    .line 1138
    .line 1139
    iput-boolean v12, v1, Lx9/w3;->i:Z

    .line 1140
    .line 1141
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1142
    .line 1143
    invoke-virtual {v2, v11, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1144
    .line 1145
    .line 1146
    :cond_24
    add-int/2addr v11, v12

    .line 1147
    goto :goto_6

    .line 1148
    :cond_25
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1149
    .line 1150
    const-string v5, "\u4e0d\u9009"

    .line 1151
    .line 1152
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v4

    .line 1156
    if-eqz v4, :cond_27

    .line 1157
    .line 1158
    const/4 v1, 0x0

    .line 1159
    :goto_7
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1160
    .line 1161
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 1162
    .line 1163
    .line 1164
    move-result v2

    .line 1165
    if-ge v1, v2, :cond_3c

    .line 1166
    .line 1167
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1168
    .line 1169
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    check-cast v2, Lx9/w3;

    .line 1174
    .line 1175
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 1176
    .line 1177
    if-eqz v3, :cond_26

    .line 1178
    .line 1179
    iput-boolean v11, v2, Lx9/w3;->i:Z

    .line 1180
    .line 1181
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 1182
    .line 1183
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1184
    .line 1185
    .line 1186
    :cond_26
    add-int/2addr v1, v12

    .line 1187
    goto :goto_7

    .line 1188
    :cond_27
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1189
    .line 1190
    const-string v5, "\u76ee\u5f55"

    .line 1191
    .line 1192
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v4

    .line 1196
    if-eqz v4, :cond_2a

    .line 1197
    .line 1198
    const/4 v1, 0x0

    .line 1199
    :goto_8
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1200
    .line 1201
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    if-ge v1, v2, :cond_3c

    .line 1206
    .line 1207
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1208
    .line 1209
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v2

    .line 1213
    check-cast v2, Lx9/w3;

    .line 1214
    .line 1215
    iget-boolean v3, v2, Lx9/w3;->c:Z

    .line 1216
    .line 1217
    if-eqz v3, :cond_28

    .line 1218
    .line 1219
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 1220
    .line 1221
    if-nez v3, :cond_29

    .line 1222
    .line 1223
    iput-boolean v12, v2, Lx9/w3;->i:Z

    .line 1224
    .line 1225
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 1226
    .line 1227
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    goto :goto_9

    .line 1231
    :cond_28
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 1232
    .line 1233
    if-eqz v3, :cond_29

    .line 1234
    .line 1235
    iput-boolean v11, v2, Lx9/w3;->i:Z

    .line 1236
    .line 1237
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 1238
    .line 1239
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1240
    .line 1241
    .line 1242
    :cond_29
    :goto_9
    add-int/2addr v1, v12

    .line 1243
    goto :goto_8

    .line 1244
    :cond_2a
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1245
    .line 1246
    const-string v5, "\u6587\u4ef6"

    .line 1247
    .line 1248
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v4

    .line 1252
    if-eqz v4, :cond_2d

    .line 1253
    .line 1254
    const/4 v1, 0x0

    .line 1255
    :goto_a
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1256
    .line 1257
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 1258
    .line 1259
    .line 1260
    move-result v2

    .line 1261
    if-ge v1, v2, :cond_3c

    .line 1262
    .line 1263
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1264
    .line 1265
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    check-cast v2, Lx9/w3;

    .line 1270
    .line 1271
    iget-boolean v3, v2, Lx9/w3;->c:Z

    .line 1272
    .line 1273
    if-nez v3, :cond_2b

    .line 1274
    .line 1275
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 1276
    .line 1277
    if-nez v3, :cond_2c

    .line 1278
    .line 1279
    iput-boolean v12, v2, Lx9/w3;->i:Z

    .line 1280
    .line 1281
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 1282
    .line 1283
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1284
    .line 1285
    .line 1286
    goto :goto_b

    .line 1287
    :cond_2b
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 1288
    .line 1289
    if-eqz v3, :cond_2c

    .line 1290
    .line 1291
    iput-boolean v11, v2, Lx9/w3;->i:Z

    .line 1292
    .line 1293
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 1294
    .line 1295
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1296
    .line 1297
    .line 1298
    :cond_2c
    :goto_b
    add-int/2addr v1, v12

    .line 1299
    goto :goto_a

    .line 1300
    :cond_2d
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1301
    .line 1302
    const-string v5, "\u5e94\u7528"

    .line 1303
    .line 1304
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v4

    .line 1308
    if-eqz v4, :cond_30

    .line 1309
    .line 1310
    const/4 v1, 0x0

    .line 1311
    :goto_c
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1312
    .line 1313
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 1314
    .line 1315
    .line 1316
    move-result v2

    .line 1317
    if-ge v1, v2, :cond_3c

    .line 1318
    .line 1319
    iget-object v2, v10, Lua/q8;->n:Lx9/n;

    .line 1320
    .line 1321
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v2

    .line 1325
    check-cast v2, Lx9/w3;

    .line 1326
    .line 1327
    iget-object v3, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 1328
    .line 1329
    invoke-static {v3}, Lif/a;->X(Ljava/lang/String;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v3

    .line 1333
    if-eqz v3, :cond_2e

    .line 1334
    .line 1335
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 1336
    .line 1337
    if-nez v3, :cond_2f

    .line 1338
    .line 1339
    iput-boolean v12, v2, Lx9/w3;->i:Z

    .line 1340
    .line 1341
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 1342
    .line 1343
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1344
    .line 1345
    .line 1346
    goto :goto_d

    .line 1347
    :cond_2e
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 1348
    .line 1349
    if-eqz v3, :cond_2f

    .line 1350
    .line 1351
    iput-boolean v11, v2, Lx9/w3;->i:Z

    .line 1352
    .line 1353
    iget-object v3, v10, Lua/q8;->n:Lx9/n;

    .line 1354
    .line 1355
    invoke-virtual {v3, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1356
    .line 1357
    .line 1358
    :cond_2f
    :goto_d
    add-int/2addr v1, v12

    .line 1359
    goto :goto_c

    .line 1360
    :cond_30
    iget-object v6, v10, Lua/q8;->L:Ljava/util/ArrayList;

    .line 1361
    .line 1362
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1363
    .line 1364
    .line 1365
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1366
    .line 1367
    const-string v5, "\u5b89\u88c5"

    .line 1368
    .line 1369
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1370
    .line 1371
    .line 1372
    move-result v4

    .line 1373
    const/4 v5, 0x0

    .line 1374
    :goto_e
    iget-object v7, v10, Lua/q8;->n:Lx9/n;

    .line 1375
    .line 1376
    invoke-virtual {v7}, Lc6/g;->b()I

    .line 1377
    .line 1378
    .line 1379
    move-result v7

    .line 1380
    if-ge v5, v7, :cond_33

    .line 1381
    .line 1382
    iget-object v7, v10, Lua/q8;->n:Lx9/n;

    .line 1383
    .line 1384
    invoke-virtual {v7, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v7

    .line 1388
    check-cast v7, Lx9/w3;

    .line 1389
    .line 1390
    iget-boolean v8, v7, Lx9/w3;->i:Z

    .line 1391
    .line 1392
    if-eqz v8, :cond_32

    .line 1393
    .line 1394
    if-eqz v4, :cond_31

    .line 1395
    .line 1396
    iget-object v8, v7, Lx9/w3;->a:Ljava/lang/String;

    .line 1397
    .line 1398
    invoke-static {v8}, Lif/a;->X(Ljava/lang/String;)Z

    .line 1399
    .line 1400
    .line 1401
    move-result v8

    .line 1402
    if-nez v8, :cond_31

    .line 1403
    .line 1404
    goto :goto_f

    .line 1405
    :cond_31
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    :cond_32
    :goto_f
    add-int/2addr v5, v12

    .line 1409
    goto :goto_e

    .line 1410
    :cond_33
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1411
    .line 1412
    .line 1413
    move-result v4

    .line 1414
    if-eqz v4, :cond_34

    .line 1415
    .line 1416
    const-string v1, "\u8bf7\u9009\u4e2d\u4f60\u8981\u64cd\u4f5c\u7684\u6587\u4ef6\u6216\u76ee\u5f55"

    .line 1417
    .line 1418
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1419
    .line 1420
    .line 1421
    goto/16 :goto_10

    .line 1422
    .line 1423
    :cond_34
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1424
    .line 1425
    const-string v5, "\u590d\u5236"

    .line 1426
    .line 1427
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v4

    .line 1431
    const/4 v5, 0x4

    .line 1432
    const/16 v7, 0x1f4

    .line 1433
    .line 1434
    const-string v8, "\u4e2a\u9879\u76ee"

    .line 1435
    .line 1436
    if-eqz v4, :cond_35

    .line 1437
    .line 1438
    invoke-virtual {v10}, Lua/q8;->y()V

    .line 1439
    .line 1440
    .line 1441
    iget-object v1, v10, Lua/q8;->K:Landroid/widget/TextView;

    .line 1442
    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    const-string v4, "\u5df2\u590d\u5236\uff1a"

    .line 1446
    .line 1447
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1451
    .line 1452
    .line 1453
    move-result v4

    .line 1454
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v3

    .line 1464
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    .line 1466
    .line 1467
    iget-object v1, v10, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 1468
    .line 1469
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1470
    .line 1471
    .line 1472
    iget-object v1, v10, Lua/q8;->K:Landroid/widget/TextView;

    .line 1473
    .line 1474
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    .line 1476
    .line 1477
    iget-object v1, v10, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 1478
    .line 1479
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 1480
    .line 1481
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    new-array v2, v2, [F

    .line 1486
    .line 1487
    fill-array-data v2, :array_0

    .line 1488
    .line 1489
    .line 1490
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v1

    .line 1494
    int-to-long v2, v7

    .line 1495
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1496
    .line 1497
    .line 1498
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    .line 1499
    .line 1500
    int-to-float v3, v5

    .line 1501
    invoke-direct {v2, v3}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1508
    .line 1509
    .line 1510
    goto/16 :goto_10

    .line 1511
    .line 1512
    :cond_35
    iget-object v4, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1513
    .line 1514
    const-string v9, "\u526a\u5207"

    .line 1515
    .line 1516
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1517
    .line 1518
    .line 1519
    move-result v4

    .line 1520
    if-eqz v4, :cond_36

    .line 1521
    .line 1522
    invoke-virtual {v10}, Lua/q8;->y()V

    .line 1523
    .line 1524
    .line 1525
    iget-object v1, v10, Lua/q8;->K:Landroid/widget/TextView;

    .line 1526
    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    const-string v4, "\u5df2\u526a\u5207\uff1a"

    .line 1530
    .line 1531
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1535
    .line 1536
    .line 1537
    move-result v4

    .line 1538
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v3

    .line 1548
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    .line 1550
    .line 1551
    iget-object v1, v10, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 1552
    .line 1553
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    .line 1555
    .line 1556
    iget-object v1, v10, Lua/q8;->K:Landroid/widget/TextView;

    .line 1557
    .line 1558
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1559
    .line 1560
    .line 1561
    iget-object v1, v10, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 1562
    .line 1563
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 1564
    .line 1565
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v3

    .line 1569
    new-array v2, v2, [F

    .line 1570
    .line 1571
    fill-array-data v2, :array_1

    .line 1572
    .line 1573
    .line 1574
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v1

    .line 1578
    int-to-long v2, v7

    .line 1579
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1580
    .line 1581
    .line 1582
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    .line 1583
    .line 1584
    int-to-float v3, v5

    .line 1585
    invoke-direct {v2, v3}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1592
    .line 1593
    .line 1594
    goto/16 :goto_10

    .line 1595
    .line 1596
    :cond_36
    iget-object v2, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1597
    .line 1598
    const-string v4, "\u4f20\u9001"

    .line 1599
    .line 1600
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v2

    .line 1604
    if-eqz v2, :cond_38

    .line 1605
    .line 1606
    invoke-virtual {v10}, Lua/q8;->y()V

    .line 1607
    .line 1608
    .line 1609
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1610
    .line 1611
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 1612
    .line 1613
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1614
    .line 1615
    .line 1616
    move-result v2

    .line 1617
    if-ne v2, v12, :cond_37

    .line 1618
    .line 1619
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 1620
    .line 1621
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v1

    .line 1625
    check-cast v1, Lcom/yunpan/appmanage/util/d;

    .line 1626
    .line 1627
    iget-object v1, v1, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 1628
    .line 1629
    invoke-virtual {v10, v1}, Lua/q8;->z(Ljava/lang/String;)V

    .line 1630
    .line 1631
    .line 1632
    goto/16 :goto_10

    .line 1633
    .line 1634
    :cond_37
    new-instance v1, Lha/r7;

    .line 1635
    .line 1636
    iget-object v2, v10, Lda/h;->f:Landroid/app/Activity;

    .line 1637
    .line 1638
    iget-object v4, v10, Lda/h;->e:Landroid/content/Context;

    .line 1639
    .line 1640
    new-instance v5, Lua/d8;

    .line 1641
    .line 1642
    invoke-direct {v5, v10, v3}, Lua/d8;-><init>(Lua/q8;I)V

    .line 1643
    .line 1644
    .line 1645
    invoke-direct {v1, v2, v4, v5}, Lha/r7;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/d8;)V

    .line 1646
    .line 1647
    .line 1648
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1649
    .line 1650
    .line 1651
    goto/16 :goto_10

    .line 1652
    .line 1653
    :cond_38
    iget-object v2, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1654
    .line 1655
    const-string v3, "\u5220\u9664"

    .line 1656
    .line 1657
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v2

    .line 1661
    if-eqz v2, :cond_39

    .line 1662
    .line 1663
    invoke-virtual {v10}, Lua/q8;->y()V

    .line 1664
    .line 1665
    .line 1666
    iget-object v1, v10, Lua/q8;->g:Lha/u9;

    .line 1667
    .line 1668
    const-string v2, "\u5220\u9664\u4e2d"

    .line 1669
    .line 1670
    invoke-virtual {v1, v2}, Lha/u9;->c(Ljava/lang/String;)V

    .line 1671
    .line 1672
    .line 1673
    new-instance v1, Lha/a3;

    .line 1674
    .line 1675
    const/4 v2, 0x3

    .line 1676
    invoke-direct {v1, v2, v6}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 1677
    .line 1678
    .line 1679
    new-instance v2, Lmc/c;

    .line 1680
    .line 1681
    invoke-direct {v2, v11, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1682
    .line 1683
    .line 1684
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 1685
    .line 1686
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v1

    .line 1690
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v2

    .line 1694
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v1

    .line 1698
    new-instance v2, Lua/m8;

    .line 1699
    .line 1700
    invoke-direct {v2, v10, v11}, Lua/m8;-><init>(Lua/q8;I)V

    .line 1701
    .line 1702
    .line 1703
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 1704
    .line 1705
    .line 1706
    goto :goto_10

    .line 1707
    :cond_39
    iget-object v2, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1708
    .line 1709
    const-string v3, "\u538b\u7f29"

    .line 1710
    .line 1711
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v2

    .line 1715
    if-eqz v2, :cond_3b

    .line 1716
    .line 1717
    iget-object v1, v10, Lua/q8;->l:Lx9/g0;

    .line 1718
    .line 1719
    invoke-static {v1, v12}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v1

    .line 1723
    check-cast v1, Lx9/w3;

    .line 1724
    .line 1725
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 1726
    .line 1727
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 1728
    .line 1729
    .line 1730
    move-result v1

    .line 1731
    if-nez v1, :cond_3a

    .line 1732
    .line 1733
    const-string v1, "\u5f53\u524d\u76ee\u5f55\u65e0\u6743\u5199\u5165\uff0c\u4e0d\u80fd\u4f7f\u7528\u538b\u7f29\u529f\u80fd"

    .line 1734
    .line 1735
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1736
    .line 1737
    .line 1738
    goto :goto_10

    .line 1739
    :cond_3a
    invoke-virtual {v10}, Lua/q8;->y()V

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v10, v12}, Lua/q8;->o(Z)V

    .line 1743
    .line 1744
    .line 1745
    goto :goto_10

    .line 1746
    :cond_3b
    invoke-virtual {v10}, Lua/q8;->y()V

    .line 1747
    .line 1748
    .line 1749
    new-instance v8, Lha/y5;

    .line 1750
    .line 1751
    iget-object v3, v10, Lda/h;->f:Landroid/app/Activity;

    .line 1752
    .line 1753
    iget-object v4, v10, Lda/h;->e:Landroid/content/Context;

    .line 1754
    .line 1755
    iget-object v5, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 1756
    .line 1757
    new-instance v7, Ltb/v;

    .line 1758
    .line 1759
    const/16 v1, 0x15

    .line 1760
    .line 1761
    invoke-direct {v7, v1}, Ltb/v;-><init>(I)V

    .line 1762
    .line 1763
    .line 1764
    move-object v2, v8

    .line 1765
    invoke-direct/range {v2 .. v7}, Lha/y5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ltb/v;)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v8}, Lha/y5;->show()V

    .line 1769
    .line 1770
    .line 1771
    :cond_3c
    :goto_10
    return-void

    .line 1772
    nop

    .line 1773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    :array_0
    .array-data 4
        0x0
        0x41a00000    # 20.0f
    .end array-data

    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    :array_1
    .array-data 4
        0x0
        0x41a00000    # 20.0f
    .end array-data
.end method
