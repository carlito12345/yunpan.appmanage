.class public final Lha/l4;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lha/l4;->b:I

    .line 3
    iput-object p1, p0, Lha/l4;->d:Ljava/lang/Object;

    iput-object p2, p0, Lha/l4;->e:Ljava/lang/Object;

    iput p3, p0, Lha/l4;->c:I

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lda/g;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Lha/l4;->b:I

    iput-object p1, p0, Lha/l4;->e:Ljava/lang/Object;

    iput-object p2, p0, Lha/l4;->d:Ljava/lang/Object;

    iput p3, p0, Lha/l4;->c:I

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lha/l4;->b:I

    iput-object p1, p0, Lha/l4;->e:Ljava/lang/Object;

    iput p2, p0, Lha/l4;->c:I

    iput-object p3, p0, Lha/l4;->d:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Lha/l4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lua/i9;

    .line 10
    .line 11
    iget-object v1, v0, Lua/i9;->h:Lha/u9;

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-static {v1, v2}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "\u9700\u8981\u5bc6\u7801"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "\u5bc6\u7801\u9519\u8bef"

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const-string p1, "\u5bc6\u7801\u9519\u8bef\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 61
    .line 62
    .line 63
    :cond_2
    new-instance p1, Lha/o1;

    .line 64
    .line 65
    iget-object v0, v0, Lda/h;->e:Landroid/content/Context;

    .line 66
    .line 67
    new-instance v1, Lua/i1;

    .line 68
    .line 69
    const/16 v2, 0x19

    .line 70
    .line 71
    invoke-direct {v1, v2, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v0, v1}, Lha/o1;-><init>(Landroid/content/Context;Lua/i1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void

    .line 81
    :pswitch_2
    iget-object v0, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 106
    .line 107
    new-instance v0, Lx9/j1;

    .line 108
    .line 109
    const-string v1, "\u96eb\u6267\u884c"

    .line 110
    .line 111
    invoke-direct {v0, v1}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget v1, p0, Lha/l4;->c:I

    .line 115
    .line 116
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_3
    iget-object p1, p0, Lha/l4;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 123
    .line 124
    iget-boolean v0, p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 125
    .line 126
    xor-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    iput-boolean v0, p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 129
    .line 130
    iget-object v0, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 135
    .line 136
    iget v1, p0, Lha/l4;->c:I

    .line 137
    .line 138
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->name:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, "\uff1a\u8bbe\u7f6e\u5931\u8d25"

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_4
    iget-object v0, p0, Lha/l4;->d:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lx9/b;

    .line 167
    .line 168
    iget-boolean v1, v0, Lx9/b;->f:Z

    .line 169
    .line 170
    xor-int/lit8 v1, v1, 0x1

    .line 171
    .line 172
    iput-boolean v1, v0, Lx9/b;->f:Z

    .line 173
    .line 174
    iget-object v1, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 179
    .line 180
    iget v2, p0, Lha/l4;->c:I

    .line 181
    .line 182
    invoke-virtual {v1, v2, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v1, "\u5931\u8d25\uff1a"

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/l4;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :sswitch_0
    instance-of v0, p1, Lza/a;

    .line 8
    .line 9
    iget-object v1, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lua/i9;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lza/a;

    .line 16
    .line 17
    iget-object v0, v1, Lua/i9;->h:Lha/u9;

    .line 18
    .line 19
    iget-object p1, p1, Lza/a;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v1, Lua/i9;->h:Lha/u9;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void

    .line 39
    :sswitch_1
    iget-object p1, p0, Lha/l4;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 42
    .line 43
    iget-boolean v0, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 44
    .line 45
    xor-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    iput-boolean v0, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 48
    .line 49
    iget-object p1, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Lc6/g;

    .line 52
    .line 53
    iget v0, p0, Lha/l4;->c:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lgc/b;)V
    .locals 2

    .line 1
    iget p1, p0, Lha/l4;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lua/i9;

    .line 10
    .line 11
    iget-object p1, p1, Lua/i9;->h:Lha/u9;

    .line 12
    .line 13
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    iget-object p1, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "\u5c1d\u8bd5\u8fde\u63a5shizuku\u4e2d\u3002\u3002\u3002"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 31
    .line 32
    new-instance v0, Lx9/j1;

    .line 33
    .line 34
    const-string v1, "\u8fde\u63a5\u4e2d"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lha/l4;->c:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 6

    .line 1
    iget v0, p0, Lha/l4;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lha/l4;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lha/l4;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Lha/l4;->b:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    return-void

    .line 13
    :pswitch_1
    check-cast v2, Lua/i9;

    .line 14
    .line 15
    iget-object v0, v2, Lua/i9;->h:Lha/u9;

    .line 16
    .line 17
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 18
    .line 19
    .line 20
    const-string v0, "\u89e3\u538b\u5b8c\u6210"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v0, v3}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v2, Lua/i9;->z:Lx9/f0;

    .line 27
    .line 28
    new-instance v3, Lx9/w3;

    .line 29
    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v0, v4, v3}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v2, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 45
    .line 46
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 58
    .line 59
    new-instance v2, Lcom/yunpan/appmanage/util/z;

    .line 60
    .line 61
    new-instance v3, Ljava/io/File;

    .line 62
    .line 63
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void

    .line 73
    :pswitch_2
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 74
    .line 75
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 76
    .line 77
    new-instance v4, Lx9/j1;

    .line 78
    .line 79
    const-string v5, "\u96eb\u6267\u884c"

    .line 80
    .line 81
    invoke-direct {v4, v5}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v0, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    check-cast v1, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityShell;->C(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_3
    check-cast v2, Ll5/y;

    .line 94
    .line 95
    iget-object v2, v2, Ll5/y;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 100
    .line 101
    check-cast v1, Lx9/y;

    .line 102
    .line 103
    invoke-virtual {v2, v0, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
