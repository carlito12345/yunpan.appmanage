.class public final Lha/y4;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lcom/yunpan/appmanage/bean/FileCopyBean;

.field public final h:Lha/x4;

.field public i:Lx9/i1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/yunpan/appmanage/bean/FileCopyBean;Lha/x4;)V
    .locals 1

    .line 1
    const v0, 0x7f0e009c

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/y4;->g:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 8
    .line 9
    iput-object p4, p0, Lha/y4;->h:Lha/x4;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Lha/y4;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lha/y4;->g:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 3
    .line 4
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lx9/w3;

    .line 19
    .line 20
    iget-object v2, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 21
    .line 22
    const-string v3, "\u91cd\u590d"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lx9/w3;

    .line 37
    .line 38
    const-string v2, "\u8df3\u8fc7"

    .line 39
    .line 40
    iput-object v2, v1, Lx9/w3;->j:Ljava/lang/String;

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lha/y4;->h:Lha/x4;

    .line 49
    .line 50
    invoke-interface {p0}, Lha/x4;->a()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static b(Lha/y4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lha/y4;->h:Lha/x4;

    .line 5
    .line 6
    invoke-interface {p0}, Lha/x4;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static c(Lha/y4;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lha/y4;->g:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 3
    .line 4
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lx9/w3;

    .line 19
    .line 20
    iget-object v2, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 21
    .line 22
    const-string v3, "\u91cd\u590d"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lx9/w3;

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    iput-object v2, v1, Lx9/w3;->j:Ljava/lang/String;

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lha/y4;->h:Lha/x4;

    .line 49
    .line 50
    invoke-interface {p0}, Lha/x4;->a()V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0372

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lha/w4;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lha/w4;-><init>(Lha/y4;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0b03ce

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lha/w4;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p0, v1}, Lha/w4;-><init>(Lha/y4;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const p1, 0x7f0b035e

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lha/w4;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {v0, p0, v1}, Lha/w4;-><init>(Lha/y4;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lx9/i1;

    .line 53
    .line 54
    new-instance v0, Lh5/m;

    .line 55
    .line 56
    const/4 v1, 0x7

    .line 57
    invoke-direct {v0, v1, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lha/y4;->g:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 61
    .line 62
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {p1, v0, v2, v3}, Lx9/i1;-><init>(Lh5/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lha/y4;->i:Lx9/i1;

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x1

    .line 80
    if-ge v0, v2, :cond_1

    .line 81
    .line 82
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lx9/w3;

    .line 89
    .line 90
    iget-object v2, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 91
    .line 92
    const-string v4, "\u91cd\u590d"

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    .line 100
    iget-object v2, p0, Lha/y4;->i:Lx9/i1;

    .line 101
    .line 102
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lx9/w3;

    .line 109
    .line 110
    iget-object v5, v2, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    sub-int/2addr v4, v3

    .line 120
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 121
    .line 122
    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    const v0, 0x7f0b058f

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v2, "\u5b58\u5728"

    .line 138
    .line 139
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lha/y4;->i:Lx9/i1;

    .line 143
    .line 144
    iget-object v2, v2, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, "\u4e2a\u76f8\u540c\u540d\u5b57\u7684\u6587\u4ef6\uff0c\u662f\u5426\u8986\u76d6\uff1f"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    const v0, 0x7f0b04f1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 173
    .line 174
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 175
    .line 176
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 177
    .line 178
    invoke-direct {v1, v2, v3, p1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lha/y4;->i:Lx9/i1;

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
