.class public final Lua/v4;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityNissan;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/v4;->b:I

    iput-object p1, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const-string v0, "-\u516c\u7b7e\u7248"

    .line 2
    .line 3
    const v1, 0x7f13002f

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 10
    .line 11
    iget v5, p0, Lua/v4;->b:I

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    return-void

    .line 17
    :pswitch_1
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 18
    .line 19
    invoke-static {v0, v2}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 39
    .line 40
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_3
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 67
    .line 68
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 72
    .line 73
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 74
    .line 75
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 76
    .line 77
    if-nez p1, :cond_0

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u4f7f\u7528"

    .line 82
    .line 83
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v4, Lda/g;->A:Lda/g;

    .line 87
    .line 88
    invoke-virtual {v2}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    const-string p1, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u786e\u4fdd\u662f\u65e5\u4ea7\u8f66\u578b"

    .line 111
    .line 112
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void

    .line 116
    :pswitch_4
    const-string p1, "\u5931\u8d25\uff0c\u8bf7\u786e\u4fdd\u662f\u65e5\u4ea7\u8f66\u673a"

    .line 117
    .line 118
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 122
    .line 123
    iget-object p1, v4, Lda/g;->A:Lda/g;

    .line 124
    .line 125
    invoke-static {p1}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_1

    .line 130
    .line 131
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 132
    .line 133
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 134
    .line 135
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 136
    .line 137
    if-nez p1, :cond_1

    .line 138
    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v2, "\u5f00\u542f\u5931\u8d25\uff0c\u8bf7\u5b89\u88c5 "

    .line 142
    .line 143
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v2, v4, Lda/g;->A:Lda/g;

    .line 147
    .line 148
    invoke-virtual {v2}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    :cond_1
    return-void

    .line 170
    :pswitch_5
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 171
    .line 172
    invoke-static {v0, v2}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/v4;->b:I

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
    iget-object p1, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 10
    .line 11
    const-string v0, "\u4fee\u590d\u4e2d"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_2
    iget-object p1, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 20
    .line 21
    const-string v0, "\u5347\u7ea7\u4e2d"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_3
    iget-object p1, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 30
    .line 31
    const-string v0, "\u63d0\u6743\u4e2d"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_4
    iget-object p1, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 40
    .line 41
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_5
    iget-object p1, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 50
    .line 51
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/v4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 9
    .line 10
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 11
    .line 12
    .line 13
    const-string v0, "\u5df2\u4fee\u590d"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 22
    .line 23
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 30
    .line 31
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 32
    .line 33
    .line 34
    const-string v0, "\u63d0\u6743\u6210\u529f"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    iget-object v0, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 43
    .line 44
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, La2/w0;->P()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    const-string v0, "\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 65
    .line 66
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 67
    .line 68
    const/16 v2, 0x15b3

    .line 69
    .line 70
    if-eq v1, v2, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 83
    .line 84
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void

    .line 88
    :pswitch_3
    const-string v0, "\u5df2\u5173\u95ed"

    .line 89
    .line 90
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_4
    iget-object v0, p0, Lua/v4;->c:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 97
    .line 98
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {}, La2/w0;->P()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    const-string v0, "\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 119
    .line 120
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 121
    .line 122
    const/16 v2, 0x15b3

    .line 123
    .line 124
    if-eq v1, v2, :cond_2

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 127
    .line 128
    .line 129
    :cond_2
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 137
    .line 138
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
