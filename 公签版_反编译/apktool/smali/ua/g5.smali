.class public final synthetic Lua/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;
.implements Lha/a6;
.implements Lha/p2;
.implements Lcom/hjq/permissions/OnPermissionCallback;
.implements Ldb/n;
.implements Lv8/c;
.implements Lwb/b;
.implements Lu1/j;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/g5;->a:I

    iput-object p2, p0, Lua/g5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lua/g5;->a:I

    iput-object p2, p0, Lua/g5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;Ljava/lang/Object;J)V
    .locals 0

    .line 3
    const/16 p1, 0x1c

    iput p1, p0, Lua/g5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/g5;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/g5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lz1/b;

    .line 7
    .line 8
    check-cast p1, Lz1/h;

    .line 9
    .line 10
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ly1/k;

    .line 13
    .line 14
    iput-object v0, p1, Lz1/h;->o:Ly1/k;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p1, Lz1/b;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    check-cast p1, Lz1/b;

    .line 24
    .line 25
    check-cast p1, Lz1/h;

    .line 26
    .line 27
    iget v0, p1, Lz1/h;->y:I

    .line 28
    .line 29
    iget-object v1, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ly1/c;

    .line 32
    .line 33
    iget v2, v1, Ly1/c;->g:I

    .line 34
    .line 35
    add-int/2addr v0, v2

    .line 36
    iput v0, p1, Lz1/h;->y:I

    .line 37
    .line 38
    iget v0, p1, Lz1/h;->z:I

    .line 39
    .line 40
    iget v1, v1, Ly1/c;->e:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    iput v0, p1, Lz1/h;->z:I

    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    check-cast p1, Lr1/k0;

    .line 47
    .line 48
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lu7/y0;

    .line 51
    .line 52
    invoke-interface {p1, v0}, Lr1/k0;->F(Lu7/y0;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    check-cast p1, Lr1/k0;

    .line 57
    .line 58
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lr1/d0;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Lr1/k0;->x(Lr1/d0;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_4
    check-cast p1, Lr1/k0;

    .line 67
    .line 68
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ly1/t;

    .line 71
    .line 72
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 73
    .line 74
    iget-object v0, v0, Ly1/x;->Z:Lr1/b0;

    .line 75
    .line 76
    invoke-interface {p1, v0}, Lr1/k0;->m(Lr1/b0;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_5
    check-cast p1, Lr1/k0;

    .line 81
    .line 82
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lt1/c;

    .line 85
    .line 86
    invoke-interface {p1, v0}, Lr1/k0;->q(Lt1/c;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_6
    check-cast p1, Lr1/k0;

    .line 91
    .line 92
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lr1/v0;

    .line 95
    .line 96
    invoke-interface {p1, v0}, Lr1/k0;->e(Lr1/v0;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_7
    check-cast p1, Lr1/k0;

    .line 101
    .line 102
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lr1/d;

    .line 105
    .line 106
    invoke-interface {p1, v0}, Lr1/k0;->u(Lr1/d;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_8
    check-cast p1, Lr1/k0;

    .line 111
    .line 112
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Lr1/b0;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Lr1/k0;->m(Lr1/b0;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lua/g7;

    .line 4
    .line 5
    iget-object v2, p1, Lua/g7;->c:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 6
    .line 7
    sget p1, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance p1, Lha/z6;

    .line 13
    .line 14
    new-instance v7, Lkf/d;

    .line 15
    .line 16
    const/16 v0, 0x1c

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v7, v0, v2, p2, v1}, Lkf/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    const-string v3, "\u53ef\u4ee5\u5c06\u5e94\u7528\u8f6c\u4e3a\u666e\u901a\u7cfb\u7edf\u5e94\u7528 \u6216 \u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528"

    .line 23
    .line 24
    const-string v4, "\u6709\u4e9b\u8f66\u673a\u8981\u8f6c\u4e3a\u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528\u624d\u80fd\u4f7f\u7528(2\u4ee3\u54c8\u4f5bH6)"

    .line 25
    .line 26
    const-string v5, "\u666e\u901a\u7cfb\u7edf\u5e94\u7528"

    .line 27
    .line 28
    const-string v6, "\u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528"

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    move-object v1, v2

    .line 32
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public d(Lbi/a;)V
    .locals 8

    .line 1
    iget v0, p0, Lua/g5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ldb/c;

    .line 7
    .line 8
    iget-object p1, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lvb/v;

    .line 11
    .line 12
    iget-object v0, p1, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lvb/v;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {v0, p1}, Lm0/o;->l(Landroid/graphics/drawable/Drawable;I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    check-cast p1, Ldb/e;

    .line 42
    .line 43
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lua/i1;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v1, "event"

    .line 51
    .line 52
    invoke-static {p1, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "menu"

    .line 56
    .line 57
    iget-object p1, p1, Ldb/e;->c:Landroid/view/ContextMenu;

    .line 58
    .line 59
    invoke-static {p1, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lua/i1;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "getContext(...)"

    .line 71
    .line 72
    invoke-static {v2, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v4, Lvb/m;

    .line 81
    .line 82
    invoke-direct {v4, v2}, Lvb/m;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const v5, 0x104000d

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Lvb/m;->b(I)V

    .line 89
    .line 90
    .line 91
    const v5, 0x7f0801d8

    .line 92
    .line 93
    .line 94
    iput v5, v4, Lvb/m;->d:I

    .line 95
    .line 96
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v6, "getText(...)"

    .line 101
    .line 102
    invoke-static {v5, v6}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Lmb/g;->length()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v7, 0x1

    .line 111
    if-nez v5, :cond_1

    .line 112
    .line 113
    const/4 v5, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/4 v5, 0x0

    .line 116
    :goto_0
    xor-int/2addr v5, v7

    .line 117
    iput-boolean v5, v4, Lvb/m;->c:Z

    .line 118
    .line 119
    new-instance v5, Lvb/l;

    .line 120
    .line 121
    const/4 v7, 0x3

    .line 122
    invoke-direct {v5, v7, v0}, Lvb/l;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5}, Lvb/m;->a(Lte/a;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    new-instance v4, Lvb/m;

    .line 132
    .line 133
    invoke-direct {v4, v2}, Lvb/m;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    const v5, 0x1040001

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v5}, Lvb/m;->b(I)V

    .line 140
    .line 141
    .line 142
    const v5, 0x7f0801d4

    .line 143
    .line 144
    .line 145
    iput v5, v4, Lvb/m;->d:I

    .line 146
    .line 147
    iget-object v5, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 148
    .line 149
    invoke-virtual {v5}, Lmb/j;->a()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    iput-boolean v5, v4, Lvb/m;->c:Z

    .line 154
    .line 155
    new-instance v5, Lvb/l;

    .line 156
    .line 157
    const/4 v7, 0x1

    .line 158
    invoke-direct {v5, v7, v0}, Lvb/l;-><init>(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v5}, Lvb/m;->a(Lte/a;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v4, Lvb/m;

    .line 168
    .line 169
    invoke-direct {v4, v2}, Lvb/m;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    const v5, 0x1040003

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5}, Lvb/m;->b(I)V

    .line 176
    .line 177
    .line 178
    const v5, 0x7f0801d5

    .line 179
    .line 180
    .line 181
    iput v5, v4, Lvb/m;->d:I

    .line 182
    .line 183
    iget-object v5, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 184
    .line 185
    invoke-virtual {v5}, Lmb/j;->a()Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    iput-boolean v5, v4, Lvb/m;->c:Z

    .line 190
    .line 191
    new-instance v5, Lvb/l;

    .line 192
    .line 193
    const/4 v7, 0x2

    .line 194
    invoke-direct {v5, v7, v0}, Lvb/l;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v5}, Lvb/m;->a(Lte/a;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v4, Lvb/m;

    .line 204
    .line 205
    invoke-direct {v4, v2}, Lvb/m;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    const v2, 0x104000b

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v2}, Lvb/m;->b(I)V

    .line 212
    .line 213
    .line 214
    const v2, 0x7f0801d6

    .line 215
    .line 216
    .line 217
    iput v2, v4, Lvb/m;->d:I

    .line 218
    .line 219
    iget-object v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->e1:Landroid/content/ClipboardManager;

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iput-boolean v1, v4, Lvb/m;->c:Z

    .line 226
    .line 227
    new-instance v1, Lvb/l;

    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-direct {v1, v2, v0}, Lvb/l;-><init>(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v1}, Lvb/m;->a(Lte/a;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_3

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Lvb/m;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object v2, v1, Lvb/m;->b:Ljava/lang/String;

    .line 259
    .line 260
    invoke-interface {p1, v6, v6, v6, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    iget-boolean v3, v1, Lvb/m;->c:Z

    .line 265
    .line 266
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    iget-object v3, v1, Lvb/m;->e:Lua/b1;

    .line 271
    .line 272
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    iget v1, v1, Lvb/m;->d:I

    .line 277
    .line 278
    if-eqz v1, :cond_2

    .line 279
    .line 280
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_3
    return-void

    .line 285
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lv8/a;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iget-object p2, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p2, Lwa/s;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lwa/s;->r(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(Lx9/w3;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/g5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lua/v7;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lha/y3;

    .line 14
    .line 15
    iget-object v0, v0, Lua/v7;->c:Lua/x7;

    .line 16
    .line 17
    iget-object v2, v0, Lda/h;->f:Landroid/app/Activity;

    .line 18
    .line 19
    iget-object v0, v0, Lda/h;->e:Landroid/content/Context;

    .line 20
    .line 21
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v1, v2, v0}, Lha/y3;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, v1, Lha/y3;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lua/y6;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lha/d4;

    .line 40
    .line 41
    const/4 v2, 0x7

    .line 42
    invoke-direct {v1, p1, v2}, Lha/d4;-><init>(Lx9/w3;I)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lmc/c;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {p1, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v1, Lka/c;

    .line 66
    .line 67
    const/16 v2, 0x1d

    .line 68
    .line 69
    invoke-direct {v1, v2, v0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lua/y6;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v1, Lha/d4;

    .line 84
    .line 85
    const/4 v2, 0x6

    .line 86
    invoke-direct {v1, p1, v2}, Lha/d4;-><init>(Lx9/w3;I)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Lmc/c;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-direct {p1, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v1, Lka/c;

    .line 110
    .line 111
    const/16 v2, 0x1c

    .line 112
    .line 113
    invoke-direct {v1, v2, v0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 25

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->H:I

    .line 2
    .line 3
    const-string v0, "ComponentInfo{"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v2, v1, Lua/g5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityPresentation2;

    .line 10
    .line 11
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 12
    .line 13
    invoke-static {v3}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iput-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->F:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v3, "am stack list"

    .line 25
    .line 26
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget v4, v3, Lfa/a0;->a:I

    .line 31
    .line 32
    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u5c4f\u5e55\u4fe1\u606f"

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v3, v3, Lfa/a0;->b:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const-string v6, ""

    .line 56
    .line 57
    const/4 v7, -0x1

    .line 58
    move-object/from16 v21, v6

    .line 59
    .line 60
    const/16 v19, -0x1

    .line 61
    .line 62
    const/16 v20, -0x1

    .line 63
    .line 64
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_6

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Ljava/lang/String;

    .line 75
    .line 76
    const-string v9, "tack id="

    .line 77
    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    const-string v10, "x"

    .line 83
    .line 84
    const-string v11, ","

    .line 85
    .line 86
    const-string v12, "] "

    .line 87
    .line 88
    const-string v13, "]["

    .line 89
    .line 90
    const-string v14, " bounds"

    .line 91
    .line 92
    if-eqz v9, :cond_1

    .line 93
    .line 94
    :try_start_2
    const-string v9, "displayId"

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_1

    .line 101
    .line 102
    const-string v7, "ack id="

    .line 103
    .line 104
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    add-int/lit8 v7, v7, 0x7

    .line 109
    .line 110
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    const-string v9, "displayId="

    .line 127
    .line 128
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    add-int/lit8 v9, v9, 0xa

    .line 133
    .line 134
    const-string v14, " userId"

    .line 135
    .line 136
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    invoke-virtual {v8, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    add-int/lit8 v13, v13, 0x2

    .line 157
    .line 158
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    invoke-virtual {v8, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    invoke-virtual {v12, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v21

    .line 170
    const-string v10, "="

    .line 171
    .line 172
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    add-int/lit8 v10, v10, 0x1

    .line 177
    .line 178
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    iget-object v10, v2, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->E:Ljava/util/HashSet;

    .line 191
    .line 192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-object/from16 v22, v0

    .line 200
    .line 201
    move/from16 v20, v8

    .line 202
    .line 203
    move/from16 v19, v9

    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :goto_1
    move-object/from16 v2, p1

    .line 208
    .line 209
    goto/16 :goto_6

    .line 210
    .line 211
    :catch_0
    move-exception v0

    .line 212
    goto :goto_1

    .line 213
    :cond_1
    const-string v9, "taskId="

    .line 214
    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-eqz v9, :cond_5

    .line 220
    .line 221
    const-string v9, "askId="

    .line 222
    .line 223
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    add-int/lit8 v9, v9, 0x6

    .line 228
    .line 229
    const-string v15, ":"

    .line 230
    .line 231
    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    invoke-virtual {v8, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    add-int/lit8 v9, v9, 0x2

    .line 252
    .line 253
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v18

    .line 265
    const-string v9, ": "

    .line 266
    .line 267
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    add-int/lit8 v9, v9, 0x2

    .line 272
    .line 273
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v14

    .line 281
    const-string v9, "/"

    .line 282
    .line 283
    invoke-virtual {v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    const/4 v10, 0x0

    .line 288
    invoke-virtual {v14, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    if-eqz v9, :cond_2

    .line 297
    .line 298
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    add-int/lit8 v9, v9, 0xe

    .line 303
    .line 304
    const-string v10, "}"

    .line 305
    .line 306
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    move-object/from16 v17, v8

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_2
    move-object/from16 v17, v6

    .line 318
    .line 319
    :goto_2
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    invoke-virtual {v8}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-interface {v8, v13}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    if-nez v8, :cond_4

    .line 332
    .line 333
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 334
    .line 335
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 336
    .line 337
    iget-object v9, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    if-eqz v9, :cond_3

    .line 344
    .line 345
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 346
    .line 347
    :goto_3
    move-object/from16 v16, v8

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_3
    move-object/from16 v16, v13

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_4
    iget-object v8, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 354
    .line 355
    goto :goto_3

    .line 356
    :goto_4
    new-instance v12, Lcom/yunpan/appmanage/bean/StackBean;

    .line 357
    .line 358
    move-object v8, v12

    .line 359
    move/from16 v9, v19

    .line 360
    .line 361
    move-object/from16 v10, v21

    .line 362
    .line 363
    move v11, v7

    .line 364
    move-object/from16 v22, v0

    .line 365
    .line 366
    move-object v0, v12

    .line 367
    move/from16 v12, v20

    .line 368
    .line 369
    move-object/from16 v23, v13

    .line 370
    .line 371
    move v13, v15

    .line 372
    move-object/from16 v24, v14

    .line 373
    .line 374
    move-object/from16 v14, v16

    .line 375
    .line 376
    move-object/from16 v15, v23

    .line 377
    .line 378
    move-object/from16 v16, v24

    .line 379
    .line 380
    invoke-direct/range {v8 .. v18}, Lcom/yunpan/appmanage/bean/StackBean;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_5
    move-object/from16 v22, v0

    .line 388
    .line 389
    :goto_5
    move-object/from16 v0, v22

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_6
    move-object/from16 v2, p1

    .line 394
    .line 395
    invoke-virtual {v2, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 403
    .line 404
    .line 405
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 409
    .line 410
    .line 411
    :goto_7
    return-void
.end method

.method public h(I[Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lwb/n;

    .line 4
    .line 5
    iget-object v0, p1, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v2, p2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_0

    .line 17
    .line 18
    aget-object v4, p2, v3

    .line 19
    .line 20
    check-cast v4, Lwb/m;

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, La2/e0;

    .line 32
    .line 33
    const/16 v2, 0x11

    .line 34
    .line 35
    invoke-direct {p2, p1, v0, v1, v2}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lua/g5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lua/i1;

    .line 4
    .line 5
    iget-object p1, p1, Lua/i1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lua/x7;

    .line 8
    .line 9
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lda/h;->l(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v6, v1, Lua/g5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iget v7, v1, Lua/g5;->a:I

    .line 12
    .line 13
    packed-switch v7, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    sget v7, Lcom/yunpan/appmanage/ui/ActivityUsers;->G:I

    .line 17
    .line 18
    move-object v9, v6

    .line 19
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityUsers;

    .line 20
    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_b

    .line 25
    .line 26
    if-ne v0, v5, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    if-ne v0, v3, :cond_1

    .line 31
    .line 32
    new-instance v2, Lha/z6;

    .line 33
    .line 34
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 35
    .line 36
    new-instance v3, Ld3/g;

    .line 37
    .line 38
    const/16 v4, 0x14

    .line 39
    .line 40
    invoke-direct {v3, v0, v4, v9}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v14, "\u786e\u5b9a"

    .line 44
    .line 45
    const-string v15, "\u53d6\u6d88"

    .line 46
    .line 47
    const-string v11, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    .line 48
    .line 49
    const-string v12, "\u65b0\u7528\u6237"

    .line 50
    .line 51
    const-string v13, ""

    .line 52
    .line 53
    move-object v8, v2

    .line 54
    move-object/from16 v16, v3

    .line 55
    .line 56
    invoke-direct/range {v8 .. v16}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_1
    iget-object v3, v9, Lcom/yunpan/appmanage/ui/ActivityUsers;->E:Ljava/util/HashMap;

    .line 65
    .line 66
    const-string v6, ")"

    .line 67
    .line 68
    const-string v7, "("

    .line 69
    .line 70
    if-ne v0, v2, :cond_4

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ne v2, v5, :cond_2

    .line 77
    .line 78
    const-string v0, "\u76ee\u524d\u53ea\u6709\u4e00\u4e2a\u7528\u6237\uff0c\u7981\u6b62\u5220\u9664"

    .line 79
    .line 80
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Ljava/lang/String;

    .line 109
    .line 110
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    check-cast v13, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-direct {v8, v10, v5}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_3
    new-instance v2, Lha/ha;

    .line 159
    .line 160
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 161
    .line 162
    new-instance v13, Lua/p7;

    .line 163
    .line 164
    invoke-direct {v13, v9, v0, v12, v4}, Lua/p7;-><init>(Lcom/yunpan/appmanage/ui/ActivityUsers;ILjava/util/ArrayList;I)V

    .line 165
    .line 166
    .line 167
    const/4 v11, 0x0

    .line 168
    move-object v8, v2

    .line 169
    invoke-direct/range {v8 .. v13}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_4
    const/4 v2, 0x4

    .line 178
    if-ne v0, v2, :cond_7

    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-ne v2, v5, :cond_5

    .line 185
    .line 186
    const-string v0, "\u76ee\u524d\u53ea\u6709\u4e00\u4e2a\u7528\u6237\uff0c\u65e0\u9700\u5207\u6362"

    .line 187
    .line 188
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_3

    .line 192
    .line 193
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_6

    .line 211
    .line 212
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Ljava/lang/String;

    .line 217
    .line 218
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    check-cast v13, Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-direct {v8, v10, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_6
    new-instance v2, Lha/ha;

    .line 267
    .line 268
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 269
    .line 270
    new-instance v13, Lua/p7;

    .line 271
    .line 272
    invoke-direct {v13, v9, v0, v12, v5}, Lua/p7;-><init>(Lcom/yunpan/appmanage/ui/ActivityUsers;ILjava/util/ArrayList;I)V

    .line 273
    .line 274
    .line 275
    const/4 v11, 0x0

    .line 276
    move-object v8, v2

    .line 277
    invoke-direct/range {v8 .. v13}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_7
    const/4 v2, 0x5

    .line 285
    if-ne v0, v2, :cond_a

    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-ne v0, v5, :cond_8

    .line 292
    .line 293
    const-string v0, "\u76ee\u524d\u53ea\u6709\u4e00\u4e2a\u7528\u6237\uff0c\u65e0\u9700\u6b64"

    .line 294
    .line 295
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_8
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-static {}, La2/w0;->O()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_9

    .line 309
    .line 310
    const-string v0, "\u9700\u8fde\u63a5adb"

    .line 311
    .line 312
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_9
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 317
    .line 318
    invoke-virtual {v9, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_a
    const-string v0, "\u6682\u672a\u5f00\u653e"

    .line 323
    .line 324
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_b
    :goto_2
    const-string v2, ""

    .line 329
    .line 330
    invoke-virtual {v9, v0, v2}, Lcom/yunpan/appmanage/ui/ActivityUsers;->x(ILjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :goto_3
    return-void

    .line 334
    :pswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->L:I

    .line 335
    .line 336
    check-cast v6, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;

    .line 337
    .line 338
    if-nez v0, :cond_c

    .line 339
    .line 340
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    :goto_4
    return-void

    .line 348
    :pswitch_2
    sget v2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->I:I

    .line 349
    .line 350
    check-cast v6, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;

    .line 351
    .line 352
    if-nez v0, :cond_d

    .line 353
    .line 354
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    :goto_5
    return-void

    .line 362
    :pswitch_3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->K:I

    .line 363
    .line 364
    check-cast v6, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;

    .line 365
    .line 366
    if-nez v0, :cond_e

    .line 367
    .line 368
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 369
    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    :goto_6
    return-void

    .line 376
    :pswitch_4
    sget v2, Lcom/yunpan/appmanage/ui/ActivityStart;->G:I

    .line 377
    .line 378
    check-cast v6, Lcom/yunpan/appmanage/ui/ActivityStart;

    .line 379
    .line 380
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    :try_start_0
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 384
    .line 385
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 390
    .line 391
    iget-object v3, v6, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 392
    .line 393
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    sub-int/2addr v3, v5

    .line 398
    if-ne v0, v3, :cond_f

    .line 399
    .line 400
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 401
    .line 402
    if-nez v3, :cond_f

    .line 403
    .line 404
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 405
    .line 406
    invoke-virtual {v2, v0}, Lc6/g;->C(I)V

    .line 407
    .line 408
    .line 409
    iget-object v0, v6, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 410
    .line 411
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivityStart;->F:Ljava/util/ArrayList;

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_8

    .line 417
    .line 418
    :catch_0
    move-exception v0

    .line 419
    goto :goto_7

    .line 420
    :cond_f
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    invoke-static {}, La2/w0;->O()Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-nez v3, :cond_10

    .line 430
    .line 431
    const-string v0, "\u65e0\u6743\u9650\u66f4\u6539\u72b6\u6001(\u9700root\u6216adb)"

    .line 432
    .line 433
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_10
    new-instance v3, Landroid/content/ComponentName;

    .line 438
    .line 439
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 440
    .line 441
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 442
    .line 443
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 444
    .line 445
    invoke-direct {v3, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-eq v3, v5, :cond_11

    .line 457
    .line 458
    if-nez v3, :cond_12

    .line 459
    .line 460
    :cond_11
    const/4 v4, 0x1

    .line 461
    :cond_12
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 462
    .line 463
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 464
    .line 465
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 466
    .line 467
    and-int/2addr v3, v5

    .line 468
    if-eqz v3, :cond_13

    .line 469
    .line 470
    if-eqz v4, :cond_13

    .line 471
    .line 472
    new-instance v3, Lha/z6;

    .line 473
    .line 474
    iget-object v9, v6, Lda/g;->A:Lda/g;

    .line 475
    .line 476
    const-string v10, "\u6b64\u5e94\u7528\u662f\u7cfb\u7edf\u5e94\u7528\uff0c\u4f60\u786e\u5b9a\u8981\u7981\u6b62\u6b64APP\u7684\u5f00\u673a\u81ea\u542f\u52a8\uff1f\uff1f\uff1f\n\n\u8fd9\u662f\u975e\u5e38\u5371\u9669\u7684\uff01\uff01\uff01\u5982\u679c\u4f60\u6267\u610f\u8981\u8fd9\u6837\u505a\u6211\u4e5f\u4e0d\u62e6\u4f60\uff01\uff01\uff01"

    .line 477
    .line 478
    const-string v11, ""

    .line 479
    .line 480
    const-string v12, "\u7b97\u4e86"

    .line 481
    .line 482
    const-string v13, "\u786e\u5b9a"

    .line 483
    .line 484
    new-instance v14, Lkf/f;

    .line 485
    .line 486
    invoke-direct {v14, v6, v2, v4, v0}, Lkf/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityStart;Landroid/content/pm/ResolveInfo;ZI)V

    .line 487
    .line 488
    .line 489
    move-object v7, v3

    .line 490
    move-object v8, v9

    .line 491
    invoke-direct/range {v7 .. v14}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 495
    .line 496
    .line 497
    goto :goto_8

    .line 498
    :cond_13
    invoke-virtual {v6, v2, v4, v0}, Lcom/yunpan/appmanage/ui/ActivityStart;->x(Landroid/content/pm/ResolveInfo;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .line 500
    .line 501
    goto :goto_8

    .line 502
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    .line 504
    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string v3, "\u51fa\u9519\uff1a"

    .line 508
    .line 509
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :goto_8
    return-void

    .line 527
    :pswitch_5
    sget v2, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->G:I

    .line 528
    .line 529
    check-cast v6, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;

    .line 530
    .line 531
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    if-nez v0, :cond_15

    .line 535
    .line 536
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 537
    .line 538
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_14

    .line 543
    .line 544
    const-string v0, "\u60a8\u672c\u8eab\u5df2\u6709root\u6743\u9650\u4e86"

    .line 545
    .line 546
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_9

    .line 550
    .line 551
    :cond_14
    new-instance v0, Lua/v0;

    .line 552
    .line 553
    const/16 v2, 0x1c

    .line 554
    .line 555
    invoke-direct {v0, v2}, Lua/v0;-><init>(I)V

    .line 556
    .line 557
    .line 558
    new-instance v2, Lmc/c;

    .line 559
    .line 560
    invoke-direct {v2, v4, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 564
    .line 565
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-virtual {v0, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    new-instance v2, Lka/c;

    .line 578
    .line 579
    const/16 v3, 0x1b

    .line 580
    .line 581
    invoke-direct {v2, v3, v6}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_9

    .line 588
    .line 589
    :cond_15
    if-ne v0, v5, :cond_17

    .line 590
    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .line 595
    .line 596
    iget-object v3, v6, Lda/g;->A:Lda/g;

    .line 597
    .line 598
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    const-string v3, "/EnableAccSeccompRoot"

    .line 610
    .line 611
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    if-eqz v2, :cond_16

    .line 623
    .line 624
    new-instance v2, Ljava/io/File;

    .line 625
    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    iget-object v5, v6, Lda/g;->A:Lda/g;

    .line 632
    .line 633
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_17

    .line 659
    .line 660
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 661
    .line 662
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    check-cast v2, Lx9/l3;

    .line 667
    .line 668
    const v3, 0x7f080237

    .line 669
    .line 670
    .line 671
    iput v3, v2, Lx9/l3;->a:I

    .line 672
    .line 673
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 674
    .line 675
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 676
    .line 677
    .line 678
    goto :goto_9

    .line 679
    :cond_16
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 680
    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    iget-object v5, v6, Lda/g;->A:Lda/g;

    .line 687
    .line 688
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v5

    .line 696
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-eqz v2, :cond_17

    .line 714
    .line 715
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 716
    .line 717
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    check-cast v2, Lx9/l3;

    .line 722
    .line 723
    const v3, 0x7f080234

    .line 724
    .line 725
    .line 726
    iput v3, v2, Lx9/l3;->a:I

    .line 727
    .line 728
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 729
    .line 730
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/m1;->e(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 731
    .line 732
    .line 733
    :catch_1
    :cond_17
    :goto_9
    return-void

    .line 734
    :pswitch_6
    check-cast v6, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;

    .line 735
    .line 736
    iget-object v7, v6, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->D:Lx9/m2;

    .line 737
    .line 738
    invoke-virtual {v7, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v7

    .line 742
    check-cast v7, Lua/p2;

    .line 743
    .line 744
    if-nez v7, :cond_18

    .line 745
    .line 746
    goto/16 :goto_a

    .line 747
    .line 748
    :cond_18
    iget-boolean v8, v6, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->E:Z

    .line 749
    .line 750
    const-string v9, "\u5168\u5c4f(\u6709\u8f66\u6807)"

    .line 751
    .line 752
    const-string v10, "\u5168\u5c4f"

    .line 753
    .line 754
    if-eqz v8, :cond_1a

    .line 755
    .line 756
    iget-boolean v2, v7, Lua/p2;->c:Z

    .line 757
    .line 758
    if-eqz v2, :cond_19

    .line 759
    .line 760
    xor-int/2addr v2, v5

    .line 761
    iput-boolean v2, v7, Lua/p2;->c:Z

    .line 762
    .line 763
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->D:Lx9/m2;

    .line 764
    .line 765
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 766
    .line 767
    .line 768
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 769
    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    .line 771
    .line 772
    const-string v3, "am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName \'"

    .line 773
    .line 774
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    iget-object v3, v7, Lua/p2;->b:Ljava/lang/String;

    .line 778
    .line 779
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    const-string v3, "\' --ei appCentered 1"

    .line 783
    .line 784
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    const/4 v3, 0x0

    .line 792
    invoke-virtual {v0, v2, v3}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 793
    .line 794
    .line 795
    goto :goto_a

    .line 796
    :cond_19
    new-array v2, v3, [Ljava/lang/String;

    .line 797
    .line 798
    aput-object v10, v2, v4

    .line 799
    .line 800
    aput-object v9, v2, v5

    .line 801
    .line 802
    new-instance v9, Lha/ja;

    .line 803
    .line 804
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    new-instance v8, Lha/v1;

    .line 809
    .line 810
    const/16 v3, 0xb

    .line 811
    .line 812
    invoke-direct {v8, v6, v7, v0, v3}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 813
    .line 814
    .line 815
    move-object v3, v9

    .line 816
    move-object v4, v6

    .line 817
    move-object v5, v6

    .line 818
    move-object/from16 v6, p2

    .line 819
    .line 820
    move-object v7, v2

    .line 821
    invoke-direct/range {v3 .. v8}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 825
    .line 826
    .line 827
    goto :goto_a

    .line 828
    :cond_1a
    new-array v0, v2, [Ljava/lang/String;

    .line 829
    .line 830
    aput-object v10, v0, v4

    .line 831
    .line 832
    aput-object v9, v0, v5

    .line 833
    .line 834
    const-string v2, "\u53d6\u6d88\u5168\u5c4f"

    .line 835
    .line 836
    aput-object v2, v0, v3

    .line 837
    .line 838
    new-instance v2, Lha/ja;

    .line 839
    .line 840
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    new-instance v8, Lma/b;

    .line 845
    .line 846
    const/16 v3, 0x1a

    .line 847
    .line 848
    invoke-direct {v8, v6, v3, v7}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    move-object v3, v2

    .line 852
    move-object v4, v6

    .line 853
    move-object v5, v6

    .line 854
    move-object/from16 v6, p2

    .line 855
    .line 856
    move-object v7, v0

    .line 857
    invoke-direct/range {v3 .. v8}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 861
    .line 862
    .line 863
    :goto_a
    return-void

    .line 864
    nop

    .line 865
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
