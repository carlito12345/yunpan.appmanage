.class public Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;
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

.method public static x(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lua/e7;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, p2, v1}, Lua/e7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;Ljava/lang/String;ZI)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lmc/c;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lua/f7;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-direct {p2, p0, v0}, Lua/f7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0038

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
    const-string v1, "\u4fee\u6539\u7cfb\u7edf\uff0c\u8bf7\u52ff\u4e71\u7528"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0b037d

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lua/c7;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v2}, Lua/c7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lha/u9;

    .line 37
    .line 38
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->E:Lha/u9;

    .line 44
    .line 45
    const v0, 0x7f0b03ad

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    new-instance v1, Lua/c7;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, p0, v2}, Lua/c7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0b04f1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 73
    .line 74
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 75
    .line 76
    const/4 v2, 0x2

    .line 77
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lx9/k3;

    .line 84
    .line 85
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 89
    .line 90
    const v1, 0x7f080238

    .line 91
    .line 92
    .line 93
    const-string v2, "(\u8f66\u673a)\u4e00\u952e\u5378\u8f7d\u7cfb\u7edf\u81ea\u5e26\u7684\u9ad8\u5fb7\u5730\u56fe"

    .line 94
    .line 95
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 99
    .line 100
    const v1, 0x7f08028c

    .line 101
    .line 102
    .line 103
    const-string v2, "(\u8f66\u673a)\u4e00\u952e\u5378\u8f7d\u7cfb\u7edf\u81ea\u5e26\u7684\u9177\u6211\u97f3\u4e50"

    .line 104
    .line 105
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 109
    .line 110
    const v1, 0x7f08021f

    .line 111
    .line 112
    .line 113
    const-string v2, "(\u6d4b\u8bd5)\u5b89\u88c5\u4e3a\u666e\u901a\u7cfb\u7edf\u5e94\u7528"

    .line 114
    .line 115
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 119
    .line 120
    const-string v2, "(\u6d4b\u8bd5)\u5b89\u88c5\u4e3a\u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528"

    .line 121
    .line 122
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 126
    .line 127
    const-string v2, "(\u6d4b\u8bd5)\u5c06\u666e\u901a\u5e94\u7528\u8f6c\u4e3a\u7cfb\u7edf\u5e94\u7528"

    .line 128
    .line 129
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 133
    .line 134
    new-instance v1, Lx9/l3;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v3, "(\u6d4b\u8bd5)\u5c06"

    .line 139
    .line 140
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const v3, 0x7f13002f

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, "\u8f6c\u4e3a\u7cfb\u7edf\u5e94\u7528"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const v3, 0x7f08008f

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, v3, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 172
    .line 173
    const v1, 0x7f08026f

    .line 174
    .line 175
    .line 176
    const-string v2, "\u5378\u8f7d\u6570\u636e(\u5378\u8f7d\u9ad8\u5fb7\u540e\u65e0\u6cd5\u518d\u5b89\u88c5\u65f6\u7528)"

    .line 177
    .line 178
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 182
    .line 183
    const v1, 0x7f08024c

    .line 184
    .line 185
    .line 186
    const-string v2, "(\u672a\u5f00\u53d1)(\u5371\u9669)\u66ff\u6362\u5f00\u673a\u52a8\u753b"

    .line 187
    .line 188
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 192
    .line 193
    const v1, 0x7f08025e

    .line 194
    .line 195
    .line 196
    const-string v2, "(\u672a\u5f00\u53d1)(\u5371\u9669)\u66ff\u6362\u7cfb\u7edf\u5b57\u4f53"

    .line 197
    .line 198
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->D:Lx9/k3;

    .line 209
    .line 210
    new-instance v1, Lua/d7;

    .line 211
    .line 212
    invoke-direct {v1, p0}, Lua/d7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;)V

    .line 213
    .line 214
    .line 215
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 216
    .line 217
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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v8, Lha/z6;

    .line 36
    .line 37
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "\u7814\u7a76\u53d1\u73b0\uff1a\u90e8\u5206\u7cfb\u7edf\u5982\u679c\u76f4\u63a5\u5220\u9664\u7684\u8bdd\uff0c\u7cfb\u7edf\u4e0d\u4f1a\u91ca\u653e\u7cfb\u7edf\u5206\u533a\u7684\u7a7a\u95f4\uff01\n\n\u6240\u4ee5\u5efa\u8bae\uff1a\u5148\u5728"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const v1, 0x7f13016f

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "\u7684\u3010\u5e94\u7528\u7ba1\u7406\u3011\u91cc\u9762\u5378\u8f7d\u6b64\u5e94\u7528\uff0c\u7136\u540e\u91cd\u542f\u7cfb\u7edf\u540e\u518d\u6765\u5f3a\u5236\u5220\u9664\uff0c\u8fd9\u6837\u5c31\u4f1a100%\u91ca\u653e\u7cfb\u7edf\u5206\u533a\u7684\u7a7a\u95f4"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-instance v7, Lua/g7;

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-direct {v7, p0, p1, v0}, Lua/g7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;ZI)V

    .line 69
    .line 70
    .line 71
    const-string v5, "\u53d6\u6d88"

    .line 72
    .line 73
    const-string v6, "\u5f3a\u5236\u5220\u9664"

    .line 74
    .line 75
    const-string v4, ""

    .line 76
    .line 77
    move-object v0, v8

    .line 78
    move-object v1, p0

    .line 79
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final z(Z)V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const-string p1, "\u4ec5\u652f\u6301\u5b89\u53535.0\u4ee5\u4e0a\u7cfb\u7edf"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, La2/w0;->P()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string p1, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 25
    .line 26
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 31
    .line 32
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string p1, "\u65e0\u6743\u9650\uff1a\u8bf7\u5148\u63d0\u6743"

    .line 39
    .line 40
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    new-instance v8, Lha/z6;

    .line 48
    .line 49
    new-instance v7, Lua/g7;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-direct {v7, p0, p1, v0}, Lua/g7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;ZI)V

    .line 53
    .line 54
    .line 55
    const-string v5, "\u6211\u77e5\u9053\uff0c\u786e\u5b9a"

    .line 56
    .line 57
    const-string v6, "\u53d6\u6d88"

    .line 58
    .line 59
    const-string v3, "\u60a8\u786e\u5b9a\u8981\u8fd9\u4e48\u505a\uff1f \u8bf7\u614e\u91cd"

    .line 60
    .line 61
    const-string v4, "\u5982\u679c\u51fa\u73b0\u65e0\u6cd5\u5f00\u673a\u7684\u8bdd\uff0c\u6982\u4e0d\u8d1f\u8d23"

    .line 62
    .line 63
    move-object v0, v8

    .line 64
    move-object v1, p0

    .line 65
    move-object v2, p0

    .line 66
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
