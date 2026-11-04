.class public final Lha/s2;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lha/s2;->b:I

    iput-object p3, p0, Lha/s2;->d:Ljava/lang/Object;

    iput p1, p0, Lha/s2;->c:I

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method private final Y(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Lha/s2;->b:I

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
    iget-object p1, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 12
    .line 13
    new-instance v0, Lx9/l3;

    .line 14
    .line 15
    const v1, 0x7f0802bf

    .line 16
    .line 17
    .line 18
    const-string v2, "\u641c\u7d22\u7aef\u53e3"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lha/s2;->c:I

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, La2/w0;->P()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string p1, "\u4fee\u6539\u5931\u8d25"

    .line 41
    .line 42
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p1, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u5148\u8fde\u63a5adb"

    .line 47
    .line 48
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :pswitch_3
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 53
    .line 54
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_4
    iget-object v0, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ""

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, ""

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v1, ""

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lha/s2;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, Lha/s2;->b:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    return-void

    .line 12
    :pswitch_1
    instance-of v0, p1, Lba/r;

    .line 13
    .line 14
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Lba/r;

    .line 19
    .line 20
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 21
    .line 22
    iget-boolean p1, p1, Lba/r;->o:Z

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 29
    .line 30
    check-cast p1, Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 36
    .line 37
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v1, v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->smoothScrollToPositionWithOffset(IIZ)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void

    .line 50
    :pswitch_2
    instance-of v3, p1, Lcom/yunpan/appmanage/db/AppBean;

    .line 51
    .line 52
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    new-instance v0, Lha/z6;

    .line 57
    .line 58
    sget v3, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 59
    .line 60
    iget-object v6, v2, Lda/g;->A:Lda/g;

    .line 61
    .line 62
    new-instance v11, Lkf/d;

    .line 63
    .line 64
    const/16 v2, 0x1a

    .line 65
    .line 66
    invoke-direct {v11, v2, p0, p1, v1}, Lkf/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 67
    .line 68
    .line 69
    const-string v9, "\u542f\u52a8\u5e94\u7528"

    .line 70
    .line 71
    const-string v10, ""

    .line 72
    .line 73
    const-string v7, "\u68c0\u6d4b\u5230\u65b0\u7684\u9ed8\u8ba4\u684c\u9762\u5e76\u6ca1\u6709\u542f\u52a8\uff0c\u8bf7\u542f\u52a8\u4e00\u4e0b"

    .line 74
    .line 75
    const-string v8, "\u56e0\u4e3a\u67d0\u4e9b\u7cfb\u7edf\u5b89\u88c5\u684c\u9762\u5e94\u7528\u540e\uff0c\u5982\u679c\u6ca1\u542f\u52a8\u8fc7\u7684\u8bdd\uff0c\u7cfb\u7edf\u4e0d\u4f1a\u81ea\u52a8\u6253\u5f00"

    .line 76
    .line 77
    move-object v4, v0

    .line 78
    move-object v5, v6

    .line 79
    invoke-direct/range {v4 .. v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    new-instance p1, Lha/z6;

    .line 91
    .line 92
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 93
    .line 94
    iget-object v6, v2, Lda/g;->A:Lda/g;

    .line 95
    .line 96
    new-instance v11, Lua/i1;

    .line 97
    .line 98
    invoke-direct {v11, v1, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const-string v9, "\u597d\u7684"

    .line 102
    .line 103
    const-string v10, ""

    .line 104
    .line 105
    const-string v7, "\u5373\u5c06\u5f39\u51fa\u7cfb\u7edf\u684c\u9762\u9009\u62e9\u5668\uff0c\u8bf7\u9009\u4e2d\u4f60\u9700\u8981\u7684\u684c\u9762\u5e94\u7528 \n\u7136\u540e\u70b9\u51fb\u3010\u59cb\u7ec8\u3011\u5373\u53ef\u8bbe\u7f6e\u4e3a\u9ed8\u8ba4\u684c\u9762\uff01"

    .line 106
    .line 107
    const-string v8, "\u8bf7\u52a1\u5fc5\u8bbe\u7f6e\u4e00\u4e2a\u9ed8\u8ba4\u684c\u9762\uff0c\u5e76\u70b9\u51fb\u3010\u59cb\u7ec8\u3011"

    .line 108
    .line 109
    move-object v4, p1

    .line 110
    move-object v5, v2

    .line 111
    invoke-direct/range {v4 .. v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 115
    .line 116
    .line 117
    iget-object p1, v2, Lda/g;->A:Lda/g;

    .line 118
    .line 119
    invoke-static {p1}, Lqf/c;->Z(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 124
    .line 125
    check-cast p1, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 126
    .line 127
    invoke-virtual {v1, v0, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void

    .line 131
    :pswitch_3
    if-eqz p1, :cond_4

    .line 132
    .line 133
    instance-of v1, p1, Lx9/b;

    .line 134
    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 138
    .line 139
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 140
    .line 141
    check-cast p1, Lx9/b;

    .line 142
    .line 143
    invoke-virtual {v1, v0, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    return-void

    .line 147
    :pswitch_4
    check-cast p1, Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    const-string p1, "\u6b64\u5e94\u7528\u6ca1\u6709\u542f\u52a8\u9875"

    .line 156
    .line 157
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    new-instance v1, Lha/r2;

    .line 162
    .line 163
    check-cast v2, Lha/t2;

    .line 164
    .line 165
    iget-object v3, v2, Lha/a4;->a:Landroid/app/Activity;

    .line 166
    .line 167
    iget-object v2, v2, Lha/a4;->b:Landroid/content/Context;

    .line 168
    .line 169
    new-instance v4, Lha/o;

    .line 170
    .line 171
    const/4 v5, 0x4

    .line 172
    invoke-direct {v4, v0, v5, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v3, v2, p1, v4}, Lha/r2;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/o;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 179
    .line 180
    .line 181
    :goto_2
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 3

    .line 1
    iget p1, p0, Lha/s2;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object p1, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 12
    .line 13
    new-instance v0, Lx9/l3;

    .line 14
    .line 15
    const v1, 0x7f0802bf

    .line 16
    .line 17
    .line 18
    const-string v2, "\u6b63\u5728\u641c\u7d22\u7aef\u53e3..."

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lha/s2;->c:I

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    const-string p1, "\u8bbe\u7f6e\u4e2d"

    .line 30
    .line 31
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onComplete()V
    .locals 4

    .line 1
    iget v0, p0, Lha/s2;->b:I

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
    iget-object v0, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 12
    .line 13
    new-instance v1, Lx9/l3;

    .line 14
    .line 15
    const v2, 0x7f0802bf

    .line 16
    .line 17
    .line 18
    const-string v3, "\u641c\u7d22\u7aef\u53e3"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lha/s2;->c:I

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    iget-object v0, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 34
    .line 35
    iget v1, p0, Lha/s2;->c:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object v2, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lx9/p2;

    .line 51
    .line 52
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v1, v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/yunpan/appmanage/bean/InputMethodBean;

    .line 67
    .line 68
    iget v3, p0, Lha/s2;->c:I

    .line 69
    .line 70
    if-ne v1, v3, :cond_0

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const/4 v3, 0x0

    .line 75
    :goto_1
    iput-boolean v3, v2, Lcom/yunpan/appmanage/bean/InputMethodBean;->isDefault:Z

    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->b()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_4
    iget-object v0, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 91
    .line 92
    const/16 v2, 0x8

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 98
    .line 99
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/lit8 v1, v1, -0x1

    .line 104
    .line 105
    :goto_2
    iget v2, p0, Lha/s2;->c:I

    .line 106
    .line 107
    if-le v1, v2, :cond_2

    .line 108
    .line 109
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Lc6/g;->C(I)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    return-void

    .line 118
    :pswitch_5
    iget-object v0, p0, Lha/s2;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lka/d;

    .line 121
    .line 122
    iget-object v0, v0, Lka/d;->d:Lx9/m3;

    .line 123
    .line 124
    iget v1, p0, Lha/s2;->c:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 127
    .line 128
    .line 129
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 130
    .line 131
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
