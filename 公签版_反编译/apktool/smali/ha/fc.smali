.class public final Lha/fc;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/TextView;

.field public k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public l:Landroid/widget/TextView;

.field public m:Z

.field public n:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00f0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Lha/fc;->i:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, "\""

    .line 18
    .line 19
    const-string v3, "\'"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    iput-object v0, v1, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 25
    .line 26
    :try_start_0
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 27
    .line 28
    const-string v3, "AdbShellPassword"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lha/fc;->h:Landroid/widget/EditText;

    .line 37
    .line 38
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const-string v0, "5555"

    .line 49
    .line 50
    :cond_1
    iget v2, v1, Lcom/yunpan/appmanage/util/w;->k:I

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    if-eq v2, v3, :cond_2

    .line 58
    .line 59
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/util/w;->n(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    :catch_1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, La2/w0;->P()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    const-string v0, "\u7aef\u53e3\u5df2\u4fee\u6539\uff0c\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 78
    .line 79
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    :goto_0
    const/4 v1, 0x0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    sget-object v2, Lfa/h;->a:Lfa/j;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Lfa/j;->h(Lua/h6;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    if-nez v0, :cond_4

    .line 94
    .line 95
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 96
    .line 97
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 98
    .line 99
    iget-boolean v3, p0, Lha/fc;->m:Z

    .line 100
    .line 101
    if-eq v2, v3, :cond_4

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, La2/w0;->P()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    const-string v2, "\u5df2\u52fe\u9009\u54ea\u5412S\u5f00ADB\uff0c\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 117
    .line 118
    invoke-static {v2, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lfa/h;->a:Lfa/j;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Lfa/j;->h(Lua/h6;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    if-nez v0, :cond_5

    .line 127
    .line 128
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 129
    .line 130
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->n:Z

    .line 131
    .line 132
    iget-boolean v2, p0, Lha/fc;->n:Z

    .line 133
    .line 134
    if-eq v0, v2, :cond_5

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {}, La2/w0;->P()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    const-string v0, "\u5df2\u52fe\u9009\u9886\u514b\u5f00ADB\uff0c\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 150
    .line 151
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    iget-boolean v0, p0, Lha/fc;->p:Z

    .line 160
    .line 161
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 162
    .line 163
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 164
    .line 165
    if-eq v0, v1, :cond_6

    .line 166
    .line 167
    if-nez v1, :cond_6

    .line 168
    .line 169
    const-string v0, "UP_INIT_NotUseShizuku"

    .line 170
    .line 171
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {v1, v0}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 177
    .line 178
    invoke-virtual {v0}, Lfa/o0;->d()V

    .line 179
    .line 180
    .line 181
    :cond_6
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    const/4 v8, 0x0

    .line 5
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    sget-object v10, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 9
    .line 10
    iget-boolean v0, v10, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 11
    .line 12
    iput-boolean v0, v6, Lha/fc;->p:Z

    .line 13
    .line 14
    const v0, 0x7f0b039f

    .line 15
    .line 16
    .line 17
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    new-instance v1, Lha/zb;

    .line 24
    .line 25
    invoke-direct {v1, v6, v8}, Lha/zb;-><init>(Lha/fc;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0b0358

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, v6, Lha/fc;->j:Landroid/widget/TextView;

    .line 41
    .line 42
    new-instance v1, Lha/zb;

    .line 43
    .line 44
    invoke-direct {v1, v6, v7}, Lha/zb;-><init>(Lha/fc;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, v10, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 51
    .line 52
    iput-boolean v0, v6, Lha/fc;->m:Z

    .line 53
    .line 54
    iget-boolean v0, v10, Lcom/yunpan/appmanage/util/w;->n:Z

    .line 55
    .line 56
    iput-boolean v0, v6, Lha/fc;->n:Z

    .line 57
    .line 58
    const v0, 0x7f0b0105

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/EditText;

    .line 66
    .line 67
    iput-object v0, v6, Lha/fc;->h:Landroid/widget/EditText;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, ""

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v2, v10, Lcom/yunpan/appmanage/util/w;->k:I

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v6, Lha/fc;->h:Landroid/widget/EditText;

    .line 89
    .line 90
    new-instance v1, Lha/cc;

    .line 91
    .line 92
    invoke-direct {v1, v6, v7}, Lha/cc;-><init>(Lha/fc;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lx9/t4;

    .line 99
    .line 100
    invoke-direct {v0}, Lx9/t4;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lx9/u4;

    .line 104
    .line 105
    const-string v2, "\u5168\u5c4f"

    .line 106
    .line 107
    invoke-direct {v1, v2, v8}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lx9/u4;

    .line 114
    .line 115
    const-string v2, "\u6c89\u6d78"

    .line 116
    .line 117
    invoke-direct {v1, v2, v8}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lx9/u4;

    .line 124
    .line 125
    const-string v2, "\u6c89\u6d782"

    .line 126
    .line 127
    invoke-direct {v1, v2, v8}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lx9/u4;

    .line 134
    .line 135
    const-string v2, "\u9690\u85cf\u72b6\u6001\u680f"

    .line 136
    .line 137
    invoke-direct {v1, v2, v8}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Lx9/u4;

    .line 144
    .line 145
    const-string v2, "\u5168\u5c4f2"

    .line 146
    .line 147
    invoke-direct {v1, v2, v8}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lx9/u4;

    .line 154
    .line 155
    const-string v2, "\u5168\u5c4f3"

    .line 156
    .line 157
    invoke-direct {v1, v2, v8}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lx9/u4;

    .line 164
    .line 165
    const-string v2, "\u6c89\u6d783"

    .line 166
    .line 167
    invoke-direct {v1, v2, v8}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget v1, v10, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lx9/t4;->F(I)V

    .line 176
    .line 177
    .line 178
    const v1, 0x7f0b0503

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 186
    .line 187
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 188
    .line 189
    iget-object v3, v6, Lha/a4;->b:Landroid/content/Context;

    .line 190
    .line 191
    invoke-direct {v2, v3, v8, v8}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 201
    .line 202
    .line 203
    new-instance v1, Ld2/w;

    .line 204
    .line 205
    const/16 v2, 0x17

    .line 206
    .line 207
    invoke-direct {v1, v6, v2, v0}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 211
    .line 212
    const v0, 0x7f0b04f9

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 220
    .line 221
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 222
    .line 223
    invoke-direct {v1, v3, v7, v8}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 227
    .line 228
    .line 229
    new-instance v1, Lx9/y0;

    .line 230
    .line 231
    invoke-direct {v1, v8}, Lx9/y0;-><init>(Z)V

    .line 232
    .line 233
    .line 234
    new-instance v2, Lx9/x0;

    .line 235
    .line 236
    iget-boolean v4, v10, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 237
    .line 238
    const-string v5, "\u4e0d\u4f7f\u7528PM\u547d\u4ee4\u5b89\u88c5\uff1a\u4e5f\u5c31\u662f\u4e0d\u4f7f\u7528root\u6216adb\u547d\u4ee4\u6765\u5b89\u88c5\u5e94\u7528"

    .line 239
    .line 240
    invoke-direct {v2, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    new-instance v2, Lx9/x0;

    .line 247
    .line 248
    iget-boolean v4, v10, Lcom/yunpan/appmanage/util/w;->x:Z

    .line 249
    .line 250
    const-string v5, "PM\u547d\u4ee4\u5b89\u88c5\u65f6\u4e3a\u5e94\u7528\u6388\u4e88\u8fd0\u884c\u65f6\u6743\u9650 \u53c2\u6570-g (\u5982\uff1a\u5b58\u50a8\u6743\u9650 \u7b49)"

    .line 251
    .line 252
    invoke-direct {v2, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    new-instance v2, Lx9/x0;

    .line 259
    .line 260
    iget-boolean v4, v10, Lcom/yunpan/appmanage/util/w;->z:Z

    .line 261
    .line 262
    const-string v5, "\u4e3b\u52a8\u5f00\u542f\u65e0\u7ebfADB-\u65b9\u6cd51(\u9002\u5408\u5927\u90e8\u5206\u7cfb\u7edf\uff0c\u5982\u679c\u5df2\u6c38\u4e45\u6253\u5f00\u4e86\u5219\u4e0d\u9700\u8981)"

    .line 263
    .line 264
    invoke-direct {v2, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    new-instance v2, Lx9/x0;

    .line 271
    .line 272
    iget-boolean v4, v10, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 273
    .line 274
    const-string v5, "\u4e3b\u52a8\u5f00\u542f\u65e0\u7ebfADB-\u65b9\u6cd52(\u9002\u5408\u5c0f\u90e8\u5206\u7cfb\u7edf\uff0c\u5982\u679c\u5df2\u6c38\u4e45\u6253\u5f00\u4e86\u5219\u4e0d\u9700\u8981)"

    .line 275
    .line 276
    invoke-direct {v2, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    new-instance v2, Lx9/x0;

    .line 283
    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v5, "\u65e0\u6cd5\u542f\u52a8\u5e94\u7528(\u65e0\u6cd5\u7528"

    .line 287
    .line 288
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const v5, 0x7f13002f

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v11, "\u6253\u5f00\u5e94\u7528\uff0c\u5219\u52fe\u9009\u6b64\u9879\uff0c\u5426\u5219\u4e0d\u8981\u52fe\u9009)"

    .line 302
    .line 303
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    sget-object v11, Lwa/t;->a:Lwa/u;

    .line 311
    .line 312
    iget-boolean v11, v11, Lwa/u;->s:Z

    .line 313
    .line 314
    invoke-direct {v2, v4, v11}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    new-instance v2, Landroid/content/ComponentName;

    .line 321
    .line 322
    const-class v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;

    .line 323
    .line 324
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .line 326
    .line 327
    new-instance v4, Lx9/x0;

    .line 328
    .line 329
    new-instance v11, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v12, "\u5141\u8bb8\u7b2c\u4e09\u65b9\u5e94\u7528\u8c03\u7528("

    .line 332
    .line 333
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v5, ")\u6765\u5b89\u88c5\u5e94\u7528  (\u4e2a\u522b\u7cfb\u7edf\u53ef\u80fd\u4e0d\u9002\u7528)"

    .line 344
    .line 345
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 357
    .line 358
    .line 359
    move-result v11

    .line 360
    if-ne v11, v7, :cond_0

    .line 361
    .line 362
    const/4 v11, 0x1

    .line 363
    goto :goto_0

    .line 364
    :cond_0
    const/4 v11, 0x0

    .line 365
    :goto_0
    invoke-direct {v4, v5, v11}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    new-instance v4, Lx9/x0;

    .line 372
    .line 373
    iget-boolean v5, v10, Lcom/yunpan/appmanage/util/w;->I:Z

    .line 374
    .line 375
    const-string v11, "\u67d0\u6b3e\u5409\u5229\u661f\u8d8aL\u8f66\u673a\u9700\u52fe\u9009\uff0c\u56fa\u5b9a\u4e92\u4f20IP\u4e3a\uff1a198.18.34.15"

    .line 376
    .line 377
    invoke-direct {v4, v11, v5}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Lcom/hjq/permissions/b;

    .line 387
    .line 388
    const/4 v4, 0x6

    .line 389
    invoke-direct {v0, v6, v1, v2, v4}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 390
    .line 391
    .line 392
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 393
    .line 394
    const v0, 0x7f0b04fa

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 402
    .line 403
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 404
    .line 405
    const/4 v11, 0x3

    .line 406
    invoke-direct {v1, v3, v11}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 410
    .line 411
    .line 412
    new-instance v1, Lx9/y0;

    .line 413
    .line 414
    invoke-direct {v1, v7}, Lx9/y0;-><init>(Z)V

    .line 415
    .line 416
    .line 417
    new-instance v2, Lx9/x0;

    .line 418
    .line 419
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->v:Z

    .line 420
    .line 421
    const-string v4, "\u6309\u8fd4\u56de\u952e\u4e0d\u5173\u95ed"

    .line 422
    .line 423
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    new-instance v2, Lx9/x0;

    .line 430
    .line 431
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->a0:Z

    .line 432
    .line 433
    const-string v4, "\u4e0d\u4f7f\u7528root\u6a21\u5f0f"

    .line 434
    .line 435
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    new-instance v2, Lx9/x0;

    .line 442
    .line 443
    iget-object v3, v10, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    xor-int/2addr v3, v7

    .line 450
    const-string v4, "\u4f7f\u7528\u7ba1\u5bb6\u5bc6\u7801\u9501"

    .line 451
    .line 452
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    new-instance v2, Lx9/x0;

    .line 459
    .line 460
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->H:Z

    .line 461
    .line 462
    const-string v4, "\u5f39\u7a97\u663e\u793a\u4e0d\u5b8c\u6574"

    .line 463
    .line 464
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    new-instance v2, Lx9/x0;

    .line 471
    .line 472
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->w:Z

    .line 473
    .line 474
    const-string v4, "\u5b89\u88c5\u6210\u529f\u540e\u5f39\u7a97"

    .line 475
    .line 476
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    new-instance v2, Lx9/x0;

    .line 483
    .line 484
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->e0:Z

    .line 485
    .line 486
    const-string v4, "\u4e0d\u63d0\u793a\u8bbe\u5907\u53d1\u73b0"

    .line 487
    .line 488
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    new-instance v2, Lx9/x0;

    .line 495
    .line 496
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 497
    .line 498
    const-string v4, "\u54ea\u5412S\u81ea\u52a8\u5f00ADB"

    .line 499
    .line 500
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    new-instance v2, Lx9/x0;

    .line 507
    .line 508
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->n:Z

    .line 509
    .line 510
    const-string v4, "\u9886\u514b03\u81ea\u52a8\u5f00ADB"

    .line 511
    .line 512
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    new-instance v2, Lx9/x0;

    .line 519
    .line 520
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->G:Z

    .line 521
    .line 522
    const-string v4, "shell\u5bc6\u7801\u9519\u8bef\u63d0\u9192"

    .line 523
    .line 524
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    new-instance v2, Lx9/x0;

    .line 531
    .line 532
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->F:Z

    .line 533
    .line 534
    const-string v4, "adb\u8fde\u63a5\u6210\u529f\u63d0\u793a"

    .line 535
    .line 536
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    new-instance v2, Lx9/x0;

    .line 543
    .line 544
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 545
    .line 546
    const-string v4, "\u4f7f\u7528\u65b0\u7248adb\u534f\u8bae"

    .line 547
    .line 548
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    new-instance v2, Lx9/x0;

    .line 555
    .line 556
    iget-boolean v3, v10, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 557
    .line 558
    const-string v4, "\u4e0d\u8fde\u63a5shizuku"

    .line 559
    .line 560
    invoke-direct {v2, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 567
    .line 568
    .line 569
    new-instance v2, Lcom/hjq/permissions/b;

    .line 570
    .line 571
    const/4 v3, 0x7

    .line 572
    invoke-direct {v2, v6, v1, v0, v3}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 573
    .line 574
    .line 575
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 576
    .line 577
    const v0, 0x7f0b0343

    .line 578
    .line 579
    .line 580
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    check-cast v0, Landroid/widget/LinearLayout;

    .line 585
    .line 586
    const v1, 0x7f0b0347

    .line 587
    .line 588
    .line 589
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    move-object v12, v1

    .line 594
    check-cast v12, Landroid/widget/LinearLayout;

    .line 595
    .line 596
    const v1, 0x7f0b0345

    .line 597
    .line 598
    .line 599
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    move-object v13, v1

    .line 604
    check-cast v13, Landroid/widget/LinearLayout;

    .line 605
    .line 606
    const v1, 0x7f0b033f

    .line 607
    .line 608
    .line 609
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    move-object v14, v1

    .line 614
    check-cast v14, Landroid/widget/LinearLayout;

    .line 615
    .line 616
    const v1, 0x7f0b0341

    .line 617
    .line 618
    .line 619
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    move-object v15, v1

    .line 624
    check-cast v15, Landroid/widget/LinearLayout;

    .line 625
    .line 626
    const v1, 0x7f0b033d

    .line 627
    .line 628
    .line 629
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    move-object v5, v1

    .line 634
    check-cast v5, Landroid/widget/LinearLayout;

    .line 635
    .line 636
    const v1, 0x7f0b0344

    .line 637
    .line 638
    .line 639
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    move-object v4, v1

    .line 644
    check-cast v4, Landroid/widget/ImageView;

    .line 645
    .line 646
    const v1, 0x7f0b0348

    .line 647
    .line 648
    .line 649
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    move-object v3, v1

    .line 654
    check-cast v3, Landroid/widget/ImageView;

    .line 655
    .line 656
    const v1, 0x7f0b0346

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    move-object v2, v1

    .line 664
    check-cast v2, Landroid/widget/ImageView;

    .line 665
    .line 666
    const v1, 0x7f0b0340

    .line 667
    .line 668
    .line 669
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    check-cast v1, Landroid/widget/ImageView;

    .line 674
    .line 675
    const v11, 0x7f0b0342

    .line 676
    .line 677
    .line 678
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 679
    .line 680
    .line 681
    move-result-object v11

    .line 682
    check-cast v11, Landroid/widget/ImageView;

    .line 683
    .line 684
    const v8, 0x7f0b033e

    .line 685
    .line 686
    .line 687
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 688
    .line 689
    .line 690
    move-result-object v8

    .line 691
    check-cast v8, Landroid/widget/ImageView;

    .line 692
    .line 693
    iget v9, v10, Lcom/yunpan/appmanage/util/w;->O:I

    .line 694
    .line 695
    move-object/from16 v16, v5

    .line 696
    .line 697
    const v5, 0x7f0802b0

    .line 698
    .line 699
    .line 700
    if-ne v9, v7, :cond_1

    .line 701
    .line 702
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 703
    .line 704
    .line 705
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 706
    .line 707
    .line 708
    goto :goto_1

    .line 709
    :cond_1
    const/4 v7, 0x2

    .line 710
    if-ne v9, v7, :cond_2

    .line 711
    .line 712
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 716
    .line 717
    .line 718
    goto :goto_1

    .line 719
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 720
    .line 721
    .line 722
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 723
    .line 724
    .line 725
    :goto_1
    iget v7, v10, Lcom/yunpan/appmanage/util/w;->P:I

    .line 726
    .line 727
    const/4 v9, 0x1

    .line 728
    if-ne v7, v9, :cond_3

    .line 729
    .line 730
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 731
    .line 732
    .line 733
    const/4 v9, 0x2

    .line 734
    goto :goto_2

    .line 735
    :cond_3
    const/4 v9, 0x2

    .line 736
    if-ne v7, v9, :cond_4

    .line 737
    .line 738
    invoke-virtual {v8, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 739
    .line 740
    .line 741
    goto :goto_2

    .line 742
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 743
    .line 744
    .line 745
    :goto_2
    new-instance v5, Lha/ac;

    .line 746
    .line 747
    invoke-direct {v5, v4, v3, v2, v9}, Lha/ac;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    .line 752
    .line 753
    new-instance v7, Lha/bc;

    .line 754
    .line 755
    const/4 v5, 0x1

    .line 756
    move-object v0, v7

    .line 757
    move-object v9, v1

    .line 758
    move-object/from16 v1, p0

    .line 759
    .line 760
    move-object/from16 v17, v2

    .line 761
    .line 762
    move-object v2, v4

    .line 763
    move-object/from16 v18, v3

    .line 764
    .line 765
    move-object/from16 v19, v4

    .line 766
    .line 767
    move-object/from16 v4, v17

    .line 768
    .line 769
    move-object/from16 v20, v10

    .line 770
    .line 771
    move-object/from16 v10, v16

    .line 772
    .line 773
    invoke-direct/range {v0 .. v5}, Lha/bc;-><init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v12, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    .line 778
    .line 779
    new-instance v7, Lha/bc;

    .line 780
    .line 781
    const/4 v5, 0x2

    .line 782
    move-object v0, v7

    .line 783
    move-object/from16 v2, v19

    .line 784
    .line 785
    invoke-direct/range {v0 .. v5}, Lha/bc;-><init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v13, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    .line 790
    .line 791
    new-instance v0, Lha/ac;

    .line 792
    .line 793
    const/4 v1, 0x0

    .line 794
    invoke-direct {v0, v9, v11, v8, v1}, Lha/ac;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    .line 799
    .line 800
    new-instance v7, Lha/bc;

    .line 801
    .line 802
    const/4 v5, 0x0

    .line 803
    move-object v0, v7

    .line 804
    move-object/from16 v1, p0

    .line 805
    .line 806
    move-object v2, v9

    .line 807
    move-object v3, v11

    .line 808
    move-object v4, v8

    .line 809
    invoke-direct/range {v0 .. v5}, Lha/bc;-><init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v15, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    .line 814
    .line 815
    new-instance v0, Lha/ac;

    .line 816
    .line 817
    const/4 v1, 0x1

    .line 818
    invoke-direct {v0, v9, v11, v8, v1}, Lha/ac;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    .line 823
    .line 824
    const v0, 0x7f0b042a

    .line 825
    .line 826
    .line 827
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    check-cast v0, Landroid/widget/EditText;

    .line 832
    .line 833
    iput-object v0, v6, Lha/fc;->i:Landroid/widget/EditText;

    .line 834
    .line 835
    const v0, 0x7f0b044c

    .line 836
    .line 837
    .line 838
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    check-cast v0, Landroid/widget/EditText;

    .line 843
    .line 844
    iput-object v0, v6, Lha/fc;->g:Landroid/widget/EditText;

    .line 845
    .line 846
    move-object/from16 v1, v20

    .line 847
    .line 848
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->b0:Ljava/lang/String;

    .line 849
    .line 850
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    .line 852
    .line 853
    iget-object v0, v6, Lha/fc;->g:Landroid/widget/EditText;

    .line 854
    .line 855
    new-instance v2, Lha/e2;

    .line 856
    .line 857
    const/4 v3, 0x2

    .line 858
    invoke-direct {v2, v6, v15, v3}, Lha/e2;-><init>(Landroid/view/KeyEvent$Callback;Landroid/view/View;I)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 862
    .line 863
    .line 864
    iget-object v0, v6, Lha/fc;->g:Landroid/widget/EditText;

    .line 865
    .line 866
    new-instance v2, Lha/ec;

    .line 867
    .line 868
    invoke-direct {v2}, Lha/ec;-><init>()V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 872
    .line 873
    .line 874
    iget-object v0, v6, Lha/fc;->i:Landroid/widget/EditText;

    .line 875
    .line 876
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 877
    .line 878
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    .line 880
    .line 881
    iget-object v0, v6, Lha/fc;->i:Landroid/widget/EditText;

    .line 882
    .line 883
    new-instance v2, Lha/cc;

    .line 884
    .line 885
    const/4 v3, 0x0

    .line 886
    invoke-direct {v2, v6, v3}, Lha/cc;-><init>(Lha/fc;I)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 890
    .line 891
    .line 892
    const v0, 0x7f0b04c5

    .line 893
    .line 894
    .line 895
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    check-cast v0, Landroid/widget/TextView;

    .line 900
    .line 901
    iput-object v0, v6, Lha/fc;->l:Landroid/widget/TextView;

    .line 902
    .line 903
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 904
    .line 905
    if-nez v1, :cond_5

    .line 906
    .line 907
    const-string v1, "\u7ba1\u5bb6\u5b89\u88c5\u5668"

    .line 908
    .line 909
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    .line 911
    .line 912
    goto :goto_3

    .line 913
    :cond_5
    const/4 v2, 0x1

    .line 914
    if-ne v1, v2, :cond_6

    .line 915
    .line 916
    const-string v1, "\u7cfb\u7edf\u5b89\u88c5\u5668"

    .line 917
    .line 918
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    .line 920
    .line 921
    goto :goto_3

    .line 922
    :cond_6
    const/4 v2, 0x2

    .line 923
    if-ne v1, v2, :cond_7

    .line 924
    .line 925
    const-string v1, "\u6307\u5b9a\u5b89\u88c5\u5668"

    .line 926
    .line 927
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    .line 929
    .line 930
    goto :goto_3

    .line 931
    :cond_7
    const/4 v2, 0x3

    .line 932
    if-ne v1, v2, :cond_8

    .line 933
    .line 934
    const-string v1, "\u7531\u6253\u5f00\u65b9\u5f0f"

    .line 935
    .line 936
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    .line 938
    .line 939
    :cond_8
    :goto_3
    const v0, 0x7f0b04c4

    .line 940
    .line 941
    .line 942
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 947
    .line 948
    iput-object v0, v6, Lha/fc;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 949
    .line 950
    new-instance v1, Landroidx/leanback/widget/h0;

    .line 951
    .line 952
    const/4 v2, 0x2

    .line 953
    invoke-direct {v1, v2, v6}, Landroidx/leanback/widget/h0;-><init>(ILjava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    .line 958
    .line 959
    const v0, 0x7f0b0381

    .line 960
    .line 961
    .line 962
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    check-cast v0, Landroid/widget/TextView;

    .line 967
    .line 968
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 969
    .line 970
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 971
    .line 972
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 973
    .line 974
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    if-nez v1, :cond_9

    .line 979
    .line 980
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 981
    .line 982
    const/16 v2, 0x15

    .line 983
    .line 984
    if-lt v1, v2, :cond_9

    .line 985
    .line 986
    new-instance v1, Lha/zb;

    .line 987
    .line 988
    const/4 v2, 0x2

    .line 989
    invoke-direct {v1, v6, v2}, Lha/zb;-><init>(Lha/fc;I)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    .line 994
    .line 995
    goto :goto_4

    .line 996
    :cond_9
    const/16 v1, 0x8

    .line 997
    .line 998
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 999
    .line 1000
    .line 1001
    :goto_4
    return-void
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    return-void
.end method

.method public final show()V
    .locals 1

    .line 1
    invoke-super {p0}, Lha/a4;->show()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lkh/e;->e(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
