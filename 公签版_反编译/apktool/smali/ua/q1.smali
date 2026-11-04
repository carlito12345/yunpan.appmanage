.class public final Lua/q1;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lua/q1;->b:I

    iput-object p1, p0, Lua/q1;->f:Ljava/lang/Object;

    iput-object p2, p0, Lua/q1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lua/q1;->d:Ljava/io/Serializable;

    iput-object p4, p0, Lua/q1;->e:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/q1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lua/i9;

    .line 9
    .line 10
    iget-object p1, p1, Lua/i9;->S:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lua/q8;

    .line 21
    .line 22
    iget-object v1, v0, Lua/q8;->g:Lha/u9;

    .line 23
    .line 24
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "\u641c\u7d22\u51fa\u9519\uff1a"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x1

    .line 46
    const v2, 0x7f0802a0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, v2, v1}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 50
    .line 51
    .line 52
    iget-object p1, v0, Lua/q8;->n:Lx9/n;

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v0, Lua/q8;->l:Lx9/g0;

    .line 63
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, v0, Lua/q8;->l:Lx9/g0;

    .line 73
    .line 74
    new-instance v0, Lx9/w3;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "\u641c\u7d22\u7ed3\u679c\uff1a"

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lua/q1;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, ""

    .line 95
    .line 96
    invoke-direct {v0, v1, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_1
    iget-object v0, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lua/q8;

    .line 106
    .line 107
    iget-object v1, v0, Lua/q8;->T:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 108
    .line 109
    const/16 v2, 0x8

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "\u8bfb\u53d6\u76ee\u5f55\u51fa\u9519\uff1a"

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const/4 v1, 0x1

    .line 133
    const v2, 0x7f0802a0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1, v2, v1}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_2
    iget-object v0, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 145
    .line 146
    const/16 v1, 0x8

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, ""

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Lua/q1;->b:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :pswitch_0
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    iget-object v2, p0, Lua/q1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    sget-object p1, Lcom/yunpan/appmanage/util/c0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/d0;->e()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v1, v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, -0x1

    .line 50
    :goto_1
    iget-object p1, p0, Lua/q1;->d:Ljava/io/Serializable;

    .line 51
    .line 52
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "YpUrl"

    .line 55
    .line 56
    if-ne v1, v0, :cond_2

    .line 57
    .line 58
    sget-object v1, Lcom/yunpan/appmanage/util/c0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    :try_start_0
    iget-object v4, v1, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lz7/p;->f()Lz7/o;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, p1}, Lz7/o;->j(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v1, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 77
    .line 78
    invoke-virtual {p1, v2, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/d0;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    sget-object v4, Lcom/yunpan/appmanage/util/c0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    :try_start_1
    iget-object v5, v4, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 94
    .line 95
    invoke-virtual {v5, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lz7/p;->f()Lz7/o;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5, v1}, Lz7/o;->n(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, p1}, Lz7/o;->j(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, v4, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 110
    .line 111
    invoke-virtual {p1, v2, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/yunpan/appmanage/util/d0;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    .line 119
    .line 120
    :catch_0
    :goto_2
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 121
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lcom/yunpan/appmanage/util/c0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/d0;->e()Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    add-int/lit8 v1, v1, -0x1

    .line 141
    .line 142
    :goto_3
    if-ltz v1, :cond_5

    .line 143
    .line 144
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    add-int/2addr v1, v0

    .line 156
    goto :goto_3

    .line 157
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    new-instance v0, Lha/o5;

    .line 162
    .line 163
    sget v1, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 164
    .line 165
    iget-object v1, v3, Lda/g;->A:Lda/g;

    .line 166
    .line 167
    check-cast p1, Ljava/lang/String;

    .line 168
    .line 169
    new-instance v4, Lma/b;

    .line 170
    .line 171
    const/16 v5, 0xc

    .line 172
    .line 173
    invoke-direct {v4, p0, v5, v2}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, v3, v1, p1, v4}, Lha/o5;-><init>(Landroid/app/Activity;Lda/g;Ljava/lang/String;Lma/b;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    .line 184
    .line 185
    if-eqz v0, :cond_5

    .line 186
    .line 187
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 188
    .line 189
    iget-object v1, p0, Lua/q1;->e:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Lba/r;

    .line 192
    .line 193
    iget-boolean v2, v1, Lba/r;->o:Z

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 204
    .line 205
    check-cast p1, Ljava/util/List;

    .line 206
    .line 207
    invoke-virtual {v0, p1}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 208
    .line 209
    .line 210
    :cond_5
    :goto_4
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/q1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 6

    .line 1
    iget v0, p0, Lua/q1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lua/i9;

    .line 9
    .line 10
    iget-object v1, v0, Lua/i9;->x:Lx9/g0;

    .line 11
    .line 12
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_3

    .line 17
    .line 18
    iget-object v1, v0, Lua/i9;->x:Lx9/g0;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v1, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lx9/w3;

    .line 26
    .line 27
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lua/q1;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lx9/w3;

    .line 32
    .line 33
    iget-object v4, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object v1, v0, Lua/i9;->S:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 42
    .line 43
    const/16 v4, 0x8

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lua/q1;->d:Ljava/io/Serializable;

    .line 49
    .line 50
    check-cast v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget-object v5, p0, Lua/q1;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v5, Ljava/util/ArrayList;

    .line 59
    .line 60
    if-gtz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-lez v4, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    const v1, 0x7f0802a0

    .line 78
    .line 79
    .line 80
    const-string v3, "\u65e0\u6743\u9650\u8bfb\u53d6\u6b64\u76ee\u5f55"

    .line 81
    .line 82
    invoke-virtual {v0, v3, v1, v2}, Lua/i9;->v(Ljava/lang/String;IZ)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const v1, 0x7f08029f

    .line 87
    .line 88
    .line 89
    const-string v3, "\u65e0\u6587\u4ef6"

    .line 90
    .line 91
    invoke-virtual {v0, v3, v1, v2}, Lua/i9;->v(Ljava/lang/String;IZ)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    iget-object v2, v0, Lua/i9;->z:Lx9/f0;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v0, Lua/i9;->z:Lx9/f0;

    .line 101
    .line 102
    invoke-virtual {v0, v5}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_1
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lua/q8;

    .line 109
    .line 110
    iget-object v1, v0, Lua/q8;->g:Lha/u9;

    .line 111
    .line 112
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lua/q1;->d:Ljava/io/Serializable;

    .line 116
    .line 117
    check-cast v1, Ljava/util/ArrayList;

    .line 118
    .line 119
    iput-object v1, v0, Lua/q8;->O:Ljava/util/ArrayList;

    .line 120
    .line 121
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 127
    .line 128
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_4

    .line 133
    .line 134
    const v2, 0x7f0802a0

    .line 135
    .line 136
    .line 137
    const-string v3, "\u6ca1\u6709\u641c\u5230\u5408\u9002\u7684\u6587\u4ef6"

    .line 138
    .line 139
    const/4 v4, 0x1

    .line 140
    invoke-virtual {v0, v3, v2, v4}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v2, v0, Lua/q8;->H:Landroid/widget/TextView;

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v4, "\u5f53\u524d"

    .line 148
    .line 149
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v4, v0, Lua/q8;->n:Lx9/n;

    .line 153
    .line 154
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v4, "\u4e2a\u9879\u76ee( \u6587\u4ef6\u5939\uff1a"

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v4, p0, Lua/q1;->e:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v4, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v4, "   \u6587\u4ef6\uff1a"

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v1, " )"

    .line 190
    .line 191
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lua/q8;->l:Lx9/g0;

    .line 202
    .line 203
    new-instance v2, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v0, Lua/q8;->l:Lx9/g0;

    .line 212
    .line 213
    new-instance v1, Lx9/w3;

    .line 214
    .line 215
    iget-object v2, p0, Lua/q1;->c:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v2, Ljava/lang/String;

    .line 218
    .line 219
    const-string v3, "\u641c\u7d22\u7ed3\u679c\uff1a"

    .line 220
    .line 221
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    const-string v3, ""

    .line 226
    .line 227
    invoke-direct {v1, v2, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_1
    iget-object v0, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, Lua/q8;

    .line 237
    .line 238
    iget-object v1, v0, Lua/q8;->l:Lx9/g0;

    .line 239
    .line 240
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-lez v1, :cond_a

    .line 245
    .line 246
    iget-object v1, v0, Lua/q8;->l:Lx9/g0;

    .line 247
    .line 248
    const/4 v2, 0x1

    .line 249
    invoke-static {v1, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Lx9/w3;

    .line 254
    .line 255
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, p0, Lua/q1;->c:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v3, Lx9/w3;

    .line 260
    .line 261
    iget-object v4, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_a

    .line 268
    .line 269
    iget-object v1, v0, Lua/q8;->T:Lcom/yunpan/appmanage/view/HiveProgressView;

    .line 270
    .line 271
    const/16 v4, 0x8

    .line 272
    .line 273
    invoke-virtual {v1, v4}, Lcom/yunpan/appmanage/view/HiveProgressView;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lua/q1;->d:Ljava/io/Serializable;

    .line 277
    .line 278
    check-cast v1, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    iget-object v5, p0, Lua/q1;->e:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v5, Ljava/util/ArrayList;

    .line 287
    .line 288
    if-gtz v4, :cond_7

    .line 289
    .line 290
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-lez v4, :cond_5

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_5
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {}, La2/w0;->P()Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-nez v4, :cond_6

    .line 307
    .line 308
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-nez v3, :cond_6

    .line 315
    .line 316
    const v3, 0x7f0802a0

    .line 317
    .line 318
    .line 319
    const-string v4, "\u65e0\u6743\u9650\u8bfb\u53d6\u6b64\u76ee\u5f55"

    .line 320
    .line 321
    invoke-virtual {v0, v4, v3, v2}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_6
    const v3, 0x7f08029f

    .line 326
    .line 327
    .line 328
    const-string v4, "\u65e0\u6587\u4ef6"

    .line 329
    .line 330
    invoke-virtual {v0, v4, v3, v2}, Lua/q8;->C(Ljava/lang/String;IZ)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_7
    :goto_2
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 335
    .line 336
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 337
    .line 338
    .line 339
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 340
    .line 341
    invoke-virtual {v2, v5}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 342
    .line 343
    .line 344
    :goto_3
    iget-object v2, v0, Lua/q8;->H:Landroid/widget/TextView;

    .line 345
    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v4, "\u5f53\u524d"

    .line 349
    .line 350
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v4, v0, Lua/q8;->n:Lx9/n;

    .line 354
    .line 355
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v4, "\u4e2a\u9879\u76ee( \u6587\u4ef6\u5939\uff1a"

    .line 363
    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v1, "   \u6587\u4ef6\uff1a"

    .line 375
    .line 376
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v1, " )"

    .line 387
    .line 388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .line 397
    .line 398
    iget-object v1, v0, Lua/q8;->C:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-nez v1, :cond_a

    .line 405
    .line 406
    const/4 v1, 0x0

    .line 407
    :goto_4
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 408
    .line 409
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-ge v1, v2, :cond_9

    .line 414
    .line 415
    iget-object v2, v0, Lua/q8;->n:Lx9/n;

    .line 416
    .line 417
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    check-cast v2, Lx9/w3;

    .line 422
    .line 423
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 424
    .line 425
    iget-object v3, v0, Lua/q8;->C:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-eqz v2, :cond_8

    .line 432
    .line 433
    iget-object v2, v0, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 434
    .line 435
    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 436
    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_9
    :goto_5
    const-string v1, ""

    .line 443
    .line 444
    iput-object v1, v0, Lua/q8;->C:Ljava/lang/String;

    .line 445
    .line 446
    :cond_a
    return-void

    .line 447
    :pswitch_2
    iget-object v0, p0, Lua/q1;->f:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 450
    .line 451
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 452
    .line 453
    const/16 v1, 0x8

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
