.class public final Lx9/n;
.super Lc6/b;
.source "SourceFile"


# instance fields
.field public final synthetic i:I

.field public final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lx9/n;->i:I

    .line 25
    invoke-direct {p0}, Lc6/b;-><init>()V

    .line 26
    new-instance v0, Lx9/z1;

    invoke-direct {v0, p0}, Lx9/z1;-><init>(Lx9/n;)V

    .line 27
    iget-object v1, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    new-instance v0, Lx9/y1;

    invoke-direct {v0, p0}, Lx9/y1;-><init>(Lx9/n;)V

    .line 29
    iget-object v1, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    new-instance v0, Lx9/x1;

    invoke-direct {v0, p0}, Lx9/x1;-><init>(Lx9/n;)V

    .line 31
    iget-object v1, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    new-instance v0, Lx9/w1;

    invoke-direct {v0, p0}, Lx9/w1;-><init>(Lx9/n;)V

    .line 33
    iget-object v1, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    new-instance v0, Lx9/v1;

    invoke-direct {v0, p0}, Lx9/v1;-><init>(Lx9/n;)V

    .line 35
    iget-object v1, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lx9/n;->j:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lda/g;I)V
    .locals 1

    iput p2, p0, Lx9/n;->i:I

    packed-switch p2, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Lc6/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/n;->j:Landroid/content/Context;

    .line 3
    new-instance p1, Lx9/k;

    invoke-direct {p1, p0}, Lx9/k;-><init>(Lx9/n;)V

    .line 4
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    new-instance p1, Lx9/j;

    invoke-direct {p1, p0}, Lx9/j;-><init>(Lx9/n;)V

    .line 6
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 7
    :pswitch_0
    invoke-direct {p0}, Lc6/b;-><init>()V

    .line 8
    iput-object p1, p0, Lx9/n;->j:Landroid/content/Context;

    .line 9
    new-instance p1, Lx9/d4;

    invoke-direct {p1, p0}, Lx9/d4;-><init>(Lx9/n;)V

    .line 10
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    new-instance p1, Lx9/c4;

    invoke-direct {p1, p0}, Lx9/c4;-><init>(Lx9/n;)V

    .line 12
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 13
    :pswitch_1
    invoke-direct {p0}, Lc6/b;-><init>()V

    .line 14
    iput-object p1, p0, Lx9/n;->j:Landroid/content/Context;

    .line 15
    new-instance p1, Lx9/z3;

    invoke-direct {p1, p0}, Lx9/z3;-><init>(Lx9/n;)V

    .line 16
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    new-instance p1, Lx9/y3;

    invoke-direct {p1, p0}, Lx9/y3;-><init>(Lx9/n;)V

    .line 18
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 19
    :pswitch_2
    invoke-direct {p0}, Lc6/b;-><init>()V

    .line 20
    iput-object p1, p0, Lx9/n;->j:Landroid/content/Context;

    .line 21
    new-instance p1, Lx9/q;

    invoke-direct {p1, p0}, Lx9/q;-><init>(Lx9/n;)V

    .line 22
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    new-instance p1, Lx9/p;

    invoke-direct {p1, p0}, Lx9/p;-><init>(Lx9/n;)V

    .line 24
    iget-object p2, p0, Lc6/b;->h:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public G(Lh6/a;Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;)V
    .locals 6

    .line 1
    iget-wide v0, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStamp:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const v0, 0x7f0b0523

    .line 10
    .line 11
    .line 12
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStr:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const v0, 0x7f0b05b8

    .line 19
    .line 20
    .line 21
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStr:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->className:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->className:Ljava/lang/String;

    .line 38
    .line 39
    :goto_0
    const v1, 0x7f0b052d

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0b057b

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "\u8fdb\u5165\u9875\u9762"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-object v3, p0, Lx9/n;->j:Landroid/content/Context;

    .line 68
    .line 69
    check-cast v3, Lda/g;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const v3, 0x7f06004c

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 89
    .line 90
    const-string v4, "\u79bb\u5f00\u9875\u9762"

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const v4, 0x7f06005e

    .line 97
    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object v2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 114
    .line 115
    const-string v5, "\u4eae\u5c4f"

    .line 116
    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget-object v2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 136
    .line 137
    const-string v4, "\u606f\u5c4f"

    .line 138
    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const v3, 0x7f060042

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    iget-object v2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 161
    .line 162
    const-string v4, "\u5173\u673a"

    .line 163
    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const v3, 0x7f060067

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const v3, 0x7f060054

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    :goto_1
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public H(Lh6/a;Lcom/yunpan/appmanage/bean/AppHistoryLogBean;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x7f0b0523

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "\u4f7f\u7528\u65f6\u6bb5\uff1a"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start_str:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " - "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end_str:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const v1, 0x7f0b05b9

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "\u7528\u4e86\uff1a"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const v1, 0x7f0b05b8

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0b04b5

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/ImageView;

    .line 80
    .line 81
    iget-object v0, p0, Lx9/n;->j:Landroid/content/Context;

    .line 82
    .line 83
    check-cast v0, Lda/g;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v2, Lcom/bumptech/glide/n;

    .line 93
    .line 94
    invoke-direct {v2, p1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/io/File;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 112
    .line 113
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->packageName:Ljava/lang/String;

    .line 119
    .line 120
    const-string v3, ".png"

    .line 121
    .line 122
    invoke-static {p2, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 134
    .line 135
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 138
    .line 139
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public I(Lh6/a;Lcom/yunpan/appmanage/bean/PresentationBean;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/PresentationBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x7f0b0523

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const v0, 0x7f0b0406

    .line 19
    .line 20
    .line 21
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget v0, p2, Lcom/yunpan/appmanage/bean/PresentationBean;->mDisplayId:I

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "\u5728\u4e3b\u5c4f"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "\u5728\u526f\u5c4f"

    .line 34
    .line 35
    :goto_0
    const v1, 0x7f0b057b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0b04b5

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v0, p0, Lx9/n;->j:Landroid/content/Context;

    .line 51
    .line 52
    check-cast v0, Lda/g;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/bumptech/glide/n;

    .line 62
    .line 63
    invoke-direct {v2, p1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/File;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    const-string v3, ".png"

    .line 90
    .line 91
    invoke-static {p2, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 103
    .line 104
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public J(Lh6/a;Lcom/yunpan/appmanage/bean/StackBean;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/StackBean;->appName:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x7f0b0523

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const v0, 0x7f0b0406

    .line 19
    .line 20
    .line 21
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/StackBean;->displayBounds:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/StackBean;->appBounds:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v1, "\u5728\u5c4f\u5e55"

    .line 35
    .line 36
    const v2, 0x7f0b057b

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v1, p2, Lcom/yunpan/appmanage/bean/StackBean;->displayId:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "\u4e2d"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v1, p2, Lcom/yunpan/appmanage/bean/StackBean;->displayId:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "("

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/StackBean;->displayBounds:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ")  app("

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/StackBean;->appBounds:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ")"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    const v0, 0x7f0b04b5

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/ImageView;

    .line 114
    .line 115
    iget-object v0, p0, Lx9/n;->j:Landroid/content/Context;

    .line 116
    .line 117
    check-cast v0, Lda/g;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/bumptech/glide/n;

    .line 127
    .line 128
    invoke-direct {v2, p1}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Ljava/io/File;

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 146
    .line 147
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 153
    .line 154
    const-string v3, ".png"

    .line 155
    .line 156
    invoke-static {p2, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 168
    .line 169
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 172
    .line 173
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public K(Lh6/a;Lx9/w3;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 8
    .line 9
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 10
    .line 11
    iget v4, v3, Lcom/yunpan/appmanage/util/k;->R:I

    .line 12
    .line 13
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 14
    .line 15
    iget v6, v5, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x5

    .line 19
    if-eq v6, v7, :cond_1

    .line 20
    .line 21
    if-ne v6, v8, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v6, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget v4, v3, Lcom/yunpan/appmanage/util/k;->S:I

    .line 27
    .line 28
    iget v6, v3, Lcom/yunpan/appmanage/util/k;->T:I

    .line 29
    .line 30
    :goto_1
    if-nez v2, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-boolean v7, v2, Lx9/w3;->i:Z

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const v10, 0x7f0b0567

    .line 37
    .line 38
    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    const v7, 0x7f080202

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v10, v7}, Lh6/a;->b(II)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {v1, v10, v9}, Lh6/a;->b(II)V

    .line 49
    .line 50
    .line 51
    :goto_2
    iget v7, v5, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 52
    .line 53
    const v10, 0x7f0b04ca

    .line 54
    .line 55
    .line 56
    const/4 v11, 0x1

    .line 57
    if-gt v7, v11, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1, v10, v9}, Lh6/a;->d(IZ)V

    .line 60
    .line 61
    .line 62
    :cond_4
    const v7, 0x7f0b0484

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v7}, Lh6/a;->a(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Landroid/widget/ImageView;

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .line 74
    .line 75
    const v12, 0x7f0b0482

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v12}, Lh6/a;->a(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    check-cast v12, Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    const v13, 0x7f0b0483

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v13}, Lh6/a;->a(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    check-cast v13, Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    iget-boolean v9, v2, Lx9/w3;->c:Z

    .line 100
    .line 101
    iget-object v14, v0, Lx9/n;->j:Landroid/content/Context;

    .line 102
    .line 103
    const-string v10, "file://"

    .line 104
    .line 105
    const-string v15, "  "

    .line 106
    .line 107
    const v8, 0x7f0b0486

    .line 108
    .line 109
    .line 110
    if-eqz v9, :cond_a

    .line 111
    .line 112
    iget-object v4, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 113
    .line 114
    const-string v6, "Download"

    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    sget-object v4, Lfa/g0;->a:Lfa/h0;

    .line 123
    .line 124
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget-object v6, v2, Lx9/w3;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    const v4, 0x7f080255

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    const v4, 0x7f080132

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    :goto_3
    iget-object v4, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v1, v8, v4}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    iget-object v4, v2, Lx9/w3;->h:Ljava/lang/String;

    .line 155
    .line 156
    iget-wide v6, v2, Lx9/w3;->d:J

    .line 157
    .line 158
    const-wide/16 v8, -0x2

    .line 159
    .line 160
    cmp-long v12, v6, v8

    .line 161
    .line 162
    if-nez v12, :cond_6

    .line 163
    .line 164
    const-string v6, "  \u65e0\u6743\u67e5\u770b"

    .line 165
    .line 166
    invoke-static {v4, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    goto :goto_4

    .line 171
    :cond_6
    const-wide/16 v8, -0x1

    .line 172
    .line 173
    cmp-long v12, v6, v8

    .line 174
    .line 175
    if-eqz v12, :cond_7

    .line 176
    .line 177
    invoke-static {v4, v15}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    iget-wide v6, v2, Lx9/w3;->d:J

    .line 182
    .line 183
    long-to-double v6, v6

    .line 184
    invoke-static {v6, v7}, Lif/a;->D0(D)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    :cond_7
    :goto_4
    iget-object v6, v2, Lx9/w3;->l:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-nez v6, :cond_8

    .line 202
    .line 203
    invoke-static {v14}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    new-instance v7, Lcom/bumptech/glide/n;

    .line 211
    .line 212
    invoke-direct {v7, v13}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v14}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v8, v5, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v8, v2, Lx9/w3;->l:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v8, ".png"

    .line 238
    .line 239
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    new-instance v7, Lo5/x;

    .line 251
    .line 252
    const/16 v8, 0x8

    .line 253
    .line 254
    invoke-direct {v7, v8}, Lo5/x;-><init>(I)V

    .line 255
    .line 256
    .line 257
    invoke-static {v7}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    iget v3, v3, Lcom/yunpan/appmanage/util/k;->R:I

    .line 266
    .line 267
    invoke-virtual {v6, v3, v3}, Lw5/a;->o(II)Lw5/a;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Lcom/bumptech/glide/m;

    .line 272
    .line 273
    invoke-virtual {v3, v13}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v4, "    "

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget-object v2, v2, Lx9/w3;->m:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    :cond_8
    iget v2, v5, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 299
    .line 300
    if-le v2, v11, :cond_9

    .line 301
    .line 302
    const/4 v3, 0x5

    .line 303
    if-ne v2, v3, :cond_33

    .line 304
    .line 305
    :cond_9
    const v2, 0x7f0b047e

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2, v4}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_8

    .line 312
    .line 313
    :cond_a
    iget-object v9, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v1, v8, v9}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    iget v8, v5, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 319
    .line 320
    if-le v8, v11, :cond_c

    .line 321
    .line 322
    const/4 v9, 0x5

    .line 323
    if-ne v8, v9, :cond_b

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_b
    move-object v9, v12

    .line 327
    goto :goto_6

    .line 328
    :cond_c
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    iget-object v9, v2, Lx9/w3;->h:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    move-object v9, v12

    .line 342
    iget-wide v11, v2, Lx9/w3;->d:J

    .line 343
    .line 344
    long-to-double v11, v11

    .line 345
    invoke-static {v11, v12}, Lif/a;->D0(D)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v11

    .line 349
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    const v11, 0x7f0b047e

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v11, v8}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 360
    .line 361
    .line 362
    :goto_6
    iget-object v8, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    iget-object v11, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 369
    .line 370
    const-string v12, "."

    .line 371
    .line 372
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    const/4 v15, -0x1

    .line 377
    if-eq v11, v15, :cond_d

    .line 378
    .line 379
    iget-object v8, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    :cond_d
    iget-object v11, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    const v12, 0x7f080260

    .line 392
    .line 393
    .line 394
    if-nez v11, :cond_e

    .line 395
    .line 396
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_8

    .line 400
    .line 401
    :cond_e
    iget-object v11, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v11}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    if-eqz v11, :cond_10

    .line 408
    .line 409
    iget-boolean v1, v5, Lcom/yunpan/appmanage/util/w;->k0:Z

    .line 410
    .line 411
    const v3, 0x7f08020f

    .line 412
    .line 413
    .line 414
    if-eqz v1, :cond_f

    .line 415
    .line 416
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_8

    .line 420
    .line 421
    :cond_f
    invoke-static {v14}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    new-instance v5, Lcom/bumptech/glide/n;

    .line 429
    .line 430
    invoke-direct {v5, v7}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v14}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v8, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1, v4, v6}, Lw5/a;->o(II)Lw5/a;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Lcom/bumptech/glide/m;

    .line 463
    .line 464
    new-instance v4, Lla/a;

    .line 465
    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    iget-object v6, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget-object v2, v2, Lx9/w3;->h:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-direct {v4, v2}, Lla/a;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v4}, Lw5/a;->t(Lf5/f;)Lw5/a;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    check-cast v1, Lcom/bumptech/glide/m;

    .line 493
    .line 494
    invoke-virtual {v1, v3}, Lw5/a;->g(I)Lw5/a;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Lcom/bumptech/glide/m;

    .line 499
    .line 500
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_8

    .line 504
    .line 505
    :cond_10
    iget-object v4, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 506
    .line 507
    invoke-static {v4}, Lif/a;->X(Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    if-eqz v4, :cond_13

    .line 512
    .line 513
    iget-wide v6, v2, Lx9/w3;->d:J

    .line 514
    .line 515
    const-wide/16 v10, 0x8

    .line 516
    .line 517
    cmp-long v4, v6, v10

    .line 518
    .line 519
    if-gez v4, :cond_11

    .line 520
    .line 521
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :cond_11
    iget v4, v5, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 526
    .line 527
    const/4 v5, 0x1

    .line 528
    if-gt v4, v5, :cond_12

    .line 529
    .line 530
    const-string v4, "\u5b89\u88c5"

    .line 531
    .line 532
    const v6, 0x7f0b04ca

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v6, v4}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v6, v5}, Lh6/a;->d(IZ)V

    .line 539
    .line 540
    .line 541
    :cond_12
    iget-object v1, v3, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 542
    .line 543
    new-instance v3, La2/e0;

    .line 544
    .line 545
    const/16 v4, 0x14

    .line 546
    .line 547
    invoke-direct {v3, v0, v2, v9, v4}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 548
    .line 549
    .line 550
    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 551
    .line 552
    .line 553
    goto/16 :goto_8

    .line 554
    .line 555
    :cond_13
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 556
    .line 557
    invoke-static {v1}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-eqz v1, :cond_14

    .line 562
    .line 563
    const v1, 0x7f08029b

    .line 564
    .line 565
    .line 566
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_8

    .line 570
    .line 571
    :cond_14
    iget-object v1, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 572
    .line 573
    invoke-static {v1}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-eqz v1, :cond_15

    .line 578
    .line 579
    const v1, 0x7f0802e5

    .line 580
    .line 581
    .line 582
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    .line 584
    .line 585
    const v1, 0x7f080226

    .line 586
    .line 587
    .line 588
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 589
    .line 590
    .line 591
    iget-object v1, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 592
    .line 593
    invoke-static {v1}, Lq4/a;->y(Ljava/lang/String;)Lmc/g;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    new-instance v2, Lha/ze;

    .line 598
    .line 599
    const/4 v3, 0x7

    .line 600
    invoke-direct {v2, v0, v7, v9, v3}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_8

    .line 607
    .line 608
    :cond_15
    invoke-static {v8}, Lza/g;->g(Ljava/lang/String;)Z

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    if-eqz v1, :cond_16

    .line 613
    .line 614
    const v1, 0x7f0802b7

    .line 615
    .line 616
    .line 617
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 618
    .line 619
    .line 620
    goto/16 :goto_8

    .line 621
    .line 622
    :cond_16
    const-string v1, ".txt"

    .line 623
    .line 624
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-eqz v1, :cond_17

    .line 629
    .line 630
    const v1, 0x7f0802df

    .line 631
    .line 632
    .line 633
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_8

    .line 637
    .line 638
    :cond_17
    const-string v1, ".doc"

    .line 639
    .line 640
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    if-eqz v1, :cond_18

    .line 645
    .line 646
    const v1, 0x7f0800cd

    .line 647
    .line 648
    .line 649
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_8

    .line 653
    .line 654
    :cond_18
    const-string v1, ".docx"

    .line 655
    .line 656
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    if-eqz v1, :cond_19

    .line 661
    .line 662
    const v1, 0x7f0800ce

    .line 663
    .line 664
    .line 665
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_8

    .line 669
    .line 670
    :cond_19
    const-string v1, ".xls"

    .line 671
    .line 672
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    if-eqz v1, :cond_1a

    .line 677
    .line 678
    const v1, 0x7f080311

    .line 679
    .line 680
    .line 681
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    .line 683
    .line 684
    goto/16 :goto_8

    .line 685
    .line 686
    :cond_1a
    const-string v1, ".xlsx"

    .line 687
    .line 688
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_1b

    .line 693
    .line 694
    const v1, 0x7f080312

    .line 695
    .line 696
    .line 697
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 698
    .line 699
    .line 700
    goto/16 :goto_8

    .line 701
    .line 702
    :cond_1b
    const-string v1, ".psd"

    .line 703
    .line 704
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    if-eqz v1, :cond_1c

    .line 709
    .line 710
    const v1, 0x7f0801cf

    .line 711
    .line 712
    .line 713
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_8

    .line 717
    .line 718
    :cond_1c
    const-string v1, ".iso"

    .line 719
    .line 720
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    if-eqz v1, :cond_1d

    .line 725
    .line 726
    const v1, 0x7f08014e

    .line 727
    .line 728
    .line 729
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_8

    .line 733
    .line 734
    :cond_1d
    const-string v1, ".ttf"

    .line 735
    .line 736
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-eqz v1, :cond_1e

    .line 741
    .line 742
    const v1, 0x7f08030a

    .line 743
    .line 744
    .line 745
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_8

    .line 749
    .line 750
    :cond_1e
    const-string v1, ".dll"

    .line 751
    .line 752
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-eqz v1, :cond_1f

    .line 757
    .line 758
    const v1, 0x7f0800cc

    .line 759
    .line 760
    .line 761
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 762
    .line 763
    .line 764
    goto/16 :goto_8

    .line 765
    .line 766
    :cond_1f
    const-string v1, ".exe"

    .line 767
    .line 768
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 769
    .line 770
    .line 771
    move-result v1

    .line 772
    if-eqz v1, :cond_20

    .line 773
    .line 774
    const v1, 0x7f0800d4

    .line 775
    .line 776
    .line 777
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_8

    .line 781
    .line 782
    :cond_20
    const-string v1, ".xml"

    .line 783
    .line 784
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    if-eqz v1, :cond_21

    .line 789
    .line 790
    const v1, 0x7f080313

    .line 791
    .line 792
    .line 793
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    .line 795
    .line 796
    goto/16 :goto_8

    .line 797
    .line 798
    :cond_21
    const-string v1, ".csv"

    .line 799
    .line 800
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 801
    .line 802
    .line 803
    move-result v1

    .line 804
    if-eqz v1, :cond_22

    .line 805
    .line 806
    const v1, 0x7f080248

    .line 807
    .line 808
    .line 809
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    .line 811
    .line 812
    goto/16 :goto_8

    .line 813
    .line 814
    :cond_22
    const-string v1, ".db"

    .line 815
    .line 816
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    if-eqz v1, :cond_23

    .line 821
    .line 822
    const v1, 0x7f0800c3

    .line 823
    .line 824
    .line 825
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    .line 827
    .line 828
    goto/16 :goto_8

    .line 829
    .line 830
    :cond_23
    const-string v1, ".json"

    .line 831
    .line 832
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 833
    .line 834
    .line 835
    move-result v1

    .line 836
    if-eqz v1, :cond_24

    .line 837
    .line 838
    const v1, 0x7f08014f

    .line 839
    .line 840
    .line 841
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_8

    .line 845
    .line 846
    :cond_24
    const-string v1, ".log"

    .line 847
    .line 848
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    if-eqz v1, :cond_25

    .line 853
    .line 854
    const v1, 0x7f080183

    .line 855
    .line 856
    .line 857
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 858
    .line 859
    .line 860
    goto/16 :goto_8

    .line 861
    .line 862
    :cond_25
    const-string v1, ".asp"

    .line 863
    .line 864
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 865
    .line 866
    .line 867
    move-result v1

    .line 868
    if-eqz v1, :cond_26

    .line 869
    .line 870
    const v1, 0x7f080222

    .line 871
    .line 872
    .line 873
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 874
    .line 875
    .line 876
    goto/16 :goto_8

    .line 877
    .line 878
    :cond_26
    const-string v1, ".aspx"

    .line 879
    .line 880
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    if-eqz v1, :cond_27

    .line 885
    .line 886
    const v1, 0x7f080223

    .line 887
    .line 888
    .line 889
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 890
    .line 891
    .line 892
    goto/16 :goto_8

    .line 893
    .line 894
    :cond_27
    const-string v1, ".class"

    .line 895
    .line 896
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 897
    .line 898
    .line 899
    move-result v1

    .line 900
    if-eqz v1, :cond_28

    .line 901
    .line 902
    const v1, 0x7f08023b

    .line 903
    .line 904
    .line 905
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_8

    .line 909
    .line 910
    :cond_28
    const-string v1, ".css"

    .line 911
    .line 912
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    if-eqz v1, :cond_29

    .line 917
    .line 918
    const v1, 0x7f080247

    .line 919
    .line 920
    .line 921
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 922
    .line 923
    .line 924
    goto/16 :goto_8

    .line 925
    .line 926
    :cond_29
    const-string v1, ".dex"

    .line 927
    .line 928
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    if-nez v1, :cond_32

    .line 933
    .line 934
    const-string v1, ".odex"

    .line 935
    .line 936
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 937
    .line 938
    .line 939
    move-result v1

    .line 940
    if-nez v1, :cond_32

    .line 941
    .line 942
    const-string v1, ".vdex"

    .line 943
    .line 944
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    if-eqz v1, :cond_2a

    .line 949
    .line 950
    goto/16 :goto_7

    .line 951
    .line 952
    :cond_2a
    const-string v1, ".html"

    .line 953
    .line 954
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    if-eqz v1, :cond_2b

    .line 959
    .line 960
    const v1, 0x7f080279

    .line 961
    .line 962
    .line 963
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 964
    .line 965
    .line 966
    goto :goto_8

    .line 967
    :cond_2b
    const-string v1, ".jar"

    .line 968
    .line 969
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-eqz v1, :cond_2c

    .line 974
    .line 975
    const v1, 0x7f080282

    .line 976
    .line 977
    .line 978
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 979
    .line 980
    .line 981
    goto :goto_8

    .line 982
    :cond_2c
    const-string v1, ".java"

    .line 983
    .line 984
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 985
    .line 986
    .line 987
    move-result v1

    .line 988
    if-eqz v1, :cond_2d

    .line 989
    .line 990
    const v1, 0x7f080283

    .line 991
    .line 992
    .line 993
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 994
    .line 995
    .line 996
    goto :goto_8

    .line 997
    :cond_2d
    const-string v1, ".js"

    .line 998
    .line 999
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    if-eqz v1, :cond_2e

    .line 1004
    .line 1005
    const v1, 0x7f080287

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1009
    .line 1010
    .line 1011
    goto :goto_8

    .line 1012
    :cond_2e
    const-string v1, ".php"

    .line 1013
    .line 1014
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    if-eqz v1, :cond_2f

    .line 1019
    .line 1020
    const v1, 0x7f0802a6

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_8

    .line 1027
    :cond_2f
    const-string v1, ".py"

    .line 1028
    .line 1029
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v1

    .line 1033
    if-eqz v1, :cond_30

    .line 1034
    .line 1035
    const v1, 0x7f0802aa

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_8

    .line 1042
    :cond_30
    const-string v1, ".gj"

    .line 1043
    .line 1044
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v1

    .line 1048
    if-eqz v1, :cond_31

    .line 1049
    .line 1050
    const v1, 0x7f08021f

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_8

    .line 1057
    :cond_31
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_8

    .line 1061
    :cond_32
    :goto_7
    const v1, 0x7f08024f

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1065
    .line 1066
    .line 1067
    :cond_33
    :goto_8
    return-void
.end method

.method public final u(ILjava/util/List;)I
    .locals 3

    .line 1
    iget v0, p0, Lx9/n;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 7
    .line 8
    iget p1, p1, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    :cond_0
    return p1

    .line 14
    :pswitch_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/yunpan/appmanage/bean/PresentationBean;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    :goto_0
    return p1

    .line 32
    :pswitch_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/yunpan/appmanage/bean/StackBean;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const/4 p1, 0x2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 p1, 0x1

    .line 49
    :goto_1
    return p1

    .line 50
    :pswitch_2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    const/4 p1, 0x2

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 p1, 0x1

    .line 67
    :goto_2
    return p1

    .line 68
    :pswitch_3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;

    .line 73
    .line 74
    iget-wide p1, p1, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStamp:J

    .line 75
    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    cmp-long v2, p1, v0

    .line 79
    .line 80
    if-lez v2, :cond_4

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/4 p1, 0x2

    .line 85
    :goto_3
    return p1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
