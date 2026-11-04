.class public final Lha/kd;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/j3;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0095

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
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b05c2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "\u5982\u679c\u60a8\u7684TCL\u7535\u89c6\u7528"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 21
    .line 22
    const v2, 0x7f13016f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "\u65e0\u6cd5\u5b89\u88c5\u5e94\u7528\uff0c\u8bf7\u5c1d\u8bd5\u4ee5\u4e0b\u6a21\u5f0f\n\u8bf7\u81ea\u884c\u6d4b\u8bd5\u53ef\u7528\u6027\uff0c\u5982\u679c\u4e0d\u9002\u5408\u8bf7\u6539\u56de\u9ed8\u8ba4\uff0c\u975eTCL\u8bbe\u5907\u8bf7\u9ed8\u8ba4[\u4e0d\u8bbe\u7f6e]"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0b04f1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 52
    .line 53
    iput-object p1, p0, Lha/kd;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lx9/j3;

    .line 66
    .line 67
    invoke-direct {p1}, Lx9/j3;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lha/kd;->h:Lx9/j3;

    .line 71
    .line 72
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 73
    .line 74
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 75
    .line 76
    iget v4, v1, Lcom/yunpan/appmanage/util/w;->T:I

    .line 77
    .line 78
    if-nez v4, :cond_0

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v4, 0x0

    .line 83
    :goto_0
    const-string v5, "\u4e0d\u8bbe\u7f6e(\u9ed8\u8ba4)"

    .line 84
    .line 85
    const-string v6, "\u80fd\u6b63\u5e38\u5b89\u88c5app \u6216 \u8fdeadb\u540e\u80fd\u6b63\u5e38\u5b89\u88c5app\u7684\u60c5\u51b5\u4e0b\uff0c\u9ed8\u8ba4\u5373\u53ef"

    .line 86
    .line 87
    invoke-direct {v0, v5, v6, v4}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lha/kd;->h:Lx9/j3;

    .line 94
    .line 95
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 96
    .line 97
    iget v4, v1, Lcom/yunpan/appmanage/util/w;->T:I

    .line 98
    .line 99
    if-ne v4, v2, :cond_1

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const/4 v4, 0x0

    .line 104
    :goto_1
    const-string v5, "\u7981\u7528\u7cfb\u7edf\u5b89\u88c5\u5668"

    .line 105
    .line 106
    const-string v6, "\u652f\u6301\u90e8\u5206\u7cfb\u7edf\uff1aadb\u8fde\u63a5\u540e\u5b89\u88c5\u5e94\u7528\uff0c\u5b89\u88c5\u65f6\u4e34\u65f6\u7981\u7528\u7cfb\u7edf\u5b89\u88c5\u5668\uff0c\u5b89\u88c5\u6210\u529f\u540e\u6062\u590d\u7cfb\u7edf\u5b89\u88c5\u5668"

    .line 107
    .line 108
    invoke-direct {v0, v5, v6, v4}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lha/kd;->h:Lx9/j3;

    .line 115
    .line 116
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 117
    .line 118
    iget v4, v1, Lcom/yunpan/appmanage/util/w;->T:I

    .line 119
    .line 120
    const/4 v5, 0x2

    .line 121
    if-ne v4, v5, :cond_2

    .line 122
    .line 123
    const/4 v4, 0x1

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    const/4 v4, 0x0

    .line 126
    :goto_2
    const-string v5, "\u591a\u5c4f\u4e92\u52a8(\u4e0d\u7b49\u5f85)"

    .line 127
    .line 128
    const-string v6, "\u5982\u679c\u60a8\u7535\u89c6\u81ea\u5e26\u591a\u5c4f\u4e92\u52a8app\uff0c\u53ef\u4f7f\u7528\u6b64\u65b9\u6cd5\u5b89\u88c5app"

    .line 129
    .line 130
    invoke-direct {v0, v5, v6, v4}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lha/kd;->h:Lx9/j3;

    .line 137
    .line 138
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 139
    .line 140
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->T:I

    .line 141
    .line 142
    const/4 v4, 0x3

    .line 143
    if-ne v1, v4, :cond_3

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    const/4 v2, 0x0

    .line 147
    :goto_3
    const-string v1, "\u591a\u5c4f\u4e92\u52a8(\u7b49\u4e09\u79d2)"

    .line 148
    .line 149
    const-string v3, "\u540c\u4e0a\uff0c\u533a\u522b\u662f\uff1a\u5b89\u88c5\u5b8c\u6210\u540e\uff0c\u7b49\u7535\u89c6\u53f3\u4e0a\u89d2\u7a97\u53e3\u6d88\u5931\u540e\u518d\u63d0\u793a\u5b8c\u6210\uff01 \u5982\u679c\u662f\u4e0a\u9762\u8fd9\u4e2a\u6a21\u5f0f\u7684\u8bdd\uff0c\u4e0d\u7b49\u5f85\u7a97\u53e3\u6d88\u5931\uff0c\u76f4\u63a5\u5b8c\u6210\uff0c\u90a3\u7535\u89c6\u7a97\u53e3\u4f1a\u63d0\u793a\u4e0b\u8f7d\u5931\u8d25(\u5b9e\u9645\u4e0a\u5df2\u5b89\u88c5\u6210\u529f)"

    .line 150
    .line 151
    invoke-direct {v0, v1, v3, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lha/kd;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 158
    .line 159
    iget-object v0, p0, Lha/kd;->h:Lx9/j3;

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lha/kd;->h:Lx9/j3;

    .line 165
    .line 166
    new-instance v0, Lha/jd;

    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    invoke-direct {v0, v1}, Lha/jd;-><init>(I)V

    .line 170
    .line 171
    .line 172
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 173
    .line 174
    return-void
.end method
