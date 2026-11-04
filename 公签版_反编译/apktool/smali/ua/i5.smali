.class public final synthetic Lua/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lda/g;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lda/g;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/i5;->a:I

    iput-object p1, p0, Lua/i5;->b:Lda/g;

    iput-object p2, p0, Lua/i5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lua/i5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lua/i5;->b:Lda/g;

    .line 6
    .line 7
    iget v3, p0, Lua/i5;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget p1, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->E:I

    .line 13
    .line 14
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast v1, Landroid/widget/EditText;

    .line 20
    .line 21
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string p1, "\u8bf7\u8f93\u5165\u914d\u5bf9\u7801"

    .line 32
    .line 33
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->D:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v3, "\u786e\u5b9a"

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->D:Landroid/widget/TextView;

    .line 57
    .line 58
    const-string v3, "\u8fde\u63a5\u4e2d"

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->C:Landroid/widget/TextView;

    .line 64
    .line 65
    const-string v3, "\u6b63\u5728\u5339\u914d\u4e2d"

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lb8/a;

    .line 71
    .line 72
    const/16 v3, 0x11

    .line 73
    .line 74
    invoke-direct {v1, p1, v3}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lmc/c;

    .line 78
    .line 79
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Lua/s7;

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    invoke-direct {v0, v1, v2}, Lua/s7;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V0:I

    .line 107
    .line 108
    move-object v4, v2

    .line 109
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v0, Lha/fa;

    .line 115
    .line 116
    iget-object v5, v4, Lda/g;->A:Lda/g;

    .line 117
    .line 118
    new-instance v8, Lua/g6;

    .line 119
    .line 120
    move-object v7, v1

    .line 121
    check-cast v7, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v8, v4, p1, v7}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    move-object v3, v0

    .line 128
    invoke-direct/range {v3 .. v8}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_1
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 136
    .line 137
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 138
    .line 139
    xor-int/2addr p1, v0

    .line 140
    iput-boolean p1, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 141
    .line 142
    if-nez v0, :cond_2

    .line 143
    .line 144
    const p1, 0x7f080234

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const p1, 0x7f080237

    .line 149
    .line 150
    .line 151
    :goto_1
    check-cast v1, Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 159
    .line 160
    .line 161
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 162
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 172
    .line 173
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 174
    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->F:Ljava/util/ArrayList;

    .line 181
    .line 182
    :goto_2
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_2
    sget p1, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->G:I

    .line 187
    .line 188
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    check-cast v1, Landroid/widget/EditText;

    .line 194
    .line 195
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_4

    .line 204
    .line 205
    const-string p1, "\u8bf7\u8f93\u5165\u5305\u540d"

    .line 206
    .line 207
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_4
    const-string v1, "."

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_5

    .line 218
    .line 219
    const-string p1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5305\u540d"

    .line 220
    .line 221
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_5
    new-instance v1, Lma/b;

    .line 226
    .line 227
    const/16 v3, 0x1c

    .line 228
    .line 229
    invoke-direct {v1, v2, v3, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    new-instance p1, Lmc/c;

    .line 233
    .line 234
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    new-instance v1, Lua/k5;

    .line 252
    .line 253
    invoke-direct {v1, v2, v0}, Lua/k5;-><init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 257
    .line 258
    .line 259
    :goto_3
    return-void

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
