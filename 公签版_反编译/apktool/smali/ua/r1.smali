.class public final Lua/r1;
.super Le9/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/r1;->b:I

    iput-object p2, p0, Lua/r1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Le9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final f0()V
    .locals 3

    .line 1
    iget v0, p0, Lua/r1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/r1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/ud;

    .line 9
    .line 10
    iget-object v1, v0, Lha/ud;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const-string v1, "\u8bfb\u53d6\u76ee\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u786e\u4fdd\u5bf9\u9762\u8bbe\u5907\u5df2\u5f00\u542f\u7ba1\u5bb6"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v2, v0, Lha/ud;->i:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "\u63a8\u9001\u5931\u8d25\uff1a"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lua/r1;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lcom/yunpan/appmanage/util/d;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "\u63a8\u9001\u5931\u8d25\uff1a"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lua/r1;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lcom/yunpan/appmanage/util/d;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g0(Lv3/f;)V
    .locals 7

    .line 1
    iget v0, p0, Lua/r1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/r1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/ud;

    .line 9
    .line 10
    iget-object v1, v0, Lha/ud;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lv3/f;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "parent"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "\u8bfb\u53d6\u76ee\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u786e\u4fdd\u5bf9\u9762\u8bbe\u5907\u5df2\u6253\u5f00\u7ba1\u5bb6"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v1, "files"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lz7/p;->f()Lz7/o;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v1, 0x0

    .line 57
    :goto_0
    iget-object v3, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ge v1, v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lz7/o;->l(I)Lz7/p;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "dir"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-ne v4, v2, :cond_1

    .line 84
    .line 85
    new-instance v4, Lx9/w3;

    .line 86
    .line 87
    const-string v5, "name"

    .line 88
    .line 89
    invoke-virtual {v3, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const-string v6, "path"

    .line 98
    .line 99
    invoke-virtual {v3, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-direct {v4, v5, v6, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    const-string v5, "time"

    .line 111
    .line 112
    invoke-virtual {v3, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iput-object v3, v4, Lx9/w3;->h:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, v0, Lha/ud;->l:Lx9/e0;

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, v0, Lha/ud;->l:Lx9/e0;

    .line 131
    .line 132
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_3

    .line 137
    .line 138
    const p1, 0x7f08029f

    .line 139
    .line 140
    .line 141
    const-string v1, "\u6ca1\u6709\u5176\u5b83\u76ee\u5f55"

    .line 142
    .line 143
    invoke-virtual {v0, v1, p1, v2}, Lha/ud;->b(Ljava/lang/String;IZ)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-void

    .line 147
    :pswitch_0
    iget-object p1, p1, Lv3/f;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p1, Ljava/lang/String;

    .line 150
    .line 151
    const-string v0, "OK"

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iget-object v0, p0, Lua/r1;->c:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 160
    .line 161
    if-eqz p1, :cond_4

    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v1, "\u6210\u529f\u63a8\u9001\u547d\u4ee4\u7ed9\uff1a"

    .line 166
    .line 167
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v0, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v1, "\u63a8\u9001\u5931\u8d25\uff1a"

    .line 187
    .line 188
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v0, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const/4 v0, 0x1

    .line 201
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 202
    .line 203
    .line 204
    :goto_1
    return-void

    .line 205
    :pswitch_1
    iget-object p1, p1, Lv3/f;->b:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Ljava/lang/String;

    .line 208
    .line 209
    const-string v0, "OK"

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iget-object v0, p0, Lua/r1;->c:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Lcom/yunpan/appmanage/util/d;

    .line 218
    .line 219
    if-eqz p1, :cond_5

    .line 220
    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v1, "\u6210\u529f\u63a8\u9001\u5230\uff1a"

    .line 224
    .line 225
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, v0, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v1, "\u63a8\u9001\u5931\u8d25\uff1a"

    .line 244
    .line 245
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, v0, Lcom/yunpan/appmanage/util/d;->a:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    :goto_2
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
