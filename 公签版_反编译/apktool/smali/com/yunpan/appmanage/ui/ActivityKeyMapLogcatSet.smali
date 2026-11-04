.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public C:I

.field public D:Landroid/widget/EditText;

.field public E:Landroid/widget/TextView;

.field public F:Lx9/w0;

.field public G:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->C:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->D:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x12c

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->C:I

    .line 21
    .line 22
    if-eq v1, v0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .line 28
    .line 29
    :try_start_1
    iput v0, v1, Lwa/u;->r:I

    .line 30
    .line 31
    iget-object v2, v1, Lwa/u;->b:Lz7/s;

    .line 32
    .line 33
    const-string v3, "KeyMapLogcatInterval"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 46
    .line 47
    invoke-static {v0}, Lta/m;->e(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0041

    return v0
.end method

.method public final u()V
    .locals 14

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    new-instance v1, Lua/g1;

    .line 11
    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0b0411

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->E:Landroid/widget/TextView;

    .line 30
    .line 31
    new-instance v1, La2/u0;

    .line 32
    .line 33
    const/16 v2, 0x11

    .line 34
    .line 35
    invoke-direct {v1, v2}, La2/u0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lmc/c;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lka/c;

    .line 59
    .line 60
    const/16 v3, 0x14

    .line 61
    .line 62
    invoke-direct {v2, v3, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "existsData"

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const v2, 0x7f0b04ec

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    .line 88
    const v4, 0x7f0b04ed

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroid/widget/TextView;

    .line 96
    .line 97
    sget-object v5, Lwa/t;->a:Lwa/u;

    .line 98
    .line 99
    iget v6, v5, Lwa/u;->L:I

    .line 100
    .line 101
    const-string v7, "VERBOSE"

    .line 102
    .line 103
    const-string v8, "DEBUG"

    .line 104
    .line 105
    const-string v9, "INFO"

    .line 106
    .line 107
    const/4 v10, 0x4

    .line 108
    const/4 v11, 0x2

    .line 109
    const/4 v12, 0x3

    .line 110
    if-ne v6, v10, :cond_0

    .line 111
    .line 112
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    if-ne v6, v12, :cond_1

    .line 117
    .line 118
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    if-ne v6, v11, :cond_2

    .line 123
    .line 124
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v13, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 133
    .line 134
    invoke-direct {v13, v10, v9}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 141
    .line 142
    invoke-direct {v9, v12, v8}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 149
    .line 150
    invoke-direct {v8, v11, v7}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v7, Lha/s6;

    .line 157
    .line 158
    const/16 v8, 0x8

    .line 159
    .line 160
    invoke-direct {v7, p0, v6, v4, v8}, Lha/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    const v4, 0x7f0b04f1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    .line 177
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 178
    .line 179
    const/4 v7, 0x1

    .line 180
    invoke-direct {v6, v7, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 184
    .line 185
    .line 186
    new-instance v3, Lx9/w0;

    .line 187
    .line 188
    invoke-direct {v3}, Lx9/w0;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 192
    .line 193
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 194
    .line 195
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 196
    .line 197
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->W:Z

    .line 198
    .line 199
    const-string v8, "\u7279\u6b8a\u76d1\u542c\u6a21\u5f0f\uff1a\u76d1\u542c\u65e5\u5fd7\u65f6\u6ca1\u6709\u51fa\u73b0\u4efb\u4f55\u65e5\u5fd7\u7684\u60c5\u51b5\u4e0b\uff0c\u53ef\u4ee5\u52fe\u9009\u6b64\u9879(\u80fd\u6b63\u5e38\u76d1\u542c\u65e5\u5fd7\u7684\u8bdd\u8bf7\u4e0d\u8981\u52fe\u9009)"

    .line 200
    .line 201
    invoke-direct {v4, v8, v7, v6}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 208
    .line 209
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 210
    .line 211
    iget-boolean v6, v5, Lwa/u;->J:Z

    .line 212
    .line 213
    const-string v7, "\u5f53\u5f00\u673a\u65f6\u95f4\u4f4e\u4e8e15\u79d2\u65f6\uff0c\u7b49\u591f15\u79d2\u540e\u518d\u542f\u52a8\u65e5\u5fd7\u76d1\u542c\uff08\u67d0\u4e9b\u7cfb\u7edf\u542f\u52a8\u5feb\uff0c\u4f46\u7cfb\u7edf\u5185\u7684\u65e5\u5fd7\u670d\u52a1\u8fd8\u6ca1\u521d\u59cb\u5316\uff0c\u6240\u4ee5\u7b49\u5f85\u4e00\u4e0b)"

    .line 214
    .line 215
    invoke-direct {v4, v7, v11, v6}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 222
    .line 223
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 224
    .line 225
    iget-boolean v6, v5, Lwa/u;->K:Z

    .line 226
    .line 227
    const-string v7, "\u606f\u5c4f\u65f6\u5173\u95ed\u65e5\u5fd7\u6620\u5c04\uff0c\u4eae\u5c4f\u65f6\u91cd\u65b0\u542f\u52a8\u65e5\u5fd7\u6620\u5c04\uff0c\u5982\u679c\u60a8\u7684\u8f66\u673a\u7184\u706b\u540e\u662f\u6df1\u5ea6\u7761\u7720\u7684\u8bdd\u53ef\u4ee5\u52fe\u9009\uff0c\u5982\u9700\u5f00\u5173\u95e8\u65e5\u5fd7\u7684\u8bf7\u52ff\u52fe\u9009"

    .line 228
    .line 229
    invoke-direct {v4, v7, v12, v6}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;IZ)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 236
    .line 237
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 238
    .line 239
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 243
    .line 244
    new-instance v4, Lha/h2;

    .line 245
    .line 246
    const/4 v6, 0x3

    .line 247
    invoke-direct {v4, p0, v1, v6}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 248
    .line 249
    .line 250
    iput-object v4, v3, Lc6/g;->e:Lc6/e;

    .line 251
    .line 252
    const v1, 0x7f0b0470

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Landroid/widget/EditText;

    .line 260
    .line 261
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->D:Landroid/widget/EditText;

    .line 262
    .line 263
    iget v3, v5, Lwa/u;->r:I

    .line 264
    .line 265
    iput v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->C:I

    .line 266
    .line 267
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->D:Landroid/widget/EditText;

    .line 275
    .line 276
    new-instance v3, Lha/e2;

    .line 277
    .line 278
    const/4 v4, 0x7

    .line 279
    invoke-direct {v3, v2, v0, v4}, Lha/e2;-><init>(Landroid/view/KeyEvent$Callback;Landroid/view/View;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 283
    .line 284
    .line 285
    new-instance v1, Lha/c0;

    .line 286
    .line 287
    const/16 v2, 0xb

    .line 288
    .line 289
    invoke-direct {v1, p0, v2}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 293
    .line 294
    .line 295
    return-void
.end method
