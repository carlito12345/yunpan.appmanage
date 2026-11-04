.class public Lcom/yunpan/appmanage/ui/ActivityPermissions;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/x4;

.field public final F:Ljava/util/ArrayList;

.field public G:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H:I

.field public I:Z

.field public K:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->F:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->I:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->I:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 13
    .line 14
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e004c

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x6

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const v0, 0x7f0b0517

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "type"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 34
    .line 35
    const v0, 0x7f0b05ba

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0b03ad

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lua/l5;

    .line 54
    .line 55
    invoke-direct {v1, p0, v3}, Lua/l5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0b037d

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lua/l5;

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v1, p0, v3}, Lua/l5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0b03db

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lua/l5;

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    invoke-direct {v1, p0, v3}, Lua/l5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    const v0, 0x7f0b04f4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 103
    .line 104
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 105
    .line 106
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 107
    .line 108
    invoke-direct {v1, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lx9/x4;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lx9/x4;-><init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 127
    .line 128
    new-instance v1, Lua/m5;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lua/m5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 136
    .line 137
    new-instance v1, Lua/n5;

    .line 138
    .line 139
    invoke-direct {v1}, Lua/n5;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 143
    .line 144
    .line 145
    :cond_0
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 146
    .line 147
    const/4 v1, 0x3

    .line 148
    if-ne v0, v1, :cond_1

    .line 149
    .line 150
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 151
    .line 152
    const-string v1, "\u5ffd\u7565\u7535\u6c60\u4f18\u5316\uff08\u4e00\u822c\u4e0d\u9700\u8981\u7ed9\u8fd9\u4e2a\u6743\u9650\uff0c\u9664\u975e\u9700\u8981\u540e\u53f0\u8fd0\u884c\uff09"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_1
    if-nez v0, :cond_2

    .line 159
    .line 160
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 161
    .line 162
    const-string v1, "\u60ac\u6d6e\u7a97\uff08\u53ef\u60ac\u6d6e\u5728\u5176\u5b83\u5e94\u7528\u754c\u9762\u4e0a\u65b9\u7684\u6743\u9650\uff09"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_2
    const/4 v1, 0x4

    .line 169
    if-ne v0, v1, :cond_3

    .line 170
    .line 171
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 172
    .line 173
    const-string v1, "\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e\uff08\u53ef\u4fee\u6539\u666e\u901a\u7684\u7cfb\u7edf\u8bbe\u7f6e\uff09"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_3
    const/4 v1, 0x5

    .line 180
    if-ne v0, v1, :cond_4

    .line 181
    .line 182
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 183
    .line 184
    const-string v1, "\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e\uff08\u53ef\u4fee\u6539\u975e\u5e38\u591a\u7684\u7cfb\u7edf\u8bbe\u7f6e\uff09"

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_4
    const/4 v1, 0x2

    .line 191
    if-ne v0, v1, :cond_5

    .line 192
    .line 193
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 194
    .line 195
    const-string v1, "\u901a\u77e5\u4f7f\u7528\u6743\uff08\u53ef\u76d1\u542c\u901a\u77e5\u680f,\u63a7\u5236\u97f3\u4e50\u7b49\uff09"

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_5
    if-ne v0, v2, :cond_6

    .line 202
    .line 203
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 204
    .line 205
    const-string v1, "\u4f7f\u7528\u60c5\u51b5\u8bbf\u95ee\u6743\u9650\uff08\u6bd4\u5982\uff1a\u5e94\u7528\u5b58\u50a8\u5206\u6790\u5c31\u8981\u8fd9\u4e2a\u6743\u9650\uff09"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_6
    const/4 v1, 0x1

    .line 212
    if-ne v0, v1, :cond_7

    .line 213
    .line 214
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 215
    .line 216
    const-string v1, "\u5b89\u88c5\u5e94\u7528\uff08\u5141\u8bb8\u5b89\u88c5\u7b2c\u4e09\u65b9\u5e94\u7528\u7684\u6743\u9650\uff09"

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_7
    const/4 v1, 0x7

    .line 223
    if-ne v0, v1, :cond_8

    .line 224
    .line 225
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->C:Landroid/widget/TextView;

    .line 226
    .line 227
    const-string v1, "\u7cfb\u7edf\u65e5\u5fd7\u6743\u9650\uff08\u6bd4\u5982\uff1a\u65e5\u5fd7\u6620\u5c04\u9700\u8981\u6b64\u6743\u9650\uff09"

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    :goto_0
    new-instance v0, Lua/m5;

    .line 233
    .line 234
    invoke-direct {v0, p0}, Lua/m5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lmc/c;

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 244
    .line 245
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    new-instance v1, Lka/c;

    .line 258
    .line 259
    const/16 v2, 0x16

    .line 260
    .line 261
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public final x(Lmc/b;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x1

    .line 7
    const-string v5, "."

    .line 8
    .line 9
    const-string v6, ":"

    .line 10
    .line 11
    const-string v7, "/"

    .line 12
    .line 13
    sget-object v8, Lfa/a;->a:Lfa/b;

    .line 14
    .line 15
    invoke-virtual {v8}, Lfa/b;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    if-eqz v9, :cond_0

    .line 20
    .line 21
    invoke-virtual {v8}, Lfa/b;->c()Lcom/android/internal/app/IAppOpsService;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    iput-object v8, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lfa/o0;->a()Lfa/o0;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    iget-boolean v8, v8, Lfa/o0;->a:Z

    .line 33
    .line 34
    const-string v9, "appops"

    .line 35
    .line 36
    if-eqz v8, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lfa/o0;->a()Lfa/o0;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    iget-object v8, v8, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 43
    .line 44
    if-eqz v8, :cond_1

    .line 45
    .line 46
    new-instance v8, Lhi/c;

    .line 47
    .line 48
    invoke-static {v9}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-direct {v8, v9}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v8}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    iput-object v8, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    iget-boolean v8, v8, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 67
    .line 68
    if-eqz v8, :cond_2

    .line 69
    .line 70
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-static {v8}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    iput-object v8, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 79
    .line 80
    :cond_2
    :goto_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v8}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-interface {v8}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart_noUnInstall_noDisable()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    iget v9, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 93
    .line 94
    iget-object v10, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->F:Ljava/util/ArrayList;

    .line 95
    .line 96
    const v11, 0x7f13002f

    .line 97
    .line 98
    .line 99
    if-ne v9, v3, :cond_5

    .line 100
    .line 101
    invoke-static {}, La2/w0;->F()La2/w0;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const-string v1, "dumpsys deviceidle whitelist"

    .line 109
    .line 110
    const-wide/16 v2, 0x8ae

    .line 111
    .line 112
    invoke-static {v2, v3, v1}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget v2, v1, Lfa/a0;->a:I

    .line 117
    .line 118
    if-nez v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {v1}, Lfa/a0;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v2, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 125
    .line 126
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 127
    .line 128
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {}, Landroidx/fragment/app/o1;->a()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    if-eqz v8, :cond_29

    .line 163
    .line 164
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_29

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 179
    .line 180
    iget-object v4, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_3

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_3
    new-instance v4, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 190
    .line 191
    iget-object v5, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v6, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 194
    .line 195
    iget v3, v3, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 196
    .line 197
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    invoke-direct {v4, v5, v6, v3, v7}, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    .line 209
    .line 210
    const-string v2, "\u83b7\u53d6\u5931\u8d25"

    .line 211
    .line 212
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v1

    .line 216
    :cond_5
    const-string v12, ""

    .line 217
    .line 218
    if-ne v9, v2, :cond_12

    .line 219
    .line 220
    :try_start_0
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    const-string v8, "enabled_notification_listeners"

    .line 227
    .line 228
    invoke-static {v3, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    if-eqz v3, :cond_9

    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-nez v8, :cond_9

    .line 239
    .line 240
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    array-length v8, v3

    .line 245
    const/4 v9, 0x0

    .line 246
    :goto_2
    if-ge v9, v8, :cond_9

    .line 247
    .line 248
    aget-object v13, v3, v9

    .line 249
    .line 250
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-eqz v14, :cond_6

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_6
    invoke-virtual {v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    array-length v14, v13

    .line 262
    if-ne v14, v2, :cond_8

    .line 263
    .line 264
    aget-object v14, v13, v4

    .line 265
    .line 266
    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    if-eqz v14, :cond_7

    .line 271
    .line 272
    new-instance v14, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    aget-object v15, v13, v1

    .line 284
    .line 285
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    aget-object v15, v13, v1

    .line 292
    .line 293
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    aget-object v13, v13, v4

    .line 297
    .line 298
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    goto :goto_3

    .line 306
    :catch_0
    nop

    .line 307
    goto :goto_4

    .line 308
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    aget-object v15, v13, v1

    .line 320
    .line 321
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    aget-object v13, v13, v4

    .line 328
    .line 329
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_8
    :goto_3
    add-int/2addr v9, v4

    .line 337
    goto :goto_2

    .line 338
    :cond_9
    :goto_4
    new-instance v2, Landroid/content/Intent;

    .line 339
    .line 340
    const-string v3, "android.service.notification.NotificationListenerService"

    .line 341
    .line 342
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 350
    .line 351
    const/16 v8, 0x80

    .line 352
    .line 353
    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    if-eqz v2, :cond_29

    .line 358
    .line 359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_29

    .line 368
    .line 369
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 374
    .line 375
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 376
    .line 377
    if-eqz v8, :cond_a

    .line 378
    .line 379
    const/4 v8, 0x0

    .line 380
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    const/4 v13, -0x1

    .line 385
    if-ge v8, v9, :cond_c

    .line 386
    .line 387
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    check-cast v9, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 392
    .line 393
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 394
    .line 395
    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 396
    .line 397
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v9

    .line 403
    if-eqz v9, :cond_b

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_b
    add-int/2addr v8, v4

    .line 407
    goto :goto_6

    .line 408
    :cond_c
    const/4 v8, -0x1

    .line 409
    :goto_7
    if-eq v8, v13, :cond_f

    .line 410
    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 417
    .line 418
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 427
    .line 428
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 438
    .line 439
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    if-eqz v13, :cond_d

    .line 446
    .line 447
    new-instance v9, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 453
    .line 454
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 463
    .line 464
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 470
    .line 471
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v13

    .line 489
    check-cast v13, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 490
    .line 491
    iget-object v14, v13, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->packageAndClass:Ljava/lang/String;

    .line 492
    .line 493
    invoke-static {v14, v9, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    iput-object v3, v13, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->packageAndClass:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    check-cast v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 504
    .line 505
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 506
    .line 507
    const-string v13, "\u672a\u5b8c\u5168\u6388\u6743"

    .line 508
    .line 509
    if-eqz v3, :cond_e

    .line 510
    .line 511
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    if-nez v3, :cond_a

    .line 516
    .line 517
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    check-cast v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 522
    .line 523
    iput-boolean v1, v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 524
    .line 525
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    check-cast v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 530
    .line 531
    iput-object v13, v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->str_state:Ljava/lang/String;

    .line 532
    .line 533
    goto/16 :goto_5

    .line 534
    .line 535
    :cond_e
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-eqz v3, :cond_a

    .line 540
    .line 541
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    check-cast v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 546
    .line 547
    iput-object v13, v3, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->str_state:Ljava/lang/String;

    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 557
    .line 558
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 567
    .line 568
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 569
    .line 570
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 578
    .line 579
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 582
    .line 583
    .line 584
    move-result v9

    .line 585
    if-eqz v9, :cond_10

    .line 586
    .line 587
    new-instance v8, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 593
    .line 594
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 595
    .line 596
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 603
    .line 604
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 610
    .line 611
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    :cond_10
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 621
    .line 622
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 623
    .line 624
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 625
    .line 626
    .line 627
    move-result-object v13

    .line 628
    iget-object v13, v13, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v9

    .line 634
    if-eqz v9, :cond_11

    .line 635
    .line 636
    iget-object v9, v0, Lda/g;->A:Lda/g;

    .line 637
    .line 638
    invoke-virtual {v9}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 639
    .line 640
    .line 641
    move-result-object v9

    .line 642
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    :goto_8
    move-object v14, v9

    .line 647
    goto :goto_9

    .line 648
    :cond_11
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 649
    .line 650
    .line 651
    move-result-object v9

    .line 652
    invoke-virtual {v9}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 657
    .line 658
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 659
    .line 660
    invoke-interface {v9, v13}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 661
    .line 662
    .line 663
    move-result-object v9

    .line 664
    iget-object v9, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 665
    .line 666
    goto :goto_8

    .line 667
    :goto_9
    new-instance v9, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 668
    .line 669
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 670
    .line 671
    iget-object v15, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 672
    .line 673
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 674
    .line 675
    .line 676
    move-result v18

    .line 677
    new-instance v8, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .line 681
    .line 682
    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 683
    .line 684
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 693
    .line 694
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 695
    .line 696
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v19

    .line 703
    const/16 v16, 0x0

    .line 704
    .line 705
    const-string v17, ""

    .line 706
    .line 707
    move-object v13, v9

    .line 708
    invoke-direct/range {v13 .. v19}, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    goto/16 :goto_5

    .line 715
    .line 716
    :cond_12
    const/4 v5, 0x6

    .line 717
    const-string v6, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 718
    .line 719
    const/4 v7, 0x4

    .line 720
    const-string v11, "android.permission.PACKAGE_USAGE_STATS"

    .line 721
    .line 722
    if-ne v9, v5, :cond_13

    .line 723
    .line 724
    move-object v5, v11

    .line 725
    :goto_a
    const/4 v9, 0x0

    .line 726
    goto :goto_c

    .line 727
    :cond_13
    if-ne v9, v7, :cond_14

    .line 728
    .line 729
    const-string v5, "android.permission.WRITE_SETTINGS"

    .line 730
    .line 731
    goto :goto_a

    .line 732
    :cond_14
    if-nez v9, :cond_15

    .line 733
    .line 734
    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 735
    .line 736
    goto :goto_a

    .line 737
    :cond_15
    const/4 v5, 0x5

    .line 738
    if-ne v9, v5, :cond_16

    .line 739
    .line 740
    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    .line 741
    .line 742
    :goto_b
    const/4 v9, 0x1

    .line 743
    goto :goto_c

    .line 744
    :cond_16
    const/4 v5, 0x7

    .line 745
    if-ne v9, v5, :cond_17

    .line 746
    .line 747
    const-string v5, "android.permission.READ_LOGS"

    .line 748
    .line 749
    goto :goto_b

    .line 750
    :cond_17
    move-object v5, v6

    .line 751
    goto :goto_a

    .line 752
    :goto_c
    if-eqz v8, :cond_29

    .line 753
    .line 754
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 755
    .line 756
    .line 757
    move-result-object v8

    .line 758
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 759
    .line 760
    .line 761
    move-result v13

    .line 762
    if-eqz v13, :cond_29

    .line 763
    .line 764
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v13

    .line 768
    check-cast v13, Lcom/yunpan/appmanage/db/AppBean;

    .line 769
    .line 770
    iget-boolean v14, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->I:Z

    .line 771
    .line 772
    if-eqz v14, :cond_18

    .line 773
    .line 774
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 775
    .line 776
    .line 777
    return-void

    .line 778
    :cond_18
    iget-object v14, v13, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 779
    .line 780
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 781
    .line 782
    .line 783
    move-result v14

    .line 784
    if-eqz v14, :cond_19

    .line 785
    .line 786
    goto :goto_d

    .line 787
    :cond_19
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v14

    .line 791
    if-nez v14, :cond_1e

    .line 792
    .line 793
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 794
    .line 795
    .line 796
    move-result-object v14

    .line 797
    iget-object v14, v14, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 798
    .line 799
    iget-object v15, v13, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 800
    .line 801
    const/16 v7, 0x3000

    .line 802
    .line 803
    invoke-virtual {v14, v15, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 804
    .line 805
    .line 806
    move-result-object v7

    .line 807
    if-nez v7, :cond_1b

    .line 808
    .line 809
    :cond_1a
    :goto_e
    const/4 v7, 0x4

    .line 810
    goto :goto_d

    .line 811
    :cond_1b
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 812
    .line 813
    if-nez v7, :cond_1c

    .line 814
    .line 815
    goto :goto_e

    .line 816
    :cond_1c
    array-length v14, v7

    .line 817
    const/4 v15, 0x0

    .line 818
    :goto_f
    if-ge v15, v14, :cond_1a

    .line 819
    .line 820
    aget-object v2, v7, v15

    .line 821
    .line 822
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    if-eqz v2, :cond_1d

    .line 827
    .line 828
    goto :goto_10

    .line 829
    :cond_1d
    add-int/2addr v15, v4

    .line 830
    const/4 v2, 0x2

    .line 831
    goto :goto_f

    .line 832
    :cond_1e
    :goto_10
    if-eqz v9, :cond_20

    .line 833
    .line 834
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 839
    .line 840
    iget-object v7, v13, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 841
    .line 842
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    if-nez v2, :cond_1f

    .line 847
    .line 848
    const/4 v2, 0x1

    .line 849
    goto :goto_11

    .line 850
    :cond_1f
    const/4 v2, 0x0

    .line 851
    :goto_11
    move/from16 v26, v2

    .line 852
    .line 853
    move-object/from16 v20, v6

    .line 854
    .line 855
    move-object/from16 v25, v12

    .line 856
    .line 857
    const/4 v2, 0x2

    .line 858
    const/4 v4, 0x4

    .line 859
    const/4 v6, 0x1

    .line 860
    const/16 v19, 0x0

    .line 861
    .line 862
    goto/16 :goto_1a

    .line 863
    .line 864
    :cond_20
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 865
    .line 866
    if-eqz v2, :cond_27

    .line 867
    .line 868
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    if-eqz v2, :cond_21

    .line 873
    .line 874
    const-string v2, "android:get_usage_stats"

    .line 875
    .line 876
    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    goto :goto_12

    .line 881
    :cond_21
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    :goto_12
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 886
    .line 887
    const/16 v14, 0x1c

    .line 888
    .line 889
    const-string v15, "checkOperation"

    .line 890
    .line 891
    if-lt v7, v14, :cond_22

    .line 892
    .line 893
    :try_start_2
    iget-object v7, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 894
    .line 895
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 896
    .line 897
    .line 898
    move-result-object v7

    .line 899
    iget-object v14, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 900
    .line 901
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    iget v4, v13, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 906
    .line 907
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v4

    .line 911
    iget-object v1, v13, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 912
    .line 913
    move-object/from16 v20, v6

    .line 914
    .line 915
    :try_start_3
    new-array v6, v3, [Ljava/lang/Object;

    .line 916
    .line 917
    const/16 v19, 0x0

    .line 918
    .line 919
    aput-object v2, v6, v19

    .line 920
    .line 921
    const/4 v2, 0x1

    .line 922
    aput-object v4, v6, v2

    .line 923
    .line 924
    const/4 v2, 0x2

    .line 925
    aput-object v1, v6, v2

    .line 926
    .line 927
    invoke-static {v7, v14, v15, v6}, Lorg/lsposed/hiddenapibypass/j;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    check-cast v1, Ljava/lang/Integer;

    .line 932
    .line 933
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 934
    .line 935
    .line 936
    move-result v1

    .line 937
    const/4 v2, 0x2

    .line 938
    const/16 v19, 0x0

    .line 939
    .line 940
    goto :goto_14

    .line 941
    :catchall_0
    :goto_13
    const/4 v2, 0x2

    .line 942
    const/4 v4, 0x4

    .line 943
    const/4 v6, 0x1

    .line 944
    const/16 v19, 0x0

    .line 945
    .line 946
    goto :goto_17

    .line 947
    :catchall_1
    move-object/from16 v20, v6

    .line 948
    .line 949
    goto :goto_13

    .line 950
    :cond_22
    move-object/from16 v20, v6

    .line 951
    .line 952
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 953
    .line 954
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    new-array v4, v3, [Ljava/lang/Class;

    .line 959
    .line 960
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 961
    .line 962
    const/4 v7, 0x0

    .line 963
    aput-object v6, v4, v7

    .line 964
    .line 965
    const/4 v7, 0x1

    .line 966
    aput-object v6, v4, v7

    .line 967
    .line 968
    const-class v6, Ljava/lang/String;

    .line 969
    .line 970
    const/4 v7, 0x2

    .line 971
    aput-object v6, v4, v7

    .line 972
    .line 973
    invoke-virtual {v1, v15, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->K:Lcom/android/internal/app/IAppOpsService;

    .line 978
    .line 979
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    iget v6, v13, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 984
    .line 985
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 986
    .line 987
    .line 988
    move-result-object v6

    .line 989
    iget-object v7, v13, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 990
    .line 991
    new-array v14, v3, [Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 992
    .line 993
    const/16 v19, 0x0

    .line 994
    .line 995
    :try_start_4
    aput-object v2, v14, v19

    .line 996
    .line 997
    const/4 v2, 0x1

    .line 998
    aput-object v6, v14, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 999
    .line 1000
    const/4 v2, 0x2

    .line 1001
    :try_start_5
    aput-object v7, v14, v2

    .line 1002
    .line 1003
    invoke-virtual {v1, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    check-cast v1, Ljava/lang/Integer;

    .line 1008
    .line 1009
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1010
    .line 1011
    .line 1012
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1013
    :goto_14
    const/4 v4, 0x4

    .line 1014
    if-eqz v1, :cond_23

    .line 1015
    .line 1016
    if-ne v1, v4, :cond_24

    .line 1017
    .line 1018
    :cond_23
    const/4 v6, 0x1

    .line 1019
    goto :goto_15

    .line 1020
    :cond_24
    const/4 v6, 0x1

    .line 1021
    if-ne v1, v6, :cond_25

    .line 1022
    .line 1023
    goto :goto_17

    .line 1024
    :cond_25
    if-ne v1, v3, :cond_26

    .line 1025
    .line 1026
    :try_start_6
    const-string v1, "\u9ed8\u8ba4"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1027
    .line 1028
    goto :goto_18

    .line 1029
    :goto_15
    move-object v1, v12

    .line 1030
    const/4 v7, 0x1

    .line 1031
    goto :goto_19

    .line 1032
    :catchall_2
    :goto_16
    const/4 v4, 0x4

    .line 1033
    const/4 v6, 0x1

    .line 1034
    goto :goto_17

    .line 1035
    :catchall_3
    const/4 v2, 0x2

    .line 1036
    goto :goto_16

    .line 1037
    :catchall_4
    :cond_26
    :goto_17
    move-object v1, v12

    .line 1038
    :goto_18
    const/4 v7, 0x0

    .line 1039
    :goto_19
    move-object/from16 v25, v1

    .line 1040
    .line 1041
    move/from16 v26, v7

    .line 1042
    .line 1043
    goto :goto_1a

    .line 1044
    :cond_27
    move-object/from16 v20, v6

    .line 1045
    .line 1046
    const/4 v2, 0x2

    .line 1047
    const/4 v4, 0x4

    .line 1048
    const/4 v6, 0x1

    .line 1049
    const/16 v19, 0x0

    .line 1050
    .line 1051
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    iget-object v7, v13, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1056
    .line 1057
    iget v14, v13, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 1058
    .line 1059
    invoke-virtual {v1, v7, v14, v5}, Lcom/yunpan/appmanage/util/k;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    const-string v7, "\u5df2\u5141\u8bb8"

    .line 1064
    .line 1065
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v7

    .line 1069
    if-eqz v7, :cond_28

    .line 1070
    .line 1071
    move-object/from16 v25, v12

    .line 1072
    .line 1073
    const/16 v26, 0x1

    .line 1074
    .line 1075
    goto :goto_1a

    .line 1076
    :cond_28
    move-object/from16 v25, v1

    .line 1077
    .line 1078
    const/16 v26, 0x0

    .line 1079
    .line 1080
    :goto_1a
    new-instance v1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 1081
    .line 1082
    iget-object v7, v13, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1083
    .line 1084
    iget-object v14, v13, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1085
    .line 1086
    iget v13, v13, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 1087
    .line 1088
    move-object/from16 v21, v1

    .line 1089
    .line 1090
    move-object/from16 v22, v7

    .line 1091
    .line 1092
    move-object/from16 v23, v14

    .line 1093
    .line 1094
    move/from16 v24, v13

    .line 1095
    .line 1096
    invoke-direct/range {v21 .. v26}, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    move-object/from16 v6, v20

    .line 1103
    .line 1104
    const/4 v1, 0x0

    .line 1105
    const/4 v4, 0x1

    .line 1106
    goto/16 :goto_e

    .line 1107
    .line 1108
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1109
    .line 1110
    .line 1111
    return-void
.end method

.method public final y(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 10
    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->str_state:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lma/b;

    .line 25
    .line 26
    const/16 v2, 0x1d

    .line 27
    .line 28
    invoke-direct {v1, p0, v2, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lmc/c;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lha/l4;

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    invoke-direct {v2, p0, v0, p1, v3}, Lha/l4;-><init>(Lda/g;Ljava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
