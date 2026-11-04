.class public final Lha/sa;
.super Lha/a4;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/k3;

.field public i:Lha/u9;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 2

    .line 1
    const v0, 0x7f0e00dd

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    sget-object v0, Lfa/a;->b:Lfa/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/e0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "OTG\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lfa/d0;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p1, v1}, Lfa/d0;-><init>(II)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lmc/c;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lha/ra;

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    invoke-direct {v0, p0, v1}, Lha/ra;-><init>(Lha/sa;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lha/u9;

    .line 5
    .line 6
    iget-object v0, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {p1, v0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lha/sa;->i:Lha/u9;

    .line 14
    .line 15
    const p1, 0x7f0b03ad

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    new-instance v0, Lha/g9;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-direct {v0, v2, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const p1, 0x7f0b04f1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 44
    .line 45
    iput-object p1, p0, Lha/sa;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 46
    .line 47
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lx9/k3;

    .line 57
    .line 58
    invoke-direct {p1}, Lx9/k3;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 62
    .line 63
    const v0, 0x7f0802e1

    .line 64
    .line 65
    .line 66
    const-string v1, "\u5b89\u88c5\u5e94\u7528\u5230\u8bbe\u5907\u4e0a"

    .line 67
    .line 68
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 72
    .line 73
    const v0, 0x7f0802cc

    .line 74
    .line 75
    .line 76
    const-string v1, "\u6267\u884c\u547d\u4ee4"

    .line 77
    .line 78
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 82
    .line 83
    const v0, 0x7f080214

    .line 84
    .line 85
    .line 86
    const-string v1, "\u4e34\u65f6\u5f00\u542f\u65e0\u7ebfADB(\u4ec5\u652f\u6301\u90e8\u5206\u7cfb\u7edf)"

    .line 87
    .line 88
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 92
    .line 93
    const-string v1, "\u6c38\u4e45\u5f00\u542f\u65e0\u7ebfADB(\u4ec5\u652f\u6301\u90e8\u5206\u7cfb\u7edf)"

    .line 94
    .line 95
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 99
    .line 100
    const-string v1, "\u5c06\u7f51\u7edcadb\u7aef\u53e3\u6539\u4e3a5555"

    .line 101
    .line 102
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 106
    .line 107
    const-string v1, "\u5c06\u7f51\u7edcadb\u7aef\u53e3\u6539\u4e3a\u6307\u5b9a"

    .line 108
    .line 109
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 113
    .line 114
    new-instance v0, Lx9/l3;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "\u7ed9\u5bf9\u65b9["

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 124
    .line 125
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 126
    .line 127
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 128
    .line 129
    const-string v4, "]\u6388\u4e88\u5fc5\u8981\u6743\u9650"

    .line 130
    .line 131
    invoke-static {v3, v4, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const v3, 0x7f0801d3

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v3, v1}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 145
    .line 146
    new-instance v0, Lx9/l3;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v4, "\u6fc0\u6d3b\u5bf9\u65b9["

    .line 151
    .line 152
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 156
    .line 157
    const-string v4, "]jni-adb\u670d\u52a1"

    .line 158
    .line 159
    invoke-static {v2, v4, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v3, v1}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 170
    .line 171
    const v0, 0x7f080246

    .line 172
    .line 173
    .line 174
    const-string v1, "\u91cd\u542f\u8bbe\u5907"

    .line 175
    .line 176
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 180
    .line 181
    const v0, 0x7f080220

    .line 182
    .line 183
    .line 184
    const-string v1, "(\u672a\u5f00\u53d1)\u7ba1\u7406\u5e94\u7528"

    .line 185
    .line 186
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 190
    .line 191
    const v0, 0x7f0802bf

    .line 192
    .line 193
    .line 194
    const-string v1, "(\u672a\u5f00\u53d1)adb\u63d0\u6743(\u4e34\u65f6\u63d0\u5347\u4e3aroot\u6743\u9650)"

    .line 195
    .line 196
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 200
    .line 201
    const v0, 0x7f0802d8

    .line 202
    .line 203
    .line 204
    const-string v1, "(\u672a\u5f00\u53d1)\u5173\u95ed\u5206\u533a\u68c0\u6d4b"

    .line 205
    .line 206
    invoke-static {v0, v1, p1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lha/sa;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 210
    .line 211
    iget-object v0, p0, Lha/sa;->h:Lx9/k3;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lha/sa;->h:Lx9/k3;

    .line 217
    .line 218
    new-instance v0, Lha/pa;

    .line 219
    .line 220
    invoke-direct {v0, p0}, Lha/pa;-><init>(Lha/sa;)V

    .line 221
    .line 222
    .line 223
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 224
    .line 225
    return-void
.end method
