.class public Lcom/yunpan/appmanage/ui/ActivityBootStartTask;
.super Lda/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/i0;

.field public F:Lz7/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz7/o;->l(I)Lz7/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lz7/o;->n(I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lz7/o;

    .line 17
    .line 18
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 22
    .line 23
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v1, :cond_1

    .line 31
    .line 32
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-ne v2, p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lz7/o;->k(Lz7/p;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lz7/o;->l(I)Lz7/p;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p1, v3}, Lz7/o;->k(Lz7/p;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    if-ge v1, p2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lz7/o;->k(Lz7/p;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iput-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 68
    .line 69
    iget-object p0, p0, Lda/g;->A:Lda/g;

    .line 70
    .line 71
    invoke-static {p0, p1}, Lq4/a;->P(Lda/g;Lz7/o;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/16 p1, 0x14

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 6
    .line 7
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e002b

    return v0
.end method

.method public final u()V
    .locals 8

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    new-instance v1, Lua/s0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lua/s0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0b034a

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    new-instance v1, Lua/s0;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v1, p0, v3}, Lua/s0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0b03aa

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    new-instance v1, Lua/s0;

    .line 54
    .line 55
    const/4 v4, 0x2

    .line 56
    invoke-direct {v1, p0, v4}, Lua/s0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0b037d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lua/s0;

    .line 70
    .line 71
    const/4 v4, 0x3

    .line 72
    invoke-direct {v1, p0, v4}, Lua/s0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    const v0, 0x7f0b03d0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lua/s0;

    .line 86
    .line 87
    const/4 v4, 0x4

    .line 88
    invoke-direct {v1, p0, v4}, Lua/s0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    const v0, 0x7f0b04f1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 104
    .line 105
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 106
    .line 107
    invoke-direct {v1, p0, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lx9/i0;

    .line 114
    .line 115
    invoke-direct {v0}, Lx9/i0;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 119
    .line 120
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 121
    .line 122
    invoke-static {v0}, Lq4/a;->K(Landroid/content/ContextWrapper;)Lz7/o;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 127
    .line 128
    if-nez v0, :cond_0

    .line 129
    .line 130
    new-instance v0, Lz7/o;

    .line 131
    .line 132
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 139
    const/4 v1, 0x1

    .line 140
    :goto_0
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 141
    .line 142
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-ge v0, v4, :cond_2

    .line 149
    .line 150
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 151
    .line 152
    invoke-virtual {v4, v0}, Lz7/o;->l(I)Lz7/p;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v5, "isOpen"

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_1

    .line 167
    .line 168
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lz7/o;->l(I)Lz7/p;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    :cond_1
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 187
    .line 188
    new-instance v5, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 189
    .line 190
    iget-object v6, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 191
    .line 192
    const-string v7, "name"

    .line 193
    .line 194
    invoke-static {v6, v0, v7}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-direct {v5, v6, v1}, Lcom/yunpan/appmanage/bean/StringBoolBean;-><init>(Ljava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    add-int/2addr v0, v3

    .line 205
    goto :goto_0

    .line 206
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 207
    .line 208
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 214
    .line 215
    new-instance v1, Lua/u0;

    .line 216
    .line 217
    invoke-direct {v1, p0}, Lua/u0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;)V

    .line 218
    .line 219
    .line 220
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 221
    .line 222
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-lez v0, :cond_4

    .line 227
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 229
    .line 230
    const/16 v1, 0x12

    .line 231
    .line 232
    if-lt v0, v1, :cond_4

    .line 233
    .line 234
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 235
    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v3

    .line 240
    invoke-virtual {v0, v3, v4}, Lwa/u;->g(J)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 244
    .line 245
    const-class v1, Lcom/yunpan/appmanage/service/StartService;

    .line 246
    .line 247
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->getBindNotificationListenerServicePermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_4

    .line 256
    .line 257
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-static {}, La2/w0;->M()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_3

    .line 267
    .line 268
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 269
    .line 270
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 271
    .line 272
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 273
    .line 274
    new-instance v1, Lha/db;

    .line 275
    .line 276
    const/16 v2, 0x1a

    .line 277
    .line 278
    invoke-direct {v1, v2, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_3
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-class v1, Lcom/yunpan/appmanage/service/StartService;

    .line 290
    .line 291
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->getBindNotificationListenerServicePermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v1, Lua/v0;

    .line 300
    .line 301
    invoke-direct {v1, v2}, Lua/v0;-><init>(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 305
    .line 306
    .line 307
    :cond_4
    :goto_2
    return-void
.end method

.method public final y(ILz7/s;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 6
    .line 7
    new-instance v0, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 8
    .line 9
    invoke-direct {v0, p3, v1}, Lcom/yunpan/appmanage/bean/StringBoolBean;-><init>(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lz7/o;->k(Lz7/p;)V

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 22
    .line 23
    new-instance v2, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 24
    .line 25
    invoke-direct {v2, p3, v1}, Lcom/yunpan/appmanage/bean/StringBoolBean;-><init>(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v2}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance p3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 37
    .line 38
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    sget-object v3, Lz7/r;->a:Lz7/r;

    .line 46
    .line 47
    if-ge v2, v0, :cond_4

    .line 48
    .line 49
    if-ne v2, p1, :cond_2

    .line 50
    .line 51
    if-nez p2, :cond_1

    .line 52
    .line 53
    move-object v4, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v4, p2

    .line 56
    :goto_1
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-object v3, v4

    .line 69
    :goto_2
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sub-int/2addr v0, v1

    .line 80
    if-ge v0, p1, :cond_6

    .line 81
    .line 82
    if-nez p2, :cond_5

    .line 83
    .line 84
    move-object p2, v3

    .line 85
    :cond_5
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_6
    new-instance p1, Lz7/o;

    .line 89
    .line 90
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 94
    .line 95
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    :goto_3
    iget-object p1, p0, Lda/g;->A:Lda/g;

    .line 101
    .line 102
    iget-object p2, p0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 103
    .line 104
    invoke-static {p1, p2}, Lq4/a;->P(Lda/g;Lz7/o;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
