.class public final synthetic Lua/z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/z6;->a:I

    iput-object p2, p0, Lua/z6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lua/z6;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, Lua/z6;->a:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v2, Lv3/y;

    .line 12
    .line 13
    invoke-virtual {v2}, Lv3/y;->g()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const v1, 0x7f0b0126

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object p1, v2, Lv3/y;->r:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const v0, 0x7f0b0125

    .line 36
    .line 37
    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    iget-object p1, v2, Lv3/y;->s:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void

    .line 46
    :pswitch_0
    check-cast v2, Lv3/p;

    .line 47
    .line 48
    iget-object p1, v2, Lv3/p;->f:Lv3/t;

    .line 49
    .line 50
    iget-object v1, p1, Lv3/t;->g1:Lr1/m0;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    check-cast v1, La/b;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, La/b;->i(I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p1, Lv3/t;->g1:Lr1/m0;

    .line 63
    .line 64
    check-cast v0, Ly1/x;

    .line 65
    .line 66
    invoke-virtual {v0}, Ly1/x;->M()Lr1/v0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p1, Lv3/t;->g1:Lr1/m0;

    .line 71
    .line 72
    check-cast v0, Lh2/i;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v2, Lh2/h;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lh2/h;-><init>(Lh2/i;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    invoke-virtual {v2, v0}, Lh2/h;->b(I)Lr1/u0;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lr1/u0;->d()Lr1/u0;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lr1/u0;->f()Lr1/u0;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lr1/u0;->h()Lr1/u0;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lr1/u0;->a()Lr1/v0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v1, Ly1/x;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ly1/x;->a0(Lr1/v0;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    :pswitch_1
    check-cast v2, Lv3/m;

    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iget-object v0, v2, Lv3/m;->d:Lv3/t;

    .line 117
    .line 118
    iget-object v2, v0, Lv3/t;->I:Landroid/view/View;

    .line 119
    .line 120
    if-nez p1, :cond_3

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object p1, v0, Lv3/t;->n:Lv3/k;

    .line 126
    .line 127
    invoke-virtual {v0, p1, v2}, Lv3/t;->e(Landroidx/recyclerview/widget/m1;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    if-ne p1, v1, :cond_4

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object p1, v0, Lv3/t;->q:Lv3/g;

    .line 137
    .line 138
    invoke-virtual {v0, p1, v2}, Lv3/t;->e(Landroidx/recyclerview/widget/m1;Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    iget-object p1, v0, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-void

    .line 148
    :pswitch_2
    check-cast v2, Lv3/g;

    .line 149
    .line 150
    iget-object p1, v2, Lv3/g;->f:Lv3/t;

    .line 151
    .line 152
    iget-object v2, p1, Lv3/t;->g1:Lr1/m0;

    .line 153
    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    check-cast v2, La/b;

    .line 157
    .line 158
    invoke-virtual {v2, v0}, La/b;->i(I)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_5

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    iget-object v0, p1, Lv3/t;->g1:Lr1/m0;

    .line 166
    .line 167
    check-cast v0, Ly1/x;

    .line 168
    .line 169
    invoke-virtual {v0}, Ly1/x;->M()Lr1/v0;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v2, p1, Lv3/t;->g1:Lr1/m0;

    .line 174
    .line 175
    check-cast v0, Lh2/i;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance v3, Lh2/h;

    .line 181
    .line 182
    invoke-direct {v3, v0}, Lh2/h;-><init>(Lh2/i;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v1}, Lh2/h;->b(I)Lr1/u0;

    .line 186
    .line 187
    .line 188
    const/4 v0, 0x0

    .line 189
    invoke-virtual {v3, v1, v0}, Lr1/u0;->i(IZ)Lr1/u0;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Lr1/u0;->a()Lr1/v0;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v2, Ly1/x;

    .line 197
    .line 198
    invoke-virtual {v2, v0}, Ly1/x;->a0(Lr1/v0;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const v2, 0x7f13007f

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v2, p1, Lv3/t;->m:Lv3/n;

    .line 213
    .line 214
    iget-object v2, v2, Lv3/n;->e:[Ljava/lang/String;

    .line 215
    .line 216
    aput-object v0, v2, v1

    .line 217
    .line 218
    iget-object p1, p1, Lv3/t;->s:Landroid/widget/PopupWindow;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_2
    return-void

    .line 224
    :pswitch_3
    check-cast v2, Lv3/t;

    .line 225
    .line 226
    iget-boolean p1, v2, Lv3/t;->i1:Z

    .line 227
    .line 228
    xor-int/2addr p1, v1

    .line 229
    invoke-virtual {v2, p1}, Lv3/t;->o(Z)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_4
    sget p1, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->E:I

    .line 234
    .line 235
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;

    .line 236
    .line 237
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_5
    sget p1, Lcom/yunpan/appmanage/ui/ActivityUsers;->G:I

    .line 242
    .line 243
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityUsers;

    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_6
    sget p1, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->I:I

    .line 250
    .line 251
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 252
    .line 253
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_7
    sget p1, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->S:I

    .line 258
    .line 259
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;

    .line 260
    .line 261
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_8
    sget p1, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->S0:I

    .line 266
    .line 267
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 268
    .line 269
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_9
    sget p1, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->K:I

    .line 274
    .line 275
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 276
    .line 277
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
