.class public final Lha/kb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/j3;

.field public i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00e4

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
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 4
    .line 5
    iget v2, v1, Lwa/u;->U:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v0, v1, Lwa/u;->U:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lha/kb;->i:Landroid/widget/TextView;

    .line 15
    .line 16
    const-string v1, "\u81ea\u52a8"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lha/kb;->i:Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v1, "\u6a2a\u5c4f"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lha/kb;->i:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v1, "\u7ad6\u5c4f"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0414

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    const v0, 0x7f0b0415

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lha/kb;->i:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p0}, Lha/kb;->a()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lha/g9;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0b04f1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 45
    .line 46
    iput-object p1, p0, Lha/kb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 47
    .line 48
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-direct {v0, v2, v3, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lx9/j3;

    .line 61
    .line 62
    invoke-direct {p1}, Lx9/j3;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lha/kb;->h:Lx9/j3;

    .line 66
    .line 67
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 68
    .line 69
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 70
    .line 71
    iget-boolean v2, v1, Lwa/u;->P:Z

    .line 72
    .line 73
    const-string v3, "\u5e94\u6025\u9884\u6848\u4e00"

    .line 74
    .line 75
    const-string v4, "20\u79d2\u5185\u89e6\u53d115\u6b21\u4ee5\u4e0a\u5f3a\u5236\u65cb\u8f6c\u7684\u8bdd\uff0c\u4e3b\u52a8\u6682\u505c\u65cb\u8f6c\u4efb\u52a1\u4e00\u5206\u949f"

    .line 76
    .line 77
    invoke-direct {v0, v3, v4, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lha/kb;->h:Lx9/j3;

    .line 84
    .line 85
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "\u4f1a\u663e\u793a\u4e00\u4e2a\u60ac\u6d6e\u7403\uff0c\u70b9\u51fb\u60ac\u6d6e\u7403\u53ef\u6e05\u9664\u65cb\u8f6c\u4efb\u52a1 \u5e76 \u6253\u5f00"

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const v4, 0x7f13002f

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, "\uff01 \u5f85\u4f60\u6d4b\u8bd5\u3010\u5f3a\u5236\u65cb\u8f6c\u3011\u529f\u80fd\u5b8c\u5168\u517c\u5bb9\u4f60\u7684\u8bbe\u5907\u540e\uff0c\u8bbe\u5907\u91cd\u65b0\u5f00\u673a\u3001\u91cd\u542f\u540e\u4e5f\u80fd\u5b8c\u5168\u6b63\u5e38\u4f7f\u7528\u7684\u65f6\u5019\uff0c\u518d\u53d6\u6d88\u6b64\u52fe\u9009\uff01"

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-boolean v3, v1, Lwa/u;->Q:Z

    .line 122
    .line 123
    const-string v4, "\u5e94\u6025\u9884\u6848\u4e8c"

    .line 124
    .line 125
    invoke-direct {v0, v4, v2, v3}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lha/kb;->h:Lx9/j3;

    .line 132
    .line 133
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 134
    .line 135
    iget-boolean v2, v1, Lwa/u;->R:Z

    .line 136
    .line 137
    const-string v3, "\u5e94\u6025\u9884\u6848\u4e09"

    .line 138
    .line 139
    const-string v4, "\u5f00\u673a\u540e\u7684\u524d\u4e24\u5206\u949f\u4e0d\u6267\u884c\u5f3a\u5236\u65cb\u8f6c\uff0c \u610f\u601d\u662f \u5f00\u673a\u4e24\u5206\u949f\u540e\u518d\u5141\u8bb8\u6267\u884c\u5f3a\u5236\u65cb\u8f6c\u4efb\u52a1"

    .line 140
    .line 141
    invoke-direct {v0, v3, v4, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lha/kb;->h:Lx9/j3;

    .line 148
    .line 149
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 150
    .line 151
    iget-boolean v2, v1, Lwa/u;->S:Z

    .line 152
    .line 153
    const-string v3, "\u5168\u5c40\u6a2a\u5c4f"

    .line 154
    .line 155
    const-string v4, "\u5168\u90e8\u5e94\u7528\u5f3a\u5236\u6a2a\u5c4f\uff01\u4e25\u91cd\u8b66\u544a\uff1a\u975e\u5e38\u4e0d\u5efa\u8bae\u52fe\u9009\u6b64\u529f\u80fd\uff0c\u9664\u975e\u60a8\u975e\u5e38\u4e86\u89e3\u60a8\u7684\u8bbe\u5907\uff0c\u5e76\u4e14\u600e\u4e48\u6d4b\u8bd5\u90fd\u80fd\u4e00\u5207\u6b63\u5e38\u7684\u8bdd\uff0c\u800c\u4e14\u8fd8\u6781\u4e3a\u9700\u8981\u7684\u8bdd\uff0c\u624d\u8003\u8651\u6b64\u529f\u80fd\uff01\u53ea\u6709\u51e0\u4e2a\u5e94\u7528\u9700\u8981\u5f3a\u5236\u65cb\u8f6c\u7684\u8bdd\uff0c\u90a3\u4e48\u4e0d\u5efa\u8bae\u4f60\u7528\u5168\u5c40\uff01\u5168\u5c40\u6709\u98ce\u9669\uff0c\u52fe\u9009\u9700\u8c28\u614e\uff01\u52fe\u9009\u5168\u5c40\u65f6\uff0c\u4f9d\u65e7\u53ef\u4ee5\u5355\u72ec\u8bbe\u7f6e\u67d0\u4e00\u4e2a"

    .line 156
    .line 157
    invoke-direct {v0, v3, v4, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lha/kb;->h:Lx9/j3;

    .line 164
    .line 165
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 166
    .line 167
    iget-boolean v1, v1, Lwa/u;->T:Z

    .line 168
    .line 169
    const-string v2, "\u5168\u5c40\u7ad6\u5c4f"

    .line 170
    .line 171
    const-string v3, "\u5168\u90e8\u5e94\u7528\u5f3a\u5236\u7ad6\u5c4f\uff01\u4e25\u91cd\u8b66\u544a\uff1a\u975e\u5e38\u4e0d\u5efa\u8bae\u52fe\u9009\u6b64\u529f\u80fd\uff0c\u9664\u975e\u60a8\u975e\u5e38\u4e86\u89e3\u60a8\u7684\u8bbe\u5907\uff0c\u5e76\u4e14\u600e\u4e48\u6d4b\u8bd5\u90fd\u80fd\u4e00\u5207\u6b63\u5e38\u7684\u8bdd\uff0c\u800c\u4e14\u8fd8\u6781\u4e3a\u9700\u8981\u7684\u8bdd\uff0c\u624d\u8003\u8651\u6b64\u529f\u80fd\uff01\u53ea\u6709\u51e0\u4e2a\u5e94\u7528\u9700\u8981\u5f3a\u5236\u65cb\u8f6c\u7684\u8bdd\uff0c\u90a3\u4e48\u4e0d\u5efa\u8bae\u4f60\u7528\u5168\u5c40\uff01\u5168\u5c40\u6709\u98ce\u9669\uff0c\u52fe\u9009\u9700\u8c28\u614e"

    .line 172
    .line 173
    invoke-direct {v0, v2, v3, v1}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lha/kb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 180
    .line 181
    iget-object v0, p0, Lha/kb;->h:Lx9/j3;

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lha/kb;->h:Lx9/j3;

    .line 187
    .line 188
    new-instance v0, Lha/jb;

    .line 189
    .line 190
    invoke-direct {v0, p0}, Lha/jb;-><init>(Lha/kb;)V

    .line 191
    .line 192
    .line 193
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 194
    .line 195
    return-void
.end method
