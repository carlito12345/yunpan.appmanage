.class public final synthetic Lua/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/ga;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/p3;->a:I

    iput-object p1, p0, Lua/p3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/p3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->I:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 12
    .line 13
    const-string v2, "maps"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const-string v4, "type"

    .line 27
    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 35
    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    const-string p1, "\u5df2\u5b58\u5728\u6b64\u6620\u5c04"

    .line 39
    .line 40
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Lz7/s;

    .line 48
    .line 49
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v2, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v4, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "name"

    .line 62
    .line 63
    iget-object v3, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "eventName"

    .line 69
    .line 70
    iget-object v3, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lz7/o;

    .line 76
    .line 77
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "click"

    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 83
    .line 84
    .line 85
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 86
    .line 87
    const/16 v2, 0x2710

    .line 88
    .line 89
    const/4 v3, -0x1

    .line 90
    if-lt p1, v2, :cond_2

    .line 91
    .line 92
    new-instance p1, Lha/m0;

    .line 93
    .line 94
    new-instance v2, Lua/q3;

    .line 95
    .line 96
    invoke-direct {v2, v0, v3}, Lua/q3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0, v0, v1, v2}, Lha/m0;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;Lz7/s;Lua/q3;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance p1, Lha/x7;

    .line 107
    .line 108
    new-instance v2, Lua/q3;

    .line 109
    .line 110
    invoke-direct {v2, v0, v3}, Lua/q3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v0, v0, v1, v2}, Lha/x7;-><init>(Lda/g;Lda/g;Lz7/s;Lha/w7;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 9

    .line 1
    const/4 p1, 0x2

    .line 2
    const/16 p2, 0x2710

    .line 3
    .line 4
    iget v0, p0, Lua/p3;->a:I

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lua/p3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lz7/s;

    .line 18
    .line 19
    const-string v1, "type"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-lt v1, p2, :cond_0

    .line 30
    .line 31
    new-instance p2, Lha/m0;

    .line 32
    .line 33
    new-instance v1, Lua/q3;

    .line 34
    .line 35
    invoke-direct {v1, p1, p3}, Lua/q3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p1, p1, v0, v1}, Lha/m0;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;Lz7/s;Lua/q3;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Lha/x7;

    .line 46
    .line 47
    new-instance v1, Lua/q3;

    .line 48
    .line 49
    invoke-direct {v1, p1, p3}, Lua/q3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p1, p1, v0, v1}, Lha/x7;-><init>(Lda/g;Lda/g;Lz7/s;Lha/w7;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->K:I

    .line 60
    .line 61
    iget-object v0, p0, Lua/p3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 62
    .line 63
    if-nez p3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    const/4 v1, 0x3

    .line 71
    const/4 v2, 0x1

    .line 72
    if-ne p3, v2, :cond_3

    .line 73
    .line 74
    iget-object v5, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->I:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_2

    .line 81
    .line 82
    new-instance p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 83
    .line 84
    const-string v3, "\u6309\u952e-\u5de6\u952e"

    .line 85
    .line 86
    invoke-direct {p3, p2, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 93
    .line 94
    const/16 p3, 0x2712

    .line 95
    .line 96
    const-string v3, "\u6309\u952e-\u53f3\u952e"

    .line 97
    .line 98
    invoke-direct {p2, p3, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 105
    .line 106
    const/16 p3, 0x2711

    .line 107
    .line 108
    const-string v3, "\u6309\u952e-\u4e0a\u952e"

    .line 109
    .line 110
    invoke-direct {p2, p3, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 117
    .line 118
    const/16 p3, 0x2713

    .line 119
    .line 120
    const-string v3, "\u6309\u952e-\u4e0b\u952e"

    .line 121
    .line 122
    invoke-direct {p2, p3, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 129
    .line 130
    const/16 p3, 0x2714

    .line 131
    .line 132
    const-string v3, "\u6309\u952e-\u4e2d\u5fc3\u952e"

    .line 133
    .line 134
    invoke-direct {p2, p3, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 141
    .line 142
    const-string p3, "\u5207\u5230 P \u6863\u65f6"

    .line 143
    .line 144
    invoke-direct {p2, v2, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 151
    .line 152
    const-string p3, "\u5207\u5230 R \u6863\u65f6"

    .line 153
    .line 154
    invoke-direct {p2, p1, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 161
    .line 162
    const-string p3, "\u5207\u5230 N \u6863\u65f6"

    .line 163
    .line 164
    invoke-direct {p2, v1, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 171
    .line 172
    const/4 p3, 0x4

    .line 173
    const-string v1, "\u5207\u5230 D \u6863\u65f6"

    .line 174
    .line 175
    invoke-direct {p2, p3, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    :cond_2
    new-instance p2, Lha/ha;

    .line 182
    .line 183
    new-instance v6, Lua/p3;

    .line 184
    .line 185
    invoke-direct {v6, v0, p1}, Lua/p3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V

    .line 186
    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    move-object v1, p2

    .line 190
    move-object v2, v0

    .line 191
    move-object v3, v0

    .line 192
    invoke-direct/range {v1 .. v6}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_3
    if-ne p3, p1, :cond_5

    .line 200
    .line 201
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 202
    .line 203
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_4

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_4
    new-instance p1, Lha/z6;

    .line 211
    .line 212
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 213
    .line 214
    new-instance v8, Lua/i1;

    .line 215
    .line 216
    const/16 p2, 0xb

    .line 217
    .line 218
    invoke-direct {v8, p2, v0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    const-string v6, "\u786e\u5b9a"

    .line 222
    .line 223
    const-string v7, "\u53d6\u6d88"

    .line 224
    .line 225
    const-string v4, "\u786e\u5b9a\u8981\u6e05\u7a7a\u6240\u6709\u6620\u5c04\u5417\uff1f"

    .line 226
    .line 227
    const-string v5, ""

    .line 228
    .line 229
    move-object v1, p1

    .line 230
    move-object v2, v0

    .line 231
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_5
    if-ne p3, v1, :cond_6

    .line 239
    .line 240
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_6
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->D:Lx9/m0;

    .line 247
    .line 248
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    sub-int/2addr p1, v2

    .line 253
    if-ne p3, p1, :cond_7

    .line 254
    .line 255
    new-instance p1, Lha/z6;

    .line 256
    .line 257
    iget-object p2, v0, Lda/g;->A:Lda/g;

    .line 258
    .line 259
    const-string p3, "\u6b64\u529f\u80fd\u662f\u57fa\u4e8e\u661f\u613fFlyme1.8\u7cfb\u7edf\u5f00\u53d1\u7684"

    .line 260
    .line 261
    const-string v1, ""

    .line 262
    .line 263
    invoke-direct {p1, v0, p2, p3, v1}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 267
    .line 268
    .line 269
    :cond_7
    :goto_1
    return-void

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
