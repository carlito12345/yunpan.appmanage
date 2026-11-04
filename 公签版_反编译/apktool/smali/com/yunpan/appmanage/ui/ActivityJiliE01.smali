.class public Lcom/yunpan/appmanage/ui/ActivityJiliE01;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic F:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public E:Lha/u9;


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

.method public static x(Lcom/yunpan/appmanage/ui/ActivityJiliE01;ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lua/e3;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lua/e3;-><init>(ZZ)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lmc/c;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-direct {p1, p2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lua/f3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p2, p0, v0}, Lua/f3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0061

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b05ba

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, "\u661f\u745eE01\u7cfb\u7edf\u4e13\u7528\u529f\u80fd\uff0c\u7981\u6b62\u7528\u4e8e\u975e\u6cd5\u7528\u9014"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lha/u9;

    .line 21
    .line 22
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->E:Lha/u9;

    .line 28
    .line 29
    const v0, 0x7f0b03ad

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    new-instance v1, Lua/g1;

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0b0351

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    const v1, 0x7f0b0354

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/ImageView;

    .line 65
    .line 66
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 67
    .line 68
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 69
    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    const v2, 0x7f080234

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const v2, 0x7f080237

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lha/f;

    .line 83
    .line 84
    const/4 v3, 0x7

    .line 85
    invoke-direct {v2, v1, v3}, Lha/f;-><init>(Landroid/widget/ImageView;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    const v0, 0x7f0b04f1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 101
    .line 102
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 103
    .line 104
    const/4 v2, 0x2

    .line 105
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lx9/k3;

    .line 112
    .line 113
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 117
    .line 118
    const v1, 0x7f080258

    .line 119
    .line 120
    .line 121
    const-string v2, "adb\u63d0\u6743(\u4e34\u65f6\u63d0\u5347\u4e3aroot\u6743\u9650)"

    .line 122
    .line 123
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 127
    .line 128
    const-string v2, "\u9884\u7559\u6309\u94ae"

    .line 129
    .line 130
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 134
    .line 135
    const v1, 0x7f0802bf

    .line 136
    .line 137
    .line 138
    const-string v2, "\u4e00\u952eroot\u7cfb\u7edf(\u65e0\u635f\u5feb\u901froot)"

    .line 139
    .line 140
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 144
    .line 145
    const-string v2, "\u79fb\u9664root\u6743\u9650(\u64a4\u9500\u7cfb\u7edfroot)"

    .line 146
    .line 147
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 151
    .line 152
    const v1, 0x7f080257

    .line 153
    .line 154
    .line 155
    const-string v2, "\u5c06root\u6587\u4ef6\u9501\u5b9a\u53ea\u80fd\u7ba1\u5bb6\u4f7f\u7528"

    .line 156
    .line 157
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 161
    .line 162
    const-string v2, "\u64a4\u9500\u9501\u5b9aroot\u6587\u4ef6"

    .line 163
    .line 164
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 168
    .line 169
    const v1, 0x7f080238

    .line 170
    .line 171
    .line 172
    const-string v2, "\u4e00\u952e\u5378\u8f7d\u7cfb\u7edf\u81ea\u5e26 \u9ad8\u5fb7\u5730\u56fe"

    .line 173
    .line 174
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 178
    .line 179
    const v1, 0x7f08028c

    .line 180
    .line 181
    .line 182
    const-string v2, "\u4e00\u952e\u5378\u8f7d\u7cfb\u7edf\u81ea\u5e26 \u9177\u6211\u97f3\u4e50"

    .line 183
    .line 184
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 188
    .line 189
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->D:Lx9/k3;

    .line 195
    .line 196
    new-instance v1, Lua/d3;

    .line 197
    .line 198
    const/4 v2, 0x0

    .line 199
    invoke-direct {v1, p0, v2}, Lua/d3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 200
    .line 201
    .line 202
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 203
    .line 204
    return-void
.end method

.method public final y(Z)V
    .locals 9

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, La2/w0;->P()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 19
    .line 20
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p1, "\u65e0\u6743\u9650\uff1a\u8bf7\u5148\u63d0\u6743"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string v0, "\u5982\u679c\u6210\u529f\u5220\u9664(\u9ad8\u5fb7\u5730\u56fe)\uff0c\u662f\u5426\u5220\u9664\u65e7\u7248\u5730\u56fe\u6570\u636e\uff1f"

    .line 35
    .line 36
    :goto_0
    move-object v4, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const-string v0, "\u5982\u679c\u6210\u529f\u5220\u9664(\u9177\u6211\u97f3\u4e50)\uff0c\u662f\u5426\u5220\u9664\u65e7\u7248\u97f3\u4e50\u6570\u636e\uff1f"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    new-instance v0, Lha/z6;

    .line 42
    .line 43
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 44
    .line 45
    new-instance v8, Lh5/d0;

    .line 46
    .line 47
    invoke-direct {v8, p0, p1}, Lh5/d0;-><init>(Ljava/lang/Object;Z)V

    .line 48
    .line 49
    .line 50
    const-string v6, "\u5220\u9664\u6570\u636e"

    .line 51
    .line 52
    const-string v7, "\u4e0d\u5220\u6570\u636e"

    .line 53
    .line 54
    const-string v5, ""

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    move-object v2, p0

    .line 58
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
