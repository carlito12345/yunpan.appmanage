.class public final synthetic Lua/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivitySidebar;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/n6;->a:I

    iput-object p1, p0, Lua/n6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x3

    .line 2
    iget-object p2, p0, Lua/n6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebar;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    iget v3, p0, Lua/n6;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v5, p0, Lua/n6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebar;

    .line 13
    .line 14
    iget-object p2, v5, Lcom/yunpan/appmanage/ui/ActivitySidebar;->L:Lx9/t2;

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lz7/s;

    .line 21
    .line 22
    const-string v3, "gnType"

    .line 23
    .line 24
    invoke-virtual {p2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lz7/p;->e()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-ne p2, p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lha/fa;

    .line 35
    .line 36
    iget-object v6, v5, Lda/g;->A:Lda/g;

    .line 37
    .line 38
    new-array p2, v2, [Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "\u5220\u9664"

    .line 41
    .line 42
    aput-object v3, p2, v1

    .line 43
    .line 44
    const-string v3, "\u7f16\u8f91"

    .line 45
    .line 46
    aput-object v3, p2, v0

    .line 47
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    if-ge v1, v2, :cond_0

    .line 54
    .line 55
    aget-object v4, p2, v1

    .line 56
    .line 57
    invoke-static {v4, v3, v4, v1, v0}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    new-instance v9, Lua/o6;

    .line 67
    .line 68
    invoke-direct {v9, v5, p3}, Lua/o6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;I)V

    .line 69
    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    move-object v4, p1

    .line 73
    invoke-direct/range {v4 .. v9}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v5, p3}, Lcom/yunpan/appmanage/ui/ActivitySidebar;->A(I)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void

    .line 84
    :pswitch_0
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->I:Lx9/u0;

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Lx9/u0;->F(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 94
    .line 95
    iput-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/yunpan/appmanage/ui/ActivitySidebar;->z()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->G:Lx9/u0;

    .line 102
    .line 103
    invoke-virtual {p1, p3}, Lx9/u0;->F(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 111
    .line 112
    iput-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/yunpan/appmanage/ui/ActivitySidebar;->y()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_2
    sget v3, Lcom/yunpan/appmanage/ui/ActivitySidebar;->P:I

    .line 119
    .line 120
    if-eqz p3, :cond_7

    .line 121
    .line 122
    if-eq p3, v0, :cond_6

    .line 123
    .line 124
    if-eq p3, v2, :cond_3

    .line 125
    .line 126
    if-eq p3, p1, :cond_2

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_2
    iget-object p1, p2, Lda/g;->A:Lda/g;

    .line 133
    .line 134
    new-instance p3, Lua/i1;

    .line 135
    .line 136
    const/16 v0, 0x10

    .line 137
    .line 138
    invoke-direct {p3, v0, p2}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 v0, -0x1

    .line 142
    invoke-static {p2, p1, v0, v1, p3}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->I:Lx9/u0;

    .line 147
    .line 148
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    const-string v1, "isOn"

    .line 153
    .line 154
    if-nez p1, :cond_4

    .line 155
    .line 156
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_4

    .line 167
    .line 168
    const-string p1, "\u5148\u53bb\u8bbe\u7f6e\u91cc\u9762\u5f00\u542f\u60a8\u9700\u8981\u7684\u4fa7\u8fb9"

    .line 169
    .line 170
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_4
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    xor-int/2addr v0, v2

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p2, Lda/g;->A:Lda/g;

    .line 193
    .line 194
    iget-object v0, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 195
    .line 196
    invoke-static {p1, v0}, Lq4/a;->X(Landroid/content/Context;Lz7/s;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->E:Lx9/t0;

    .line 200
    .line 201
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 206
    .line 207
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 208
    .line 209
    invoke-virtual {p2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2}, Lz7/p;->b()Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_5

    .line 218
    .line 219
    const p2, 0x7f080234

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_5
    const p2, 0x7f080237

    .line 224
    .line 225
    .line 226
    :goto_2
    iput p2, v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;->resId:I

    .line 227
    .line 228
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    const-class p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 233
    .line 234
    invoke-virtual {p2, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_7
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 239
    .line 240
    .line 241
    :goto_3
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
