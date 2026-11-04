.class public final synthetic Lha/tc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lha/tc;->a:I

    iput-object p1, p0, Lha/tc;->b:Ljava/lang/Object;

    iput-object p2, p0, Lha/tc;->c:Ljava/lang/Object;

    iput-object p3, p0, Lha/tc;->d:Ljava/lang/Object;

    iput-object p4, p0, Lha/tc;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lha/tc;->d:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lha/tc;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lha/tc;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, Lha/tc;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iget v4, p0, Lha/tc;->a:I

    .line 11
    .line 12
    packed-switch v4, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v3, Lv3/r;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v2, Lr1/m0;

    .line 21
    .line 22
    check-cast v2, La/b;

    .line 23
    .line 24
    const/16 v4, 0x1d

    .line 25
    .line 26
    invoke-virtual {v2, v4}, La/b;->i(I)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    check-cast v2, Ly1/x;

    .line 34
    .line 35
    invoke-virtual {v2}, Ly1/x;->M()Lr1/v0;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lh2/i;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v5, Lh2/h;

    .line 45
    .line 46
    invoke-direct {v5, v4}, Lh2/h;-><init>(Lh2/i;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lr1/s0;

    .line 50
    .line 51
    check-cast v1, Lv3/q;

    .line 52
    .line 53
    iget v6, v1, Lv3/q;->b:I

    .line 54
    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-static {v6}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v0, Lr1/r0;

    .line 64
    .line 65
    invoke-direct {v4, v0, v6}, Lr1/s0;-><init>(Lr1/r0;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v4}, Lh2/h;->e(Lr1/s0;)Lr1/u0;

    .line 69
    .line 70
    .line 71
    iget-object v0, v1, Lv3/q;->a:Lr1/w0;

    .line 72
    .line 73
    iget-object v0, v0, Lr1/w0;->b:Lr1/r0;

    .line 74
    .line 75
    iget v0, v0, Lr1/r0;->c:I

    .line 76
    .line 77
    invoke-virtual {v5, v0, p1}, Lr1/u0;->i(IZ)Lr1/u0;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Lr1/u0;->a()Lr1/v0;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2, p1}, Ly1/x;->a0(Lr1/v0;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, v1, Lv3/q;->c:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Lv3/r;->r(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, v3, Lv3/r;->e:Lv3/t;

    .line 93
    .line 94
    iget-object p1, p1, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    :pswitch_0
    sget v4, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->E:I

    .line 101
    .line 102
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Lq4/a;->n(Landroid/content/Context;)Lz7/s;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget v5, v3, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I

    .line 112
    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const-string v6, "ico"

    .line 118
    .line 119
    invoke-virtual {v4, v6, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 120
    .line 121
    .line 122
    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    mul-int/lit8 v2, v2, 0x5

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v5, "size"

    .line 135
    .line 136
    invoke-virtual {v4, v5, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 137
    .line 138
    .line 139
    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v2, "trans"

    .line 150
    .line 151
    invoke-virtual {v4, v2, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 152
    .line 153
    .line 154
    check-cast v1, Lx9/w0;

    .line 155
    .line 156
    invoke-virtual {v1, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 161
    .line 162
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 163
    .line 164
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string v0, "auto_hide"

    .line 169
    .line 170
    invoke-virtual {v4, v0, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    .line 172
    .line 173
    const/4 p1, 0x1

    .line 174
    invoke-virtual {v1, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 179
    .line 180
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 181
    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v0, "auto_trans"

    .line 187
    .line 188
    invoke-virtual {v4, v0, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 189
    .line 190
    .line 191
    const/4 p1, 0x2

    .line 192
    invoke-virtual {v1, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 197
    .line 198
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 199
    .line 200
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string v0, "antiBurnScreen"

    .line 205
    .line 206
    invoke-virtual {v4, v0, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    .line 208
    .line 209
    const/4 p1, 0x3

    .line 210
    invoke-virtual {v1, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 215
    .line 216
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 217
    .line 218
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v0, "allow_move_outer_edge"

    .line 223
    .line 224
    invoke-virtual {v4, v0, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 225
    .line 226
    .line 227
    const/4 p1, 0x4

    .line 228
    invoke-virtual {v1, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 233
    .line 234
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 235
    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const-string v0, "lock"

    .line 241
    .line 242
    invoke-virtual {v4, v0, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v3, v4}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :pswitch_1
    check-cast v3, Lha/vc;

    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    new-instance p1, Lha/fa;

    .line 258
    .line 259
    new-instance v9, La2/g1;

    .line 260
    .line 261
    check-cast v0, Landroid/widget/EditText;

    .line 262
    .line 263
    check-cast v1, Landroid/graphics/Point;

    .line 264
    .line 265
    const/16 v4, 0x16

    .line 266
    .line 267
    invoke-direct {v9, v0, v4, v1}, La2/g1;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    iget-object v5, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 271
    .line 272
    iget-object v6, v3, Lha/a4;->b:Landroid/content/Context;

    .line 273
    .line 274
    move-object v8, v2

    .line 275
    check-cast v8, Ljava/util/ArrayList;

    .line 276
    .line 277
    const-string v7, "\u9009\u62e9\u663e\u793a\u4f4d\u7f6e"

    .line 278
    .line 279
    move-object v4, p1

    .line 280
    invoke-direct/range {v4 .. v9}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
