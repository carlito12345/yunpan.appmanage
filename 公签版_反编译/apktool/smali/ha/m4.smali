.class public final Lha/m4;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/j3;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0098

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 5

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lha/m4;->i:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 29
    .line 30
    iget v4, v3, Lwa/u;->o:I

    .line 31
    .line 32
    if-eq v2, v4, :cond_1

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .line 44
    .line 45
    :try_start_1
    iput v2, v3, Lwa/u;->o:I

    .line 46
    .line 47
    iget-object v2, v3, Lwa/u;->b:Lz7/s;

    .line 48
    .line 49
    const-string v4, "BootStartTask_ScreenOffToOnNot_Time"

    .line 50
    .line 51
    invoke-virtual {v2, v4, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Lwa/u;->i()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    .line 56
    .line 57
    :catch_1
    :cond_1
    :try_start_3
    iget-object v1, p0, Lha/m4;->j:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    move-object v1, v0

    .line 74
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 83
    .line 84
    iget v4, v3, Lwa/u;->m:I

    .line 85
    .line 86
    if-eq v2, v4, :cond_3

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 97
    .line 98
    .line 99
    :try_start_4
    iput v2, v3, Lwa/u;->m:I

    .line 100
    .line 101
    iget-object v2, v3, Lwa/u;->b:Lz7/s;

    .line 102
    .line 103
    const-string v4, "BootStartTask_boot_delay"

    .line 104
    .line 105
    invoke-virtual {v2, v4, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 106
    .line 107
    .line 108
    :catch_2
    :try_start_5
    invoke-virtual {v3}, Lwa/u;->i()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    .line 110
    .line 111
    :catch_3
    :cond_3
    :try_start_6
    iget-object v1, p0, Lha/m4;->k:Landroid/widget/EditText;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    move-object v0, v1

    .line 129
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 138
    .line 139
    iget v3, v2, Lwa/u;->n:I

    .line 140
    .line 141
    if-eq v1, v3, :cond_5

    .line 142
    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 152
    .line 153
    .line 154
    :try_start_7
    iput v1, v2, Lwa/u;->n:I

    .line 155
    .line 156
    iget-object v1, v2, Lwa/u;->b:Lz7/s;

    .line 157
    .line 158
    const-string v3, "BootStartTask_load_delay"

    .line 159
    .line 160
    invoke-virtual {v1, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 161
    .line 162
    .line 163
    :catch_4
    :try_start_8
    invoke-virtual {v2}, Lwa/u;->i()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 164
    .line 165
    .line 166
    :catch_5
    :cond_5
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0b0474

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/EditText;

    .line 14
    .line 15
    iput-object p1, p0, Lha/m4;->k:Landroid/widget/EditText;

    .line 16
    .line 17
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 18
    .line 19
    iget v3, v2, Lwa/u;->n:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f0b0473

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/EditText;

    .line 36
    .line 37
    iput-object p1, p0, Lha/m4;->j:Landroid/widget/EditText;

    .line 38
    .line 39
    iget v3, v2, Lwa/u;->m:I

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f0b0472

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/EditText;

    .line 56
    .line 57
    iput-object p1, p0, Lha/m4;->i:Landroid/widget/EditText;

    .line 58
    .line 59
    iget v3, v2, Lwa/u;->o:I

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lha/m4;->k:Landroid/widget/EditText;

    .line 69
    .line 70
    new-instance v3, Lha/k4;

    .line 71
    .line 72
    invoke-direct {v3, p0, v1}, Lha/k4;-><init>(Lha/m4;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lha/m4;->j:Landroid/widget/EditText;

    .line 79
    .line 80
    new-instance v3, Lha/k4;

    .line 81
    .line 82
    invoke-direct {v3, p0, v0}, Lha/k4;-><init>(Lha/m4;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lha/m4;->i:Landroid/widget/EditText;

    .line 89
    .line 90
    new-instance v3, Lha/k4;

    .line 91
    .line 92
    const/4 v4, 0x2

    .line 93
    invoke-direct {v3, p0, v4}, Lha/k4;-><init>(Lha/m4;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    .line 98
    .line 99
    const p1, 0x7f0b04f1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 107
    .line 108
    iput-object p1, p0, Lha/m4;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 109
    .line 110
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 111
    .line 112
    iget-object v4, p0, Lha/a4;->b:Landroid/content/Context;

    .line 113
    .line 114
    invoke-direct {v3, v4, v0, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lx9/j3;

    .line 121
    .line 122
    invoke-direct {p1}, Lx9/j3;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 126
    .line 127
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 128
    .line 129
    iget-boolean v5, v2, Lwa/u;->k:Z

    .line 130
    .line 131
    const-string v6, "\u5f00\u673a\u5e7f\u64ad-\u89e6\u53d1\u5f00\u673a\u4efb\u52a1"

    .line 132
    .line 133
    const-string v7, "\u6240\u6709\u8bbe\u5907\u90fd\u5efa\u8bae\u52fe\u9009\u6b64\u9879\uff0c\u5927\u90e8\u5206\u7cfb\u7edf\u90fd\u652f\u6301\u6b64\u6807\u51c6\uff01\u4e2a\u522b\u7cfb\u7edf\u7981\u4e86\u5f00\u673a\u5e7f\u64ad\uff0c\u6240\u4ee5\u5bfc\u81f4\u65e0\u6cd5\u89e6\u53d1"

    .line 134
    .line 135
    invoke-direct {v3, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 142
    .line 143
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 144
    .line 145
    iget-boolean v5, v2, Lwa/u;->j:Z

    .line 146
    .line 147
    const-string v6, "\u7528\u6237\u89e3\u9501-\u89e6\u53d1\u5f00\u673a\u4efb\u52a1"

    .line 148
    .line 149
    const-string v7, "\u9664\u4e86\u624b\u673a\u5916\uff0c\u8f66\u673a\u3001\u7535\u89c6 \u90fd\u53ef\u4ee5\u52fe\u9009\u6b64\u9879\u76ee"

    .line 150
    .line 151
    invoke-direct {v3, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 158
    .line 159
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 160
    .line 161
    iget-boolean v5, v2, Lwa/u;->i:Z

    .line 162
    .line 163
    const-string v6, "\u5c4f\u5e55\u70b9\u4eae-\u89e6\u53d1\u5f00\u673a\u4efb\u52a1"

    .line 164
    .line 165
    const-string v7, "\u67d0\u4e9b\u8f66\u673a\u7184\u706b\u540e\u4e0d\u4f1a\u5173\u673a(\u8fdb\u5165\u6df1\u5ea6\u7761\u7720\u72b6\u6001)\uff0c\u5bfc\u81f4\u65e0\u6cd5\u5f00\u673a\u81ea\u542f\uff01\u53ef\u5c1d\u8bd5\u52fe\u9009\u6b64\u9879\uff0c\u6765\u89e6\u53d1\u5f00\u673a\u4efb\u52a1\uff01\uff01\uff01\u4ec5\u4e2a\u522b\u7761\u7720\u8f66\u673a\u652f\u6301\u76d1\u542c\u5c4f\u5e55\u5e7f\u64ad\uff01"

    .line 166
    .line 167
    invoke-direct {v3, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 174
    .line 175
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 176
    .line 177
    iget-boolean v5, v2, Lwa/u;->f0:Z

    .line 178
    .line 179
    const-string v6, "\u7b49\u7cfb\u7edf\u52a0\u8f7d\u5b8c\u6210\u540e\u518d\u5f00\u59cb\u6267\u884c"

    .line 180
    .line 181
    const-string v7, "\u5f00\u673a\u540e\uff0c\u7b49\u5f85\u7cfb\u7edf\u8fdb\u5165\u684c\u9762\u540e\uff0c\u4e5f\u5c31\u662f\u7cfb\u7edf\u542f\u52a8\u5b8c\u6210\u540e\u518d\u5f00\u59cb\u6267\u884c\u5f00\u673a\u4efb\u52a1\uff01\u907f\u514d\u7cfb\u7edf\u672a\u542f\u52a8\u5b8c\u6210\u5c31\u6267\u884c\u6bd4\u5982\u50cf(\u6253\u5f00\u5e94\u7528)\u8fd9\u7c7b\u7684\u4efb\u52a1"

    .line 182
    .line 183
    invoke-direct {v3, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 190
    .line 191
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 192
    .line 193
    iget-boolean v5, v2, Lwa/u;->c0:Z

    .line 194
    .line 195
    const-string v6, "\u9632\u6b62\u91cd\u590d\u89e6\u53d1-\u6839\u636e\u5f00\u673a\u65f6\u95f4"

    .line 196
    .line 197
    const-string v7, "\u5f00\u673a\u65f6\u95f4\u8d85\u8fc790\u79d2\u7684\uff0c\u68c0\u6d4b\u5230\u89e6\u53d1\u5f00\u673a\u4efb\u52a1\u4e5f\u4e0d\u518d\u6267\u884c\uff01\u907f\u514d\u91cd\u590d\u6267\u884c\u5f00\u673a\u4efb\u52a1\uff01  \u5982\u679c\u60a8\u4e0d\u662f\u7761\u7720\u8f66\u673a\u7684\u8bdd\uff0c\u53ef\u4ee5\u52fe\u9009\uff01\u5982\u679c\u662f\u7761\u7720\u8f66\u673a\uff0c\u5219\u4e0d\u8981\u52fe\u9009\uff01"

    .line 198
    .line 199
    invoke-direct {v3, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 206
    .line 207
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 208
    .line 209
    iget-boolean v5, v2, Lwa/u;->d0:Z

    .line 210
    .line 211
    const-string v6, "\u9632\u6b62\u91cd\u590d\u89e6\u53d1-\u963b\u6b62\u91cd\u590d\u62c9\u8d77"

    .line 212
    .line 213
    const-string v7, "\u6b64\u9879\u76ee\u6839\u636e\u81ea\u5df1\u9700\u8981\u800c\u9009\u62e9\uff0c\u5982\u679c\u5f00\u673a\u4efb\u52a1\u7ecf\u5e38\u91cd\u590d\u6267\u884c\uff0c\u90a3\u4e48\u52fe\u9009\u6b64\u9879\u76ee\uff01"

    .line 214
    .line 215
    invoke-direct {v3, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 222
    .line 223
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 224
    .line 225
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    const-string v6, "APP_AUTO_START"

    .line 234
    .line 235
    invoke-virtual {p1, v3, v5, v6}, Lcom/yunpan/appmanage/util/k;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    const-string v5, "\u5df2\u5141\u8bb8"

    .line 240
    .line 241
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_0

    .line 246
    .line 247
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    const-string v7, "APP_ASSOC_START"

    .line 256
    .line 257
    invoke-virtual {p1, v3, v6, v7}, Lcom/yunpan/appmanage/util/k;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_0

    .line 266
    .line 267
    goto :goto_0

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 270
    .line 271
    new-instance v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 272
    .line 273
    const-string v3, "TCL\u96f7\u9e1f-\u89e6\u53d1\u5f00\u673a\u4efb\u52a1"

    .line 274
    .line 275
    const-string v5, "\u67d0\u6b3eTCL\u96f7\u9e1f\u7535\u89c6(MT5879)\uff0c\u6388\u6743\u81ea\u542f\u52a8\u6743\u9650"

    .line 276
    .line 277
    invoke-direct {v1, v3, v5, v0}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 284
    .line 285
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 286
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v3, "\u5f00\u673a\u540e\u68c0\u6d4b\u7cfb\u7edf\u80fd\u5426\u6b63\u5e38\u6253\u5f00\u684c\u9762\uff0c\u5982\u679c\u65e0\u6cd5\u8fdb\u5165\u684c\u9762\uff0c\u5219\u6253\u5f00"

    .line 290
    .line 291
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const v3, 0x7f13016f

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v5, "\uff01  \u9884\u9632\u67d0\u4e9b\u4eba\u4e71\u7981\u7528\u684c\u9762\uff0c\u5bfc\u81f4\u65e0\u6cd5\u5f00\u673a\uff01\u5f3a\u70c8\u63a8\u8350\u52fe\u9009\u6b64\u529f\u80fd\uff01(\u6ce8\uff1a\u4ec5\u9002\u5408\u90e8\u5206\u7cfb\u7edf)"

    .line 305
    .line 306
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iget-boolean v5, v2, Lwa/u;->e0:Z

    .line 314
    .line 315
    const-string v6, "\u5f00\u673a\u68c0\u6d4b\u684c\u9762\u662f\u5426\u6b63\u5e38"

    .line 316
    .line 317
    invoke-direct {v0, v6, v1, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 324
    .line 325
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v5, "\u67d0\u4e9b\u8f66\u673a\u7184\u706b\u540e\u4e0d\u4f1a\u5f7b\u5e95\u5173\u673a(\u53ea\u662f\u8fdb\u5165\u6df1\u5ea6\u7761\u7720\u72b6\u6001)\uff0c\u5bfc\u81f4\u6bcf\u6b21\u5f00\u673a\u540e\u65e0\u6cd5\u89e6\u53d1"

    .line 330
    .line 331
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v5, "\u81ea\u542f\u52a8\uff01\u5bf9\u4e8e\u8fd9\u79cd\u8bbe\u5907\uff0c\u53ea\u80fd\u81ea\u5df1\u624b\u52a8\u6253\u5f00"

    .line 342
    .line 343
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v5, "\u6267\u884c\u5f00\u673a\u4efb\u52a1  (\u591a\u6570\u65b0\u80fd\u6e90\u8f66\u90fd\u662f\u6df1\u5ea6\u7761\u7720\u4e0d\u5173\u673a\u7684\uff0c\u4f46\u7761\u7720\u65f6\u4f1a\u5173\u95ed\u6240\u6709\u7b2c\u4e09\u65b9\u5e94\u7528)\n\n\u5982\u4f55\u77e5\u9053\u81ea\u5df1\u8f66\u673a\u662f\u5426\u4e5f\u662f\u8fd9\u6837\u5462\uff0c\u5f00\u673a\u540e\u53ef\u4ee5\u5728"

    .line 354
    .line 355
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v5, "\u7684\u3010\u8bbe\u5907\u4fe1\u606f\u3011\u4e2d\u67e5\u770b\u5f00\u673a\u65f6\u95f4\uff0c\u770b\u5bf9\u4e0d\u5bf9\u7684\u4e0a\uff0c\u5bf9\u5f97\u4e0a\u5c31\u6ca1\u95ee\u9898\uff01\n\n\u73b0\u5728\u5927\u90e8\u5206\u4f11\u7720\u8f66\u673a\uff0c"

    .line 366
    .line 367
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v3, "\u4e5f\u80fd\u591f\u81ea\u542f\u52a8\uff0c\u65e0\u9700\u52fe\u9009\u6b64\u9879"

    .line 378
    .line 379
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    iget-boolean v2, v2, Lwa/u;->h:Z

    .line 387
    .line 388
    const-string v3, "\u5f00\u673a\u540e\u624b\u52a8\u70b9\u51fb\u542f\u52a8(\u4e0d\u8981\u52fe\u9009)"

    .line 389
    .line 390
    invoke-direct {v0, v3, v1, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 397
    .line 398
    const/16 v0, 0x17

    .line 399
    .line 400
    if-lt p1, v0, :cond_1

    .line 401
    .line 402
    const-string p1, "power"

    .line 403
    .line 404
    invoke-virtual {v4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    check-cast p1, Landroid/os/PowerManager;

    .line 409
    .line 410
    if-eqz p1, :cond_1

    .line 411
    .line 412
    iget-object v0, p0, Lha/m4;->h:Lx9/j3;

    .line 413
    .line 414
    new-instance v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 415
    .line 416
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-static {p1, v2}, La2/a;->x(Landroid/os/PowerManager;Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    const-string v2, "\u4fdd\u6d3b\u63aa\u65bd\uff1a\u5ffd\u7565\u7535\u6c60\u4f18\u5316\uff08\u5f3a\u70c8\u5efa\u8bae\u52fe\u9009\uff09"

    .line 425
    .line 426
    const-string v3, "\u6388\u4e88\u6211(\u5ffd\u7565\u7535\u6c60\u4f18\u5316)\u7684\u6743\u9650\uff0c\u53ef\u67d0\u4e9b\u7cfb\u7edf\u4e0a\u907f\u514d\u7cfb\u7edf\u5077\u5077\u5173\u95ed\u5f00\u673a\u4efb\u52a1"

    .line 427
    .line 428
    invoke-direct {v1, v2, v3, p1}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    :cond_1
    iget-object p1, p0, Lha/m4;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 435
    .line 436
    iget-object v0, p0, Lha/m4;->h:Lx9/j3;

    .line 437
    .line 438
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 439
    .line 440
    .line 441
    iget-object p1, p0, Lha/m4;->h:Lx9/j3;

    .line 442
    .line 443
    new-instance v0, La1/d;

    .line 444
    .line 445
    const/16 v1, 0x11

    .line 446
    .line 447
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 451
    .line 452
    return-void
.end method
