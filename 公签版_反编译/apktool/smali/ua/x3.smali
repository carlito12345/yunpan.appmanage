.class public final Lua/x3;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/x3;->b:I

    iput-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/x3;->b:I

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
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 67
    .line 68
    const-string v1, "\u5931\u8d25\uff1a"

    .line 69
    .line 70
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_4
    iget-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 92
    .line 93
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 94
    .line 95
    .line 96
    const-string p1, "\u63d0\u6743\u5931\u8d25\uff1a\u4e0d\u9002\u5408\u6b64\u7cfb\u7edf"

    .line 97
    .line 98
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_5
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 105
    .line 106
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 107
    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, ""

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_6
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 137
    .line 138
    invoke-virtual {v0}, Lha/u9;->a()V

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
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, ""

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 2
    .line 3
    iget v1, p0, Lua/x3;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    const/4 v1, 0x1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "\u5bbd\u5bb9\u6a21\u5f0f"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "\u5f3a\u5236\u6a21\u5f0f"

    .line 32
    .line 33
    :goto_0
    new-instance v9, Lha/z6;

    .line 34
    .line 35
    sget v1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 36
    .line 37
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 38
    .line 39
    const-string v0, "\u5f53\u524d\u72b6\u6001\uff1a"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v8, Lua/i1;

    .line 46
    .line 47
    const/16 p1, 0xc

    .line 48
    .line 49
    invoke-direct {v8, p1, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string v6, "\u5bbd\u5bb9\u6a21\u5f0f"

    .line 53
    .line 54
    const-string v7, "\u5f3a\u5236\u6a21\u5f0f"

    .line 55
    .line 56
    const-string v5, "\u60a8\u4e86\u89e3\u8fd9\u662f\u5e72\u5565\u7684\u4e0d\uff1f\u4e0d\u4e86\u89e3\u7684\u8bdd\uff0c\u8bf7\u52ff\u70b9\u51fb\uff01\n\u5bbd\u5bb9\u6a21\u5f0f\u80fd\u89e3\u9664\u7cfb\u7edf\u66f4\u591a\u9650\u5236\n\u5bbd\u5bb9\u6a21\u5f0f\uff1asetenforce 1\n\u5f3a\u5236\u6a21\u5f0f\uff1asetenforce 0"

    .line 57
    .line 58
    move-object v1, v9

    .line 59
    move-object v2, v3

    .line 60
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/x3;->b:I

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
    iget-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 10
    .line 11
    const-string v0, "\u66f4\u6539\u4e2d"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_2
    iget-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 20
    .line 21
    const-string v0, "\u63d0\u6743\u4e2d"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_3
    iget-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 30
    .line 31
    const-string v0, "\u64cd\u4f5c\u4e2d"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_4
    iget-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 40
    .line 41
    const-string v0, "\u63d0\u6743\u4e2d"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_5
    iget-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 50
    .line 51
    const-string v0, "\u63d0\u6743\u4e2d"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_6
    iget-object p1, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 60
    .line 61
    const-string v0, "\u66f4\u6539\u4e2d"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onComplete()V
    .locals 9

    .line 1
    iget v0, p0, Lua/x3;->b:I

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
    iget-object v2, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 8
    .line 9
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lha/z6;

    .line 15
    .line 16
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 17
    .line 18
    new-instance v8, Ls9/a;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v8, v1, v4}, Ls9/a;-><init>(IZ)V

    .line 24
    .line 25
    .line 26
    const-string v6, "\u7acb\u5373\u91cd\u542f"

    .line 27
    .line 28
    const-string v7, "\u7a0d\u540e\u518d\u8bf4"

    .line 29
    .line 30
    const-string v4, "\u66f4\u6539\u6b64\u8bbe\u7f6e\u540e\u9700\u8981\u91cd\u542f"

    .line 31
    .line 32
    const-string v5, ""

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 45
    .line 46
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 47
    .line 48
    .line 49
    const-string v0, "\u63d0\u6743\u6210\u529f"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_3
    iget-object v2, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 56
    .line 57
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 58
    .line 59
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lha/z6;

    .line 63
    .line 64
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 65
    .line 66
    new-instance v8, Ls5/c;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-direct {v8, v1}, Ls5/c;-><init>(I)V

    .line 71
    .line 72
    .line 73
    const-string v6, "\u7acb\u5373\u91cd\u542f"

    .line 74
    .line 75
    const-string v7, "\u7a0d\u540e\u518d\u8bf4"

    .line 76
    .line 77
    const-string v4, "\u6210\u529f\u5199\u5165su\u6587\u4ef6\uff0c\u8bf7\u91cd\u542f\u7cfb\u7edf"

    .line 78
    .line 79
    const-string v5, ""

    .line 80
    .line 81
    move-object v1, v0

    .line 82
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_4
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 92
    .line 93
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_5
    iget-object v0, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 100
    .line 101
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 102
    .line 103
    .line 104
    const-string v0, "\u63d0\u6743\u6210\u529f"

    .line 105
    .line 106
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_6
    iget-object v2, p0, Lua/x3;->c:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 111
    .line 112
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 113
    .line 114
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lha/z6;

    .line 118
    .line 119
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 120
    .line 121
    new-instance v8, Ls5/c;

    .line 122
    .line 123
    const/4 v1, 0x7

    .line 124
    invoke-direct {v8, v1}, Ls5/c;-><init>(I)V

    .line 125
    .line 126
    .line 127
    const-string v6, "\u7acb\u5373\u91cd\u542f"

    .line 128
    .line 129
    const-string v7, "\u7a0d\u540e\u518d\u8bf4"

    .line 130
    .line 131
    const-string v4, "\u66f4\u6539\u6b64\u8bbe\u7f6e\u540e\u9700\u8981\u91cd\u542f"

    .line 132
    .line 133
    const-string v5, ""

    .line 134
    .line 135
    move-object v1, v0

    .line 136
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
