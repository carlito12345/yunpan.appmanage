.class public final synthetic Lcom/hjq/permissions/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/permissions/core/OnPermissionFragmentCallback;
.implements Lh2/k;
.implements Lv8/c;
.implements Lha/he;
.implements Lha/ea;
.implements Lc6/f;
.implements Lc6/e;
.implements Lfa/y;
.implements Lec/d;
.implements Lmb/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/hjq/permissions/b;->a:I

    iput-object p1, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfa/x;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/u9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p1, Lfa/x;->a:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v1, p1, Lfa/x;->b:I

    .line 32
    .line 33
    const/16 v2, -0x6f

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "\u5b89\u88c5\u5931\u8d25\uff0c\u8c03\u7528\u5b89\u88c5\u5668\u6765\u5b89\u88c5\n"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 64
    .line 65
    iget p1, p1, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 66
    .line 67
    iget-object v1, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    const-string p1, "\u5b89\u88c5\u4e2d"

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lha/u9;->c(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lma/h;->a:Lma/i;

    .line 79
    .line 80
    new-instance v2, Lma/c;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {v2, v0, v3}, Lma/c;-><init>(Lha/u9;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1, v2}, Lma/i;->c(Ljava/lang/String;Lma/g;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {p1, v1}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 12

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    iget v6, p0, Lcom/hjq/permissions/b;->a:I

    .line 13
    .line 14
    sparse-switch v6, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->H:I

    .line 18
    .line 19
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityPresentation2;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lf2/e0;

    .line 25
    .line 26
    check-cast v4, Lcom/yunpan/appmanage/bean/StackBean;

    .line 27
    .line 28
    check-cast v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0, v5, p1, v4, v3}, Lf2/e0;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation2;ILcom/yunpan/appmanage/bean/StackBean;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lmc/c;

    .line 34
    .line 35
    invoke-direct {p1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lua/t5;

    .line 53
    .line 54
    invoke-direct {v0, v5, v2}, Lua/t5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation2;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :sswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->H:I

    .line 62
    .line 63
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityPresentation;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v0, Lf2/e0;

    .line 69
    .line 70
    move-object v8, v4

    .line 71
    check-cast v8, Ljava/util/ArrayList;

    .line 72
    .line 73
    move-object v10, v3

    .line 74
    check-cast v10, Lcom/yunpan/appmanage/bean/PresentationBean;

    .line 75
    .line 76
    const/4 v11, 0x3

    .line 77
    move-object v6, v0

    .line 78
    move-object v7, v5

    .line 79
    move v9, p1

    .line 80
    invoke-direct/range {v6 .. v11}, Lf2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Lmc/c;

    .line 84
    .line 85
    invoke-direct {p1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance v0, Lua/r5;

    .line 103
    .line 104
    invoke-direct {v0, v5, v2}, Lua/r5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :sswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 112
    .line 113
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance v2, Lz7/s;

    .line 119
    .line 120
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 121
    .line 122
    .line 123
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    const-string v7, "isOpen"

    .line 126
    .line 127
    invoke-virtual {v2, v7, v6}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    .line 129
    .line 130
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 131
    .line 132
    iget v6, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 133
    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v2, v1, v6}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v2, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    check-cast v3, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 155
    .line 156
    const-string v0, "pack"

    .line 157
    .line 158
    invoke-virtual {v2, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 162
    .line 163
    const/4 v0, -0x1

    .line 164
    invoke-virtual {v5, v0, v2, p1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :sswitch_2
    check-cast v5, Lha/a9;

    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 179
    .line 180
    iget-object v6, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v6, "\uff08"

    .line 186
    .line 187
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    check-cast v3, [Ljava/lang/String;

    .line 191
    .line 192
    aget-object v6, v3, p1

    .line 193
    .line 194
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v6, "\uff09"

    .line 198
    .line 199
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v5, v2}, Lha/a9;->b(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v6, Lz7/s;

    .line 210
    .line 211
    invoke-direct {v6}, Lz7/s;-><init>()V

    .line 212
    .line 213
    .line 214
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v6, v1, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 221
    .line 222
    .line 223
    const-string v1, "str1"

    .line 224
    .line 225
    aget-object p1, v3, p1

    .line 226
    .line 227
    invoke-virtual {v6, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object p1, v5, Lha/a9;->s:Lz7/s;

    .line 231
    .line 232
    invoke-virtual {p1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string v0, "event"

    .line 236
    .line 237
    invoke-virtual {p1, v0, v6}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :sswitch_3
    check-cast v5, Lha/i;

    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    check-cast v4, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 253
    .line 254
    iput-object p1, v5, Lha/i;->i:Ljava/lang/Object;

    .line 255
    .line 256
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 257
    .line 258
    check-cast v3, Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    nop

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public c(ILandroid/view/View;)Z
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lha/ba;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v6, Lha/fa;

    .line 9
    .line 10
    new-instance v5, Lha/v1;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/content/ClipboardManager;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v5, p2, p1, v0, v1}, Lha/v1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p2, Lha/a4;->b:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v4, p1

    .line 27
    check-cast v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v0, v6

    .line 31
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method public d(ILr1/r0;[I)Lu7/y0;
    .locals 12

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    const-string v0, "initialCapacity"

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {v1, v0}, Lu7/q;->c(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    :goto_0
    iget v1, p2, Lr1/r0;->a:I

    .line 15
    .line 16
    if-ge v9, v1, :cond_1

    .line 17
    .line 18
    new-instance v11, Lh2/j;

    .line 19
    .line 20
    aget v6, p3, v9

    .line 21
    .line 22
    iget-object v1, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v7, v1

    .line 25
    check-cast v7, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v8, v1

    .line 30
    check-cast v8, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v5, v1

    .line 35
    check-cast v5, Lh2/i;

    .line 36
    .line 37
    move-object v1, v11

    .line 38
    move v2, p1

    .line 39
    move-object v3, p2

    .line 40
    move v4, v9

    .line 41
    invoke-direct/range {v1 .. v8}, Lh2/j;-><init>(ILr1/r0;ILh2/i;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    array-length v1, v0

    .line 45
    add-int/lit8 v2, v10, 0x1

    .line 46
    .line 47
    invoke-static {v1, v2}, Lu7/a0;->f(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    array-length v3, v0

    .line 52
    if-gt v1, v3, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    aput-object v11, v0, v10

    .line 60
    .line 61
    add-int/lit8 v9, v9, 0x1

    .line 62
    .line 63
    move v10, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v10, v0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public e(Lv8/a;Landroid/view/View;)V
    .locals 4

    .line 1
    check-cast p2, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lha/n6;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "\u505c\u6b62\u76d1\u542c"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v3, p1, Lha/a4;->b:Landroid/content/Context;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 33
    .line 34
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 35
    .line 36
    invoke-direct {p2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const/high16 v0, 0x10200000

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-static {v0, v3, p2}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    iget-object p1, p1, Lha/n6;->j:Lx9/b3;

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "Logcat"

    .line 58
    .line 59
    invoke-static {p1}, Lv8/b;->c(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Lif/a;->F0(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const v0, 0x7f0b05c0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Landroid/widget/TextView;

    .line 81
    .line 82
    iget-object p1, p1, Lha/n6;->k:Lg0/e;

    .line 83
    .line 84
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 85
    .line 86
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->W:Z

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v1, Lfa/c0;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {v1, p1, v0, v3}, Lfa/c0;-><init>(Lg0/e;ZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Lmc/c;

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v0, Lha/h3;

    .line 121
    .line 122
    invoke-direct {v0, v2, p2}, Lha/h3;-><init>(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public f(ILmb/h;Lnb/b;)V
    .locals 2

    .line 1
    iget p1, p2, Lmb/h;->c:I

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    iget-object v0, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lu1/p;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Leb/c;

    .line 11
    .line 12
    invoke-virtual {v0, p2, p3, p1, v1}, Lu1/p;->d(Ljava/lang/CharSequence;IILeb/c;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    float-to-double p1, p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    double-to-int p1, p1

    .line 22
    iget-object p2, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, Landroidx/leanback/widget/i;

    .line 25
    .line 26
    iget p3, p2, Landroidx/leanback/widget/i;->b:I

    .line 27
    .line 28
    if-le p1, p3, :cond_0

    .line 29
    .line 30
    iput p1, p2, Landroidx/leanback/widget/i;->b:I

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v1, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, v1, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, v1, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iget v7, v1, Lcom/hjq/permissions/b;->a:I

    .line 12
    .line 13
    packed-switch v7, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 17
    .line 18
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v7, ""

    .line 25
    .line 26
    move-object v9, v5

    .line 27
    move-object v10, v9

    .line 28
    move-object v11, v7

    .line 29
    const/4 v8, 0x0

    .line 30
    :goto_0
    move-object v12, v4

    .line 31
    check-cast v12, Lba/r;

    .line 32
    .line 33
    const-string v13, "acw_sc__v2"

    .line 34
    .line 35
    const-string v14, "text"

    .line 36
    .line 37
    const-string v15, "123pan.com"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v3, 0x2

    .line 41
    if-nez v8, :cond_0

    .line 42
    .line 43
    sget-object v9, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 44
    .line 45
    iput-object v5, v9, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 46
    .line 47
    :goto_1
    const/4 v3, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    if-gt v8, v3, :cond_1

    .line 50
    .line 51
    sget-object v9, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 52
    .line 53
    invoke-static {v8}, Lcom/yunpan/appmanage/util/f0;->a(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v16

    .line 57
    invoke-static/range {v16 .. v16}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, v9, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-ne v8, v6, :cond_a

    .line 65
    .line 66
    sget-object v3, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 67
    .line 68
    iput-object v5, v3, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 69
    .line 70
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const-string v9, "123pan.cn"

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v15, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iput-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v12}, Lba/r;->a()V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const-string v5, "123865.com"

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iput-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v12}, Lba/r;->a()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iput-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v12}, Lba/r;->a()V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    sget-object v3, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 135
    .line 136
    invoke-static {v8}, Lcom/yunpan/appmanage/util/f0;->a(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-static {v5}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    iput-object v5, v3, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :goto_2
    add-int/2addr v8, v3

    .line 148
    :try_start_0
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v5, Ll9/a;

    .line 151
    .line 152
    invoke-direct {v5, v3}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v3, v5, Lm9/e;->i:Lk9/a;

    .line 156
    .line 157
    const-string v9, "User-Agent"

    .line 158
    .line 159
    const-string v6, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 160
    .line 161
    invoke-virtual {v3, v9, v6}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v6, "Referer"

    .line 165
    .line 166
    iget-object v9, v12, Lba/r;->c:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v3, v6, v9}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v3, v12, Lba/r;->i:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-nez v3, :cond_5

    .line 178
    .line 179
    const-string v3, "Cookie"

    .line 180
    .line 181
    iget-object v6, v12, Lba/r;->i:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v5, v3, v6}, Lm9/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catch_0
    nop

    .line 188
    goto :goto_4

    .line 189
    :cond_5
    :goto_3
    invoke-virtual {v5}, Lm9/e;->a()Lokhttp3/Response;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-nez v5, :cond_6

    .line 198
    .line 199
    :goto_4
    const/4 v9, 0x0

    .line 200
    goto :goto_7

    .line 201
    :cond_6
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    if-nez v10, :cond_7

    .line 206
    .line 207
    :goto_5
    const/4 v3, 0x0

    .line 208
    goto :goto_6

    .line 209
    :cond_7
    invoke-virtual {v10}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v5}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_8

    .line 222
    .line 223
    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_8

    .line 232
    .line 233
    const-string v5, "<html><script>"

    .line 234
    .line 235
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_8

    .line 240
    .line 241
    invoke-static {v11}, Lcom/bumptech/glide/c;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iput-object v3, v12, Lba/r;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_8
    :goto_6
    move-object v9, v3

    .line 249
    :goto_7
    if-eqz v9, :cond_9

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_9
    const/4 v5, 0x0

    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_a
    :goto_8
    if-nez v9, :cond_b

    .line 256
    .line 257
    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u5730\u5740"

    .line 258
    .line 259
    :goto_9
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_23

    .line 263
    .line 264
    :cond_b
    invoke-virtual {v10}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v10}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v4}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    check-cast v0, Ljava/lang/String;

    .line 285
    .line 286
    const-string v8, "UTF-8"

    .line 287
    .line 288
    const-string v10, "/"

    .line 289
    .line 290
    const-string v14, "?"

    .line 291
    .line 292
    const-string v6, "."

    .line 293
    .line 294
    if-eqz v5, :cond_3b

    .line 295
    .line 296
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_c

    .line 301
    .line 302
    const-string v0, "\u51fa\u9519\uff1a\u65e0\u6cd5\u6253\u5f00\u6b64\u5730\u5740"

    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_c
    const-string v3, "https://qing.mvvs.cn"

    .line 306
    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    const/4 v4, 0x6

    .line 312
    const-string v5, "\""

    .line 313
    .line 314
    if-nez v3, :cond_32

    .line 315
    .line 316
    const-string v3, "https://dudu-lucky.com"

    .line 317
    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_32

    .line 323
    .line 324
    const-string v3, "https://lecoauto.com"

    .line 325
    .line 326
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_d

    .line 331
    .line 332
    goto/16 :goto_1a

    .line 333
    .line 334
    :cond_d
    const-string v3, "sgwbox.com"

    .line 335
    .line 336
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_e

    .line 341
    .line 342
    iput-object v7, v12, Lba/r;->m:Ljava/lang/String;

    .line 343
    .line 344
    const/16 v0, 0x8

    .line 345
    .line 346
    iput v0, v12, Lba/r;->a:I

    .line 347
    .line 348
    invoke-static {v12, v11}, Lq4/a;->m(Lba/r;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 356
    .line 357
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_23

    .line 364
    .line 365
    :cond_e
    const-string v3, "4275.com"

    .line 366
    .line 367
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eqz v3, :cond_10

    .line 372
    .line 373
    iput v4, v12, Lba/r;->a:I

    .line 374
    .line 375
    new-instance v0, Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v3, "<h2>"

    .line 381
    .line 382
    const-string v4, "</h2>"

    .line 383
    .line 384
    const/4 v6, 0x0

    .line 385
    invoke-static {v11, v3, v4, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-eqz v4, :cond_f

    .line 394
    .line 395
    const-string v0, "\u8bfb\u53d6\u6570\u636e\u51fa\u9519"

    .line 396
    .line 397
    goto/16 :goto_9

    .line 398
    .line 399
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    const-string v7, "https://4275.com?m=download&a=down&code="

    .line 402
    .line 403
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    const-string v7, "data-code=\""

    .line 407
    .line 408
    invoke-static {v11, v7, v5, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v7, "&token="

    .line 420
    .line 421
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v7, "data-token=\""

    .line 425
    .line 426
    invoke-static {v11, v7, v5, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v5, "&cdn=3"

    .line 438
    .line 439
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    const-string v5, "<span class=\"time\">"

    .line 447
    .line 448
    const-string v7, "</span>"

    .line 449
    .line 450
    invoke-static {v11, v5, v7, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    new-instance v6, Lx9/b6;

    .line 455
    .line 456
    new-instance v7, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 457
    .line 458
    invoke-direct {v7, v3, v4, v5}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-direct {v6, v7}, Lx9/b6;-><init>(Lcom/yunpan/appmanage/bean/NameValueBean;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 471
    .line 472
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_23

    .line 479
    .line 480
    :cond_10
    const-string v3, "123\u4e91\u76d8"

    .line 481
    .line 482
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    const-string v4, "#"

    .line 487
    .line 488
    if-nez v3, :cond_11

    .line 489
    .line 490
    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-eqz v3, :cond_12

    .line 495
    .line 496
    :cond_11
    const/4 v0, 0x1

    .line 497
    goto/16 :goto_19

    .line 498
    .line 499
    :cond_12
    const-string v3, "www.ilanzou.com"

    .line 500
    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-nez v3, :cond_13

    .line 506
    .line 507
    const-string v3, "\u84dd\u594f\u4e91\u4f18\u4eab\u7248"

    .line 508
    .line 509
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-eqz v3, :cond_14

    .line 514
    .line 515
    :cond_13
    const/4 v0, 0x3

    .line 516
    goto/16 :goto_18

    .line 517
    .line 518
    :cond_14
    const-string v3, ">\u6587\u4ef6\u5927\u5c0f\uff1a</span>"

    .line 519
    .line 520
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-nez v3, :cond_15

    .line 525
    .line 526
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-nez v3, :cond_15

    .line 531
    .line 532
    const-string v3, "<iframe"

    .line 533
    .line 534
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    if-nez v3, :cond_15

    .line 539
    .line 540
    const-string v3, "/filemoreajax.php"

    .line 541
    .line 542
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-nez v3, :cond_15

    .line 547
    .line 548
    const-string v3, "/ajaxm.php?"

    .line 549
    .line 550
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-nez v3, :cond_15

    .line 555
    .line 556
    const-string v3, "woozooo.com"

    .line 557
    .line 558
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_16

    .line 563
    .line 564
    :cond_15
    const/4 v0, 0x2

    .line 565
    goto/16 :goto_17

    .line 566
    .line 567
    :cond_16
    const-string v3, "\u5c0f\u98de\u673a\u7f51\u76d8"

    .line 568
    .line 569
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-nez v3, :cond_2a

    .line 574
    .line 575
    const-string v3, ".feijipan."

    .line 576
    .line 577
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    if-eqz v3, :cond_17

    .line 582
    .line 583
    goto/16 :goto_15

    .line 584
    .line 585
    :cond_17
    const-string v3, "\u5149\u9e2d\u4e91\u76d8"

    .line 586
    .line 587
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    if-nez v3, :cond_18

    .line 592
    .line 593
    const-string v3, "guangyapan.com"

    .line 594
    .line 595
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 596
    .line 597
    .line 598
    move-result v3

    .line 599
    if-eqz v3, :cond_19

    .line 600
    .line 601
    :cond_18
    const/16 v0, 0x9

    .line 602
    .line 603
    goto/16 :goto_13

    .line 604
    .line 605
    :cond_19
    const-string v3, "\u96c0\u4e91\u7f51\u76d8"

    .line 606
    .line 607
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-nez v3, :cond_20

    .line 612
    .line 613
    const-string v3, "<title>\u96c0\u4e91\u6587\u4ef6\u5206\u4eab</title>"

    .line 614
    .line 615
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    if-eqz v3, :cond_1a

    .line 620
    .line 621
    goto :goto_f

    .line 622
    :cond_1a
    const-string v3, "OPENLIST"

    .line 623
    .line 624
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    if-nez v3, :cond_1e

    .line 629
    .line 630
    const-string v3, "window.ALIST"

    .line 631
    .line 632
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 633
    .line 634
    .line 635
    move-result v3

    .line 636
    if-eqz v3, :cond_1b

    .line 637
    .line 638
    goto :goto_b

    .line 639
    :cond_1b
    const-string v0, "\"message\":\"\u5206\u4eab\u9875\u9762\u4e0d\u5b58\u5728\""

    .line 640
    .line 641
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    if-nez v0, :cond_1d

    .line 646
    .line 647
    const-string v0, "\u7cfb\u7edf\u5347\u7ea7\u7ef4\u62a4\u4e2d"

    .line 648
    .line 649
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    if-eqz v0, :cond_1c

    .line 654
    .line 655
    goto :goto_a

    .line 656
    :cond_1c
    const-string v0, "\u5206\u4eab\u5730\u5740\u4e0d\u5b58\u5728 \u6216 \u4e0d\u652f\u6301\u7684\u7f51\u76d8"

    .line 657
    .line 658
    goto/16 :goto_9

    .line 659
    .line 660
    :cond_1d
    :goto_a
    const-string v0, "\u5206\u4eab\u9875\u9762\u4e0d\u5b58\u5728"

    .line 661
    .line 662
    goto/16 :goto_9

    .line 663
    .line 664
    :cond_1e
    :goto_b
    const/4 v3, 0x7

    .line 665
    iput v3, v12, Lba/r;->a:I

    .line 666
    .line 667
    :try_start_1
    iget-object v3, v12, Lba/r;->b:Ljava/lang/String;

    .line 668
    .line 669
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    iput-object v0, v12, Lba/r;->m:Ljava/lang/String;

    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_1f

    .line 684
    .line 685
    iput-object v10, v12, Lba/r;->m:Ljava/lang/String;

    .line 686
    .line 687
    :cond_1f
    const/4 v0, 0x1

    .line 688
    goto :goto_c

    .line 689
    :catch_1
    move-exception v0

    .line 690
    goto :goto_d

    .line 691
    :goto_c
    iput v0, v12, Lba/r;->n:I

    .line 692
    .line 693
    invoke-static {v12}, Ld/b;->B(Lba/r;)Ljava/util/ArrayList;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 701
    .line 702
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    .line 707
    .line 708
    goto/16 :goto_23

    .line 709
    .line 710
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .line 714
    .line 715
    :goto_e
    invoke-static {v0, v3, v7}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    goto/16 :goto_9

    .line 720
    .line 721
    :cond_20
    :goto_f
    const/4 v0, 0x5

    .line 722
    iput v0, v12, Lba/r;->a:I

    .line 723
    .line 724
    iput-object v7, v12, Lba/r;->m:Ljava/lang/String;

    .line 725
    .line 726
    const/4 v0, 0x1

    .line 727
    iput v0, v12, Lba/r;->n:I

    .line 728
    .line 729
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 730
    .line 731
    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    move-result v5

    .line 735
    add-int/2addr v5, v0

    .line 736
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    if-eqz v3, :cond_21

    .line 745
    .line 746
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    const/4 v5, 0x0

    .line 751
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    goto :goto_10

    .line 756
    :cond_21
    const/4 v5, 0x0

    .line 757
    :goto_10
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    if-eqz v3, :cond_22

    .line 762
    .line 763
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    :cond_22
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    if-eqz v3, :cond_23

    .line 776
    .line 777
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    :cond_23
    iput-object v0, v12, Lba/r;->f:Ljava/lang/String;

    .line 786
    .line 787
    :try_start_2
    const-string v0, "passwordSection"

    .line 788
    .line 789
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    if-eqz v0, :cond_25

    .line 794
    .line 795
    iget-object v0, v12, Lba/r;->d:Ljava/lang/String;

    .line 796
    .line 797
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    if-eqz v0, :cond_24

    .line 802
    .line 803
    new-instance v0, Ljava/lang/Exception;

    .line 804
    .line 805
    const-string v3, "\u9700\u8981\u5bc6\u7801"

    .line 806
    .line 807
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 811
    .line 812
    .line 813
    goto/16 :goto_23

    .line 814
    .line 815
    :catch_2
    move-exception v0

    .line 816
    goto :goto_12

    .line 817
    :cond_24
    const/4 v0, 0x1

    .line 818
    iput-boolean v0, v12, Lba/r;->e:Z

    .line 819
    .line 820
    invoke-static {v12}, Lif/a;->I(Lba/r;)Ljava/util/ArrayList;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    goto :goto_11

    .line 825
    :cond_25
    invoke-static {v11}, Lif/a;->V(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    :goto_11
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 830
    .line 831
    .line 832
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 833
    .line 834
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 838
    .line 839
    .line 840
    goto/16 :goto_23

    .line 841
    .line 842
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_e

    .line 848
    .line 849
    :goto_13
    iput v0, v12, Lba/r;->a:I

    .line 850
    .line 851
    iput-object v7, v12, Lba/r;->m:Ljava/lang/String;

    .line 852
    .line 853
    const/4 v0, 0x1

    .line 854
    iput v0, v12, Lba/r;->n:I

    .line 855
    .line 856
    iget-object v0, v12, Lba/r;->c:Ljava/lang/String;

    .line 857
    .line 858
    const-string v3, "/s/"

    .line 859
    .line 860
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 861
    .line 862
    .line 863
    move-result v3

    .line 864
    const/4 v5, 0x3

    .line 865
    add-int/2addr v3, v5

    .line 866
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 871
    .line 872
    .line 873
    move-result v3

    .line 874
    if-eqz v3, :cond_26

    .line 875
    .line 876
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    const/4 v5, 0x0

    .line 881
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    goto :goto_14

    .line 886
    :cond_26
    const/4 v5, 0x0

    .line 887
    :goto_14
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 888
    .line 889
    .line 890
    move-result v3

    .line 891
    if-eqz v3, :cond_27

    .line 892
    .line 893
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    :cond_27
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    if-eqz v3, :cond_28

    .line 906
    .line 907
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    :cond_28
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    if-eqz v3, :cond_29

    .line 920
    .line 921
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 922
    .line 923
    .line 924
    move-result v3

    .line 925
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    :cond_29
    iput-object v0, v12, Lba/r;->f:Ljava/lang/String;

    .line 930
    .line 931
    :try_start_3
    invoke-static {v12}, Ls1/g;->x(Lba/r;)Ljava/util/ArrayList;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 936
    .line 937
    .line 938
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 939
    .line 940
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 944
    .line 945
    .line 946
    goto/16 :goto_23

    .line 947
    .line 948
    :catch_3
    move-exception v0

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_e

    .line 955
    .line 956
    :cond_2a
    :goto_15
    const/4 v0, 0x4

    .line 957
    iput v0, v12, Lba/r;->a:I

    .line 958
    .line 959
    iput-object v7, v12, Lba/r;->m:Ljava/lang/String;

    .line 960
    .line 961
    const/4 v0, 0x1

    .line 962
    iput v0, v12, Lba/r;->n:I

    .line 963
    .line 964
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    iput-object v3, v12, Lba/r;->g:Ljava/lang/String;

    .line 973
    .line 974
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 975
    .line 976
    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 977
    .line 978
    .line 979
    move-result v5

    .line 980
    add-int/2addr v5, v0

    .line 981
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    if-eqz v3, :cond_2b

    .line 990
    .line 991
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    const/4 v5, 0x0

    .line 996
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    goto :goto_16

    .line 1001
    :cond_2b
    const/4 v5, 0x0

    .line 1002
    :goto_16
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v3

    .line 1006
    if-eqz v3, :cond_2c

    .line 1007
    .line 1008
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1009
    .line 1010
    .line 1011
    move-result v3

    .line 1012
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    :cond_2c
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1017
    .line 1018
    .line 1019
    move-result v3

    .line 1020
    if-eqz v3, :cond_2d

    .line 1021
    .line 1022
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    :cond_2d
    iput-object v0, v12, Lba/r;->f:Ljava/lang/String;

    .line 1031
    .line 1032
    :try_start_4
    invoke-static {v12}, Ls1/g;->y(Lba/r;)Ljava/util/ArrayList;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1037
    .line 1038
    .line 1039
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1040
    .line 1041
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1045
    .line 1046
    .line 1047
    goto/16 :goto_23

    .line 1048
    .line 1049
    :catch_4
    move-exception v0

    .line 1050
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_e

    .line 1056
    .line 1057
    :goto_17
    iput v0, v12, Lba/r;->a:I

    .line 1058
    .line 1059
    :try_start_5
    invoke-static {v12, v11}, Lcom/bumptech/glide/c;->T(Lba/r;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1064
    .line 1065
    .line 1066
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1067
    .line 1068
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1072
    .line 1073
    .line 1074
    goto/16 :goto_23

    .line 1075
    .line 1076
    :catch_5
    move-exception v0

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_e

    .line 1083
    .line 1084
    :goto_18
    iput v0, v12, Lba/r;->a:I

    .line 1085
    .line 1086
    :try_start_6
    invoke-static {v12, v11}, Lcom/bumptech/glide/d;->R(Lba/r;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1091
    .line 1092
    .line 1093
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1094
    .line 1095
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1099
    .line 1100
    .line 1101
    goto/16 :goto_23

    .line 1102
    .line 1103
    :catch_6
    move-exception v0

    .line 1104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    goto/16 :goto_e

    .line 1110
    .line 1111
    :goto_19
    iput v0, v12, Lba/r;->a:I

    .line 1112
    .line 1113
    const-string v3, "\\\"ShareKey\\\":\\\""

    .line 1114
    .line 1115
    const-string v5, "\\"

    .line 1116
    .line 1117
    const/4 v8, 0x0

    .line 1118
    invoke-static {v11, v3, v5, v8}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v3

    .line 1122
    iput-object v3, v12, Lba/r;->f:Ljava/lang/String;

    .line 1123
    .line 1124
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1125
    .line 1126
    .line 1127
    move-result v3

    .line 1128
    if-eqz v3, :cond_31

    .line 1129
    .line 1130
    iget-object v3, v12, Lba/r;->c:Ljava/lang/String;

    .line 1131
    .line 1132
    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1133
    .line 1134
    .line 1135
    move-result v5

    .line 1136
    add-int/2addr v5, v0

    .line 1137
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v3

    .line 1145
    if-eqz v3, :cond_2e

    .line 1146
    .line 1147
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    :cond_2e
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v3

    .line 1159
    if-eqz v3, :cond_2f

    .line 1160
    .line 1161
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1162
    .line 1163
    .line 1164
    move-result v3

    .line 1165
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    :cond_2f
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v3

    .line 1173
    if-eqz v3, :cond_30

    .line 1174
    .line 1175
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1176
    .line 1177
    .line 1178
    move-result v3

    .line 1179
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    :cond_30
    iput-object v0, v12, Lba/r;->f:Ljava/lang/String;

    .line 1184
    .line 1185
    :cond_31
    const-string v0, "0"

    .line 1186
    .line 1187
    iput-object v0, v12, Lba/r;->m:Ljava/lang/String;

    .line 1188
    .line 1189
    const/4 v0, 0x1

    .line 1190
    iput v0, v12, Lba/r;->n:I

    .line 1191
    .line 1192
    :try_start_7
    invoke-static {v12}, Lqf/c;->v(Lba/r;)Ljava/util/ArrayList;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1197
    .line 1198
    .line 1199
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1200
    .line 1201
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1205
    .line 1206
    .line 1207
    goto/16 :goto_23

    .line 1208
    .line 1209
    :catch_7
    move-exception v0

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1213
    .line 1214
    .line 1215
    goto/16 :goto_e

    .line 1216
    .line 1217
    :cond_32
    :goto_1a
    iput v4, v12, Lba/r;->a:I

    .line 1218
    .line 1219
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1220
    .line 1221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    .line 1223
    .line 1224
    new-instance v0, Ljava/util/ArrayList;

    .line 1225
    .line 1226
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .line 1228
    .line 1229
    const-string v3, "\u6c22\u684c\u9762"

    .line 1230
    .line 1231
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v3

    .line 1235
    const-string v4, "http"

    .line 1236
    .line 1237
    if-eqz v3, :cond_34

    .line 1238
    .line 1239
    const-string v3, "$(\".down_"

    .line 1240
    .line 1241
    const-string v6, "\n"

    .line 1242
    .line 1243
    invoke-static {v11, v3, v6}, Lif/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v3

    .line 1247
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    :cond_33
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1252
    .line 1253
    .line 1254
    move-result v6

    .line 1255
    if-eqz v6, :cond_3a

    .line 1256
    .line 1257
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v6

    .line 1261
    check-cast v6, Ljava/lang/String;

    .line 1262
    .line 1263
    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1264
    .line 1265
    .line 1266
    move-result v7

    .line 1267
    const/4 v8, 0x0

    .line 1268
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v6

    .line 1272
    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1273
    .line 1274
    .line 1275
    move-result v7

    .line 1276
    const/4 v8, 0x1

    .line 1277
    add-int/2addr v7, v8

    .line 1278
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v6

    .line 1282
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1283
    .line 1284
    .line 1285
    move-result v7

    .line 1286
    if-eqz v7, :cond_33

    .line 1287
    .line 1288
    new-instance v7, Lx9/b6;

    .line 1289
    .line 1290
    new-instance v8, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 1291
    .line 1292
    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1293
    .line 1294
    .line 1295
    move-result v9

    .line 1296
    const/4 v11, 0x1

    .line 1297
    add-int/2addr v9, v11

    .line 1298
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v9

    .line 1302
    invoke-direct {v8, v9, v6}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-direct {v7, v8}, Lx9/b6;-><init>(Lcom/yunpan/appmanage/bean/NameValueBean;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1309
    .line 1310
    .line 1311
    goto :goto_1b

    .line 1312
    :catch_8
    nop

    .line 1313
    goto :goto_1b

    .line 1314
    :cond_34
    const-string v3, "\u561f\u561f\u684c\u9762"

    .line 1315
    .line 1316
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v3

    .line 1320
    const-class v5, Lph/l;

    .line 1321
    .line 1322
    const-string v6, "href"

    .line 1323
    .line 1324
    const-string v8, "a[href]"

    .line 1325
    .line 1326
    if-eqz v3, :cond_38

    .line 1327
    .line 1328
    invoke-static {v11}, Ld/b;->Z(Ljava/lang/String;)Lph/h;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v3

    .line 1332
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    .line 1334
    .line 1335
    const-string v4, ".theme-vdoing-content.content__default"

    .line 1336
    .line 1337
    invoke-static {v4}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-static {v4}, Lrh/v;->R(Ljava/lang/String;)Lrh/p;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v4

    .line 1344
    invoke-virtual {v4}, Lrh/p;->e()V

    .line 1345
    .line 1346
    .line 1347
    invoke-static {v3, v5}, Lq4/a;->b0(Lph/q;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v5

    .line 1351
    new-instance v7, Lrh/f;

    .line 1352
    .line 1353
    const/4 v9, 0x0

    .line 1354
    invoke-direct {v7, v4, v3, v9}, Lrh/f;-><init>(Lrh/p;Lph/l;I)V

    .line 1355
    .line 1356
    .line 1357
    invoke-interface {v5, v7}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v3

    .line 1361
    invoke-interface {v3}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v3

    .line 1365
    const/4 v4, 0x0

    .line 1366
    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v3

    .line 1370
    check-cast v3, Lph/l;

    .line 1371
    .line 1372
    if-eqz v3, :cond_3a

    .line 1373
    .line 1374
    invoke-virtual {v3, v8}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v3

    .line 1378
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v3

    .line 1382
    :cond_35
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1383
    .line 1384
    .line 1385
    move-result v4

    .line 1386
    if-eqz v4, :cond_3a

    .line 1387
    .line 1388
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v4

    .line 1392
    check-cast v4, Lph/l;

    .line 1393
    .line 1394
    invoke-virtual {v4}, Lph/l;->M()Ljava/lang/String;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v5

    .line 1398
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v5

    .line 1402
    const-string v7, "("

    .line 1403
    .line 1404
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v8

    .line 1408
    if-eqz v8, :cond_36

    .line 1409
    .line 1410
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1411
    .line 1412
    .line 1413
    move-result v7

    .line 1414
    const/4 v8, 0x0

    .line 1415
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v5

    .line 1419
    :cond_36
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1420
    .line 1421
    .line 1422
    move-result v7

    .line 1423
    if-nez v7, :cond_35

    .line 1424
    .line 1425
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1426
    .line 1427
    .line 1428
    move-result v7

    .line 1429
    const/4 v8, 0x2

    .line 1430
    if-ge v7, v8, :cond_37

    .line 1431
    .line 1432
    goto :goto_1c

    .line 1433
    :cond_37
    const-string v7, ".apk"

    .line 1434
    .line 1435
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v5

    .line 1439
    new-instance v7, Lx9/b6;

    .line 1440
    .line 1441
    new-instance v9, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 1442
    .line 1443
    invoke-virtual {v4, v6}, Lph/q;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v4

    .line 1447
    invoke-direct {v9, v5, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    invoke-direct {v7, v9}, Lx9/b6;-><init>(Lcom/yunpan/appmanage/bean/NameValueBean;)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    .line 1455
    .line 1456
    goto :goto_1c

    .line 1457
    :cond_38
    const-string v3, "\u4e50\u9177\u684c\u9762"

    .line 1458
    .line 1459
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v3

    .line 1463
    if-eqz v3, :cond_3a

    .line 1464
    .line 1465
    invoke-static {v11}, Ld/b;->Z(Ljava/lang/String;)Lph/h;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v3

    .line 1469
    const-string v9, ".col-md-6.col-lg-4.mb-4"

    .line 1470
    .line 1471
    invoke-virtual {v3, v9}, Lph/l;->L(Ljava/lang/String;)Lrh/e;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v3

    .line 1475
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v3

    .line 1479
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1480
    .line 1481
    .line 1482
    move-result v9

    .line 1483
    if-eqz v9, :cond_3a

    .line 1484
    .line 1485
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v9

    .line 1489
    check-cast v9, Lph/l;

    .line 1490
    .line 1491
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1492
    .line 1493
    .line 1494
    invoke-static {v8}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    invoke-static {v8}, Lrh/v;->R(Ljava/lang/String;)Lrh/p;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v11

    .line 1501
    invoke-virtual {v11}, Lrh/p;->e()V

    .line 1502
    .line 1503
    .line 1504
    invoke-static {v9, v5}, Lq4/a;->b0(Lph/q;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v12

    .line 1508
    new-instance v13, Lrh/f;

    .line 1509
    .line 1510
    const/4 v14, 0x0

    .line 1511
    invoke-direct {v13, v11, v9, v14}, Lrh/f;-><init>(Lrh/p;Lph/l;I)V

    .line 1512
    .line 1513
    .line 1514
    invoke-interface {v12, v13}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v9

    .line 1518
    invoke-interface {v9}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v9

    .line 1522
    const/4 v11, 0x0

    .line 1523
    invoke-virtual {v9, v11}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v9

    .line 1527
    check-cast v9, Lph/l;

    .line 1528
    .line 1529
    invoke-virtual {v9, v6}, Lph/q;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v9

    .line 1533
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result v12

    .line 1537
    if-nez v12, :cond_39

    .line 1538
    .line 1539
    goto :goto_1d

    .line 1540
    :cond_39
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v12

    .line 1544
    invoke-virtual {v12, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1545
    .line 1546
    .line 1547
    move-result v13

    .line 1548
    const/4 v14, 0x1

    .line 1549
    add-int/2addr v13, v14

    .line 1550
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v12

    .line 1554
    const-string v13, " "

    .line 1555
    .line 1556
    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v12

    .line 1560
    const-string v13, "_sign"

    .line 1561
    .line 1562
    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v12

    .line 1566
    const-string v13, "sign"

    .line 1567
    .line 1568
    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v12

    .line 1572
    new-instance v13, Lx9/b6;

    .line 1573
    .line 1574
    new-instance v14, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 1575
    .line 1576
    invoke-direct {v14, v12, v9}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-direct {v13, v14}, Lx9/b6;-><init>(Lcom/yunpan/appmanage/bean/NameValueBean;)V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    .line 1584
    .line 1585
    goto :goto_1d

    .line 1586
    :cond_3a
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1587
    .line 1588
    .line 1589
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1590
    .line 1591
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1595
    .line 1596
    .line 1597
    goto/16 :goto_23

    .line 1598
    .line 1599
    :cond_3b
    const/4 v5, 0x0

    .line 1600
    iput v5, v12, Lba/r;->a:I

    .line 1601
    .line 1602
    invoke-virtual {v9}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v5

    .line 1606
    const-string v11, "Content-Disposition"

    .line 1607
    .line 1608
    invoke-virtual {v5, v11}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v5

    .line 1612
    if-eqz v5, :cond_3d

    .line 1613
    .line 1614
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v5

    .line 1618
    :cond_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1619
    .line 1620
    .line 1621
    move-result v11

    .line 1622
    if-eqz v11, :cond_3d

    .line 1623
    .line 1624
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v11

    .line 1628
    check-cast v11, Ljava/lang/String;

    .line 1629
    .line 1630
    const-string v12, "filename="

    .line 1631
    .line 1632
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1633
    .line 1634
    .line 1635
    move-result v13

    .line 1636
    if-eqz v13, :cond_3c

    .line 1637
    .line 1638
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1639
    .line 1640
    .line 1641
    move-result v5

    .line 1642
    const/16 v12, 0x9

    .line 1643
    .line 1644
    add-int/2addr v5, v12

    .line 1645
    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v5

    .line 1649
    if-eqz v5, :cond_3e

    .line 1650
    .line 1651
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1652
    .line 1653
    .line 1654
    move-result v11

    .line 1655
    if-nez v11, :cond_3e

    .line 1656
    .line 1657
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v11

    .line 1661
    invoke-static {v11, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1665
    goto :goto_1e

    .line 1666
    :catch_9
    nop

    .line 1667
    goto :goto_1e

    .line 1668
    :cond_3d
    move-object v5, v7

    .line 1669
    :cond_3e
    :goto_1e
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1670
    .line 1671
    .line 1672
    move-result v8

    .line 1673
    const-string v11, "&"

    .line 1674
    .line 1675
    if-eqz v8, :cond_42

    .line 1676
    .line 1677
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v0

    .line 1681
    array-length v8, v0

    .line 1682
    if-lez v8, :cond_42

    .line 1683
    .line 1684
    array-length v5, v0

    .line 1685
    const/4 v8, 0x1

    .line 1686
    sub-int/2addr v5, v8

    .line 1687
    aget-object v0, v0, v5

    .line 1688
    .line 1689
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v5

    .line 1693
    if-nez v5, :cond_3f

    .line 1694
    .line 1695
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1696
    .line 1697
    .line 1698
    move-result v5

    .line 1699
    if-eqz v5, :cond_40

    .line 1700
    .line 1701
    :cond_3f
    move-object v0, v7

    .line 1702
    :cond_40
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1703
    .line 1704
    .line 1705
    move-result v5

    .line 1706
    if-nez v5, :cond_41

    .line 1707
    .line 1708
    goto :goto_1f

    .line 1709
    :cond_41
    move-object v7, v0

    .line 1710
    goto :goto_1f

    .line 1711
    :cond_42
    move-object v7, v5

    .line 1712
    :goto_1f
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v0

    .line 1716
    if-eqz v0, :cond_45

    .line 1717
    .line 1718
    invoke-virtual {v9}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v0

    .line 1726
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v0

    .line 1730
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v0

    .line 1734
    array-length v5, v0

    .line 1735
    if-lez v5, :cond_45

    .line 1736
    .line 1737
    array-length v5, v0

    .line 1738
    const/4 v7, 0x1

    .line 1739
    sub-int/2addr v5, v7

    .line 1740
    aget-object v0, v0, v5

    .line 1741
    .line 1742
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1743
    .line 1744
    .line 1745
    move-result v5

    .line 1746
    if-eqz v5, :cond_43

    .line 1747
    .line 1748
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1749
    .line 1750
    .line 1751
    move-result v5

    .line 1752
    const/4 v7, 0x0

    .line 1753
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v0

    .line 1757
    goto :goto_20

    .line 1758
    :cond_43
    const/4 v7, 0x0

    .line 1759
    :goto_20
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1760
    .line 1761
    .line 1762
    move-result v5

    .line 1763
    if-eqz v5, :cond_44

    .line 1764
    .line 1765
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1766
    .line 1767
    .line 1768
    move-result v5

    .line 1769
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v7

    .line 1773
    goto :goto_21

    .line 1774
    :cond_44
    move-object v7, v0

    .line 1775
    :cond_45
    :goto_21
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1776
    .line 1777
    .line 1778
    move-result v0

    .line 1779
    if-eqz v0, :cond_49

    .line 1780
    .line 1781
    :try_start_a
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1782
    .line 1783
    .line 1784
    move-result v0

    .line 1785
    const/4 v5, 0x1

    .line 1786
    add-int/2addr v0, v5

    .line 1787
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v0

    .line 1791
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1792
    .line 1793
    .line 1794
    move-result v3

    .line 1795
    if-nez v3, :cond_49

    .line 1796
    .line 1797
    const-string v3, "vnd.android.package-archive"

    .line 1798
    .line 1799
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1800
    .line 1801
    .line 1802
    move-result v3

    .line 1803
    if-eqz v3, :cond_46

    .line 1804
    .line 1805
    const-string v0, "apk"

    .line 1806
    .line 1807
    goto :goto_22

    .line 1808
    :cond_46
    const-string v3, "*"

    .line 1809
    .line 1810
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1811
    .line 1812
    .line 1813
    move-result v3

    .line 1814
    if-eqz v3, :cond_48

    .line 1815
    .line 1816
    const-string v3, "image"

    .line 1817
    .line 1818
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1819
    .line 1820
    .line 1821
    move-result v3

    .line 1822
    if-eqz v3, :cond_47

    .line 1823
    .line 1824
    const-string v0, "png"

    .line 1825
    .line 1826
    goto :goto_22

    .line 1827
    :cond_47
    const-string v3, "octet-stream"

    .line 1828
    .line 1829
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1830
    .line 1831
    .line 1832
    move-result v3

    .line 1833
    if-eqz v3, :cond_48

    .line 1834
    .line 1835
    const-string v0, "bin"

    .line 1836
    .line 1837
    :cond_48
    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1838
    .line 1839
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1840
    .line 1841
    .line 1842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1843
    .line 1844
    .line 1845
    move-result-wide v4

    .line 1846
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 1859
    :catch_a
    :cond_49
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1863
    .line 1864
    .line 1865
    :goto_23
    return-void

    .line 1866
    :pswitch_0
    check-cast v4, Landroid/app/usage/NetworkStatsManager;

    .line 1867
    .line 1868
    check-cast v0, Ljava/util/HashMap;

    .line 1869
    .line 1870
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 1871
    .line 1872
    invoke-static {v5, v4, v0, v2}, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->x(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;Landroid/app/usage/NetworkStatsManager;Ljava/util/HashMap;Lmc/b;)V

    .line 1873
    .line 1874
    .line 1875
    return-void

    .line 1876
    nop

    .line 1877
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onRequestPermissionAnomaly()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/core/a;->a(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    return-void
.end method

.method public onRequestPermissionFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/hjq/permissions/OnPermissionCallback;

    iget-object v2, p0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/hjq/permissions/XXPermissions;->c(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic onRequestPermissionNow()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/core/a;->b(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x6

    .line 9
    iget-object v6, v0, Lcom/hjq/permissions/b;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v7, v0, Lcom/hjq/permissions/b;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v8, v0, Lcom/hjq/permissions/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    iget v9, v0, Lcom/hjq/permissions/b;->a:I

    .line 16
    .line 17
    sparse-switch v9, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object v12, v8

    .line 21
    check-cast v12, Lcom/yunpan/appmanage/ui/ActivityPresentation2;

    .line 22
    .line 23
    iget-object v2, v12, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->D:Lx9/n;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/yunpan/appmanage/bean/StackBean;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, v12, Lda/g;->A:Lda/g;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const-string v1, "\u7981\u6b62\u66f4\u6539\u672c\u7a0b\u5e8f"

    .line 57
    .line 58
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, v12, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->F:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    const-string v1, "\u7981\u6b62\u66f4\u6539\u9ed8\u8ba4\u684c\u9762"

    .line 73
    .line 74
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-instance v2, Lha/fa;

    .line 79
    .line 80
    new-instance v15, Lcom/hjq/permissions/b;

    .line 81
    .line 82
    check-cast v7, Ljava/util/ArrayList;

    .line 83
    .line 84
    const/16 v3, 0xf

    .line 85
    .line 86
    invoke-direct {v15, v12, v1, v7, v3}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    move-object v14, v6

    .line 90
    check-cast v14, Ljava/util/ArrayList;

    .line 91
    .line 92
    const/4 v13, 0x0

    .line 93
    move-object v10, v2

    .line 94
    move-object v11, v12

    .line 95
    invoke-direct/range {v10 .. v15}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void

    .line 102
    :sswitch_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->F:I

    .line 103
    .line 104
    move-object v11, v8

    .line 105
    check-cast v11, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;

    .line 106
    .line 107
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance v2, Lha/fa;

    .line 111
    .line 112
    new-instance v14, Lha/v1;

    .line 113
    .line 114
    check-cast v7, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v14, v11, v1, v7, v5}, Lha/v1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 117
    .line 118
    .line 119
    move-object v13, v6

    .line 120
    check-cast v13, Ljava/util/ArrayList;

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    move-object v9, v2

    .line 124
    move-object v10, v11

    .line 125
    invoke-direct/range {v9 .. v14}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :sswitch_1
    check-cast v8, Lha/fc;

    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    check-cast v6, Lx9/y0;

    .line 138
    .line 139
    invoke-virtual {v6, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    check-cast v9, Lx9/x0;

    .line 144
    .line 145
    iget-object v10, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 146
    .line 147
    const-string v11, "\u5bc6\u7801\u9501"

    .line 148
    .line 149
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    const-string v11, ""

    .line 154
    .line 155
    if-eqz v10, :cond_5

    .line 156
    .line 157
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 158
    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    xor-int/2addr v2, v4

    .line 162
    iput-boolean v2, v9, Lx9/x0;->b:Z

    .line 163
    .line 164
    invoke-virtual {v6, v1, v9}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 168
    .line 169
    invoke-virtual {v1, v11}, Lcom/yunpan/appmanage/util/w;->B(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :cond_4
    new-instance v2, Lha/ad;

    .line 175
    .line 176
    check-cast v7, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 177
    .line 178
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    new-instance v7, Lha/v1;

    .line 183
    .line 184
    invoke-direct {v7, v9, v6, v1, v3}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v8, Lha/a4;->b:Landroid/content/Context;

    .line 188
    .line 189
    invoke-direct {v2, v1, v5, v4, v7}, Lha/ad;-><init>(Landroid/content/Context;ZZLha/zc;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_5
    iget-boolean v3, v9, Lx9/x0;->b:Z

    .line 198
    .line 199
    xor-int/2addr v3, v4

    .line 200
    iput-boolean v3, v9, Lx9/x0;->b:Z

    .line 201
    .line 202
    invoke-virtual {v6, v1, v9}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 206
    .line 207
    const-string v3, "\u8fd4\u56de\u952e"

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 216
    .line 217
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 218
    .line 219
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->v:Z

    .line 220
    .line 221
    const-string v3, "mReturnKeyNoClose"

    .line 222
    .line 223
    :try_start_0
    iget-object v4, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 224
    .line 225
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v4, v3, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    :catch_0
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_6
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 238
    .line 239
    const-string v3, "root\u6a21\u5f0f"

    .line 240
    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_7

    .line 246
    .line 247
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 248
    .line 249
    iget-boolean v3, v9, Lx9/x0;->b:Z

    .line 250
    .line 251
    iput-boolean v3, v1, Lcom/yunpan/appmanage/util/w;->a0:Z

    .line 252
    .line 253
    :try_start_1
    iget-object v4, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 254
    .line 255
    const-string v5, "mDoNotUseRoot"

    .line 256
    .line 257
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    .line 263
    .line 264
    :catch_1
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 265
    .line 266
    .line 267
    iget-boolean v1, v9, Lx9/x0;->b:Z

    .line 268
    .line 269
    if-eqz v1, :cond_10

    .line 270
    .line 271
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 272
    .line 273
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-nez v3, :cond_10

    .line 278
    .line 279
    sget-object v3, Lfa/l;->a:Lfa/m;

    .line 280
    .line 281
    invoke-virtual {v3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-nez v3, :cond_10

    .line 286
    .line 287
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 288
    .line 289
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 290
    .line 291
    iput-boolean v2, v3, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 292
    .line 293
    iput-boolean v2, v3, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 294
    .line 295
    const/4 v2, 0x0

    .line 296
    invoke-virtual {v1, v2}, Lfa/j;->h(Lua/h6;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :cond_7
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 302
    .line 303
    const-string v2, "\u5b89\u88c5\u6210\u529f"

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_8

    .line 310
    .line 311
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 312
    .line 313
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 314
    .line 315
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->w:Z

    .line 316
    .line 317
    :try_start_2
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 318
    .line 319
    const-string v4, "InstallSuccessShowDialog"

    .line 320
    .line 321
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 326
    .line 327
    .line 328
    :catch_2
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :cond_8
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 334
    .line 335
    const-string v2, "\u8fde\u63a5\u6210\u529f"

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_9

    .line 342
    .line 343
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 344
    .line 345
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 346
    .line 347
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->F:Z

    .line 348
    .line 349
    :try_start_3
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 350
    .line 351
    const-string v4, "AdbConnectSuccessToast"

    .line 352
    .line 353
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 358
    .line 359
    .line 360
    :catch_3
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_9
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 366
    .line 367
    const-string v2, "\u54ea\u5412"

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_a

    .line 374
    .line 375
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 376
    .line 377
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 378
    .line 379
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 380
    .line 381
    :try_start_4
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 382
    .line 383
    const-string v4, "NezhaAutoOpenAdb"

    .line 384
    .line 385
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 390
    .line 391
    .line 392
    :catch_4
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 393
    .line 394
    .line 395
    iget-boolean v1, v9, Lx9/x0;->b:Z

    .line 396
    .line 397
    if-eqz v1, :cond_10

    .line 398
    .line 399
    iget-object v1, v8, Lha/fc;->i:Landroid/widget/EditText;

    .line 400
    .line 401
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    const-string v2, "auth "

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_10

    .line 420
    .line 421
    new-instance v1, Lha/z6;

    .line 422
    .line 423
    new-instance v2, Lha/j2;

    .line 424
    .line 425
    invoke-direct {v2, v5}, Lha/j2;-><init>(I)V

    .line 426
    .line 427
    .line 428
    iget-object v10, v8, Lha/a4;->a:Landroid/app/Activity;

    .line 429
    .line 430
    iget-object v11, v8, Lha/a4;->b:Landroid/content/Context;

    .line 431
    .line 432
    const-string v14, "\u660e\u767d"

    .line 433
    .line 434
    const-string v15, ""

    .line 435
    .line 436
    const-string v12, "\u54ea\u5412\u8f66\u673a\u4f7f\u7528adb shell\u65f6\u9700\u8981\u5bc6\u7801\n\n\u5bc6\u7801\u683c\u5f0f\uff1aauth #*XXXXXXXX\n"

    .line 437
    .line 438
    const-string v13, "\u8bf7\u6309\u683c\u5f0f\u6b63\u786e\u586b\u5199"

    .line 439
    .line 440
    move-object v9, v1

    .line 441
    move-object/from16 v16, v2

    .line 442
    .line 443
    invoke-direct/range {v9 .. v16}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_1

    .line 450
    .line 451
    :cond_a
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 452
    .line 453
    const-string v2, "\u9886\u514b"

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    if-eqz v1, :cond_b

    .line 460
    .line 461
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 462
    .line 463
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 464
    .line 465
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->n:Z

    .line 466
    .line 467
    :try_start_5
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 468
    .line 469
    const-string v4, "AutoOpenAdb_lynkco"

    .line 470
    .line 471
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 476
    .line 477
    .line 478
    :catch_5
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :cond_b
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 484
    .line 485
    const-string v2, "shell\u5bc6\u7801\u9519\u8bef\u63d0\u9192"

    .line 486
    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_c

    .line 492
    .line 493
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 494
    .line 495
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 496
    .line 497
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->G:Z

    .line 498
    .line 499
    :try_start_6
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 500
    .line 501
    const-string v4, "ShellPasswordErrorToast"

    .line 502
    .line 503
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 508
    .line 509
    .line 510
    :catch_6
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_1

    .line 514
    .line 515
    :cond_c
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 516
    .line 517
    const-string v2, "\u5f39\u7a97\u663e\u793a\u4e0d\u5b8c\u6574"

    .line 518
    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_d

    .line 524
    .line 525
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 526
    .line 527
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 528
    .line 529
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->H:Z

    .line 530
    .line 531
    :try_start_7
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 532
    .line 533
    const-string v4, "DialogShowNoComplete"

    .line 534
    .line 535
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 540
    .line 541
    .line 542
    :catch_7
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_1

    .line 546
    .line 547
    :cond_d
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 548
    .line 549
    const-string v2, "\u4e0d\u63d0\u793a\u8bbe\u5907\u53d1\u73b0"

    .line 550
    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-eqz v1, :cond_e

    .line 556
    .line 557
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 558
    .line 559
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 560
    .line 561
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->e0:Z

    .line 562
    .line 563
    const-string v3, "NonShowDeviceDiscovery"

    .line 564
    .line 565
    :try_start_8
    iget-object v4, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 566
    .line 567
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-virtual {v4, v3, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 572
    .line 573
    .line 574
    :catch_8
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 575
    .line 576
    .line 577
    goto :goto_1

    .line 578
    :cond_e
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 579
    .line 580
    const-string v2, "\u4f7f\u7528\u65b0\u7248adb\u534f\u8bae"

    .line 581
    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    if-eqz v1, :cond_f

    .line 587
    .line 588
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 589
    .line 590
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 591
    .line 592
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 593
    .line 594
    :try_start_9
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 595
    .line 596
    const-string v4, "UseAdbPair"

    .line 597
    .line 598
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 603
    .line 604
    .line 605
    :catch_9
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 606
    .line 607
    .line 608
    goto :goto_1

    .line 609
    :cond_f
    iget-object v1, v9, Lx9/x0;->a:Ljava/lang/String;

    .line 610
    .line 611
    const-string v2, "\u4e0d\u8fde\u63a5shizuku"

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-eqz v1, :cond_10

    .line 618
    .line 619
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 620
    .line 621
    iget-boolean v2, v9, Lx9/x0;->b:Z

    .line 622
    .line 623
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 624
    .line 625
    :try_start_a
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 626
    .line 627
    const-string v4, "NotUseShizuku"

    .line 628
    .line 629
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 634
    .line 635
    .line 636
    :catch_a
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 637
    .line 638
    .line 639
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 640
    .line 641
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 642
    .line 643
    if-nez v1, :cond_10

    .line 644
    .line 645
    new-instance v1, Lha/z6;

    .line 646
    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    const-string v3, "\u7531\u4e8e\u8c03\u7528shizuku\u9700\u8981\u5360\u7528\u6bd4\u8f83\u591a\u5185\u5b58\uff0c\u6240\u4ee5\u4e0d\u63a8\u8350\u4f7f\u7528\uff01\n"

    .line 650
    .line 651
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    iget-object v3, v8, Lha/a4;->b:Landroid/content/Context;

    .line 655
    .line 656
    const v4, 0x7f13016f

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v4, "\u672c\u8eab\u5177\u6709adb\u529f\u80fd\uff0c\u5982\u679c\u60a8\u8bbe\u5907\u65e0\u6cd5\u65e0\u7ebfadb\u7684\u8bdd\u624d\u8003\u8651\u7528shizuku"

    .line 667
    .line 668
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    iget-object v4, v8, Lha/a4;->a:Landroid/app/Activity;

    .line 676
    .line 677
    invoke-direct {v1, v4, v3, v2, v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 681
    .line 682
    .line 683
    :cond_10
    :goto_1
    return-void

    .line 684
    :sswitch_2
    check-cast v8, Lha/fc;

    .line 685
    .line 686
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    check-cast v6, Lx9/y0;

    .line 690
    .line 691
    invoke-virtual {v6, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    check-cast v5, Lx9/x0;

    .line 696
    .line 697
    iget-boolean v9, v5, Lx9/x0;->b:Z

    .line 698
    .line 699
    xor-int/2addr v9, v4

    .line 700
    iput-boolean v9, v5, Lx9/x0;->b:Z

    .line 701
    .line 702
    invoke-virtual {v6, v1, v5}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    iget-object v9, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 706
    .line 707
    const-string v10, "\u4e0d\u4f7f\u7528PM\u547d\u4ee4\u5b89\u88c5"

    .line 708
    .line 709
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 710
    .line 711
    .line 712
    move-result v9

    .line 713
    if-eqz v9, :cond_11

    .line 714
    .line 715
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 716
    .line 717
    iget-boolean v7, v5, Lx9/x0;->b:Z

    .line 718
    .line 719
    invoke-virtual {v2, v7}, Lcom/yunpan/appmanage/util/w;->s(Z)V

    .line 720
    .line 721
    .line 722
    iget-boolean v7, v5, Lx9/x0;->b:Z

    .line 723
    .line 724
    if-eqz v7, :cond_19

    .line 725
    .line 726
    iget v2, v2, Lcom/yunpan/appmanage/util/w;->V:I

    .line 727
    .line 728
    if-ne v2, v4, :cond_19

    .line 729
    .line 730
    new-instance v2, Lha/z6;

    .line 731
    .line 732
    new-instance v4, Landroidx/room/s;

    .line 733
    .line 734
    invoke-direct {v4, v5, v6, v1, v3}, Landroidx/room/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 735
    .line 736
    .line 737
    iget-object v10, v8, Lha/a4;->a:Landroid/app/Activity;

    .line 738
    .line 739
    iget-object v11, v8, Lha/a4;->b:Landroid/content/Context;

    .line 740
    .line 741
    const-string v14, "\u4e0d\u4f7f\u7528adb\u5b89\u88c5"

    .line 742
    .line 743
    const-string v15, "\u4f7f\u7528adb\u5b89\u88c5"

    .line 744
    .line 745
    const-string v12, "\u68c0\u6d4b\u5230\u60a8\u662f\u5409\u5229E02"

    .line 746
    .line 747
    const-string v13, "\u7531\u4e8e\u5409\u5229E02\u7cfb\u7edf\u4f7f\u7528adb\u5b89\u88c5\u5e94\u7528\u4f1a\u51fa\u73b0\u6574\u8f66\u8bbe\u7f6eapp\u67d0\u4e2a\u529f\u80fd\u7f3a\u5931\uff0c\u6240\u4ee5\u4e0d\u5efa\u8bae\u4f7f\u7528adb\u5b89\u88c5\u5e94\u7528\uff01\u5982\u679c\u4f60\u4e0d\u5728\u610f\u90a3\u51e0\u4e2a\u65e0\u5173\u7d27\u8981\u7684\u529f\u80fd\u7684\u8bdd\uff0c\u53ef\u4ee5\u4f7f\u7528adb\u5b89\u88c5"

    .line 748
    .line 749
    move-object v9, v2

    .line 750
    move-object/from16 v16, v4

    .line 751
    .line 752
    invoke-direct/range {v9 .. v16}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_3

    .line 759
    .line 760
    :cond_11
    iget-object v3, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 761
    .line 762
    const-string v9, "\u5e94\u7528\u6388\u4e88\u8fd0\u884c\u65f6\u6743\u9650"

    .line 763
    .line 764
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    if-eqz v3, :cond_13

    .line 769
    .line 770
    iget-boolean v3, v5, Lx9/x0;->b:Z

    .line 771
    .line 772
    if-eqz v3, :cond_12

    .line 773
    .line 774
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 775
    .line 776
    const/16 v7, 0x17

    .line 777
    .line 778
    if-ge v4, v7, :cond_12

    .line 779
    .line 780
    const-string v3, "\u5f53\u524d\u7cfb\u7edf\u7248\u672c\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 781
    .line 782
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 783
    .line 784
    .line 785
    iput-boolean v2, v5, Lx9/x0;->b:Z

    .line 786
    .line 787
    invoke-virtual {v6, v1, v5}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_3

    .line 791
    .line 792
    :cond_12
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 793
    .line 794
    iput-boolean v3, v1, Lcom/yunpan/appmanage/util/w;->x:Z

    .line 795
    .line 796
    const-string v2, "InstallAuthorized"

    .line 797
    .line 798
    :try_start_b
    iget-object v4, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 799
    .line 800
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    invoke-virtual {v4, v2, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 805
    .line 806
    .line 807
    :catch_b
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 808
    .line 809
    .line 810
    goto/16 :goto_3

    .line 811
    .line 812
    :cond_13
    iget-object v1, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 813
    .line 814
    const-string v2, "\u65b9\u6cd52"

    .line 815
    .line 816
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    if-eqz v1, :cond_14

    .line 821
    .line 822
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 823
    .line 824
    iget-boolean v2, v5, Lx9/x0;->b:Z

    .line 825
    .line 826
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 827
    .line 828
    :try_start_c
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 829
    .line 830
    const-string v4, "Auto_Open_Adb2"

    .line 831
    .line 832
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 837
    .line 838
    .line 839
    :catch_c
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_3

    .line 843
    .line 844
    :cond_14
    iget-object v1, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 845
    .line 846
    const-string v2, "\u65b9\u6cd51"

    .line 847
    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    if-eqz v1, :cond_15

    .line 853
    .line 854
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 855
    .line 856
    iget-boolean v2, v5, Lx9/x0;->b:Z

    .line 857
    .line 858
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->z:Z

    .line 859
    .line 860
    :try_start_d
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 861
    .line 862
    const-string v4, "Auto_Open_Adb"

    .line 863
    .line 864
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 869
    .line 870
    .line 871
    :catch_d
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 872
    .line 873
    .line 874
    goto :goto_3

    .line 875
    :cond_15
    iget-object v1, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 876
    .line 877
    const-string v2, "\u65e0\u6cd5\u542f\u52a8\u5e94\u7528"

    .line 878
    .line 879
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_16

    .line 884
    .line 885
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 886
    .line 887
    iget-boolean v2, v5, Lx9/x0;->b:Z

    .line 888
    .line 889
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    .line 891
    .line 892
    :try_start_e
    iput-boolean v2, v1, Lwa/u;->s:Z

    .line 893
    .line 894
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 895
    .line 896
    const-string v4, "IsCannotStartApp"

    .line 897
    .line 898
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 903
    .line 904
    .line 905
    :catch_e
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 906
    .line 907
    .line 908
    goto :goto_3

    .line 909
    :cond_16
    iget-object v1, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 910
    .line 911
    const-string v2, "\u5141\u8bb8\u7b2c\u4e09\u65b9\u5e94\u7528\u8c03\u7528"

    .line 912
    .line 913
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 914
    .line 915
    .line 916
    move-result v1

    .line 917
    if-eqz v1, :cond_18

    .line 918
    .line 919
    iget-object v1, v8, Lha/a4;->b:Landroid/content/Context;

    .line 920
    .line 921
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    iget-boolean v2, v5, Lx9/x0;->b:Z

    .line 926
    .line 927
    if-eqz v2, :cond_17

    .line 928
    .line 929
    const/4 v2, 0x1

    .line 930
    goto :goto_2

    .line 931
    :cond_17
    const/4 v2, 0x2

    .line 932
    :goto_2
    check-cast v7, Landroid/content/ComponentName;

    .line 933
    .line 934
    invoke-virtual {v1, v7, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 935
    .line 936
    .line 937
    goto :goto_3

    .line 938
    :cond_18
    iget-object v1, v5, Lx9/x0;->a:Ljava/lang/String;

    .line 939
    .line 940
    const-string v2, "\u56fa\u5b9a\u4e92\u4f20IP"

    .line 941
    .line 942
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 943
    .line 944
    .line 945
    move-result v1

    .line 946
    if-eqz v1, :cond_19

    .line 947
    .line 948
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 949
    .line 950
    iget-boolean v2, v5, Lx9/x0;->b:Z

    .line 951
    .line 952
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->I:Z

    .line 953
    .line 954
    :try_start_f
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 955
    .line 956
    const-string v4, "FixedMutualPreachIP"

    .line 957
    .line 958
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    invoke-virtual {v3, v4, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 963
    .line 964
    .line 965
    :catch_f
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 966
    .line 967
    .line 968
    :cond_19
    :goto_3
    return-void

    .line 969
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
