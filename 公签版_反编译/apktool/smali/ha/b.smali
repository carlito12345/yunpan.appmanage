.class public final Lha/b;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/j3;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0077

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
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/b;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 16
    .line 17
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f13016f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v2, Lx9/j3;

    .line 35
    .line 36
    invoke-direct {v2}, Lx9/j3;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lha/b;->h:Lx9/j3;

    .line 40
    .line 41
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 42
    .line 43
    const-string v4, "\u67d0\u4e9b\u7cfb\u7edf\u91cd\u542f\u540e\u4f1a\u91cd\u7f6e\u65e0\u969c\u788d,\u90a3\u8bf7\u52fe\u9009\u6b64\u529f\u80fd\uff01\u5f00\u673a\u540e"

    .line 44
    .line 45
    const-string v5, "\u4f1a\u77ed\u6682\u8fd0\u884c\u5f00\u542f\u65e0\u969c\u788d\u8bbe\u7f6e(\u6240\u4ee5\u7cfb\u7edf\u9700\u5141\u8bb8"

    .line 46
    .line 47
    const-string v6, "\u81ea\u542f\u52a8\u624d\u884c)"

    .line 48
    .line 49
    invoke-static {v4, v0, v5, v0, v6}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 54
    .line 55
    iget-boolean v6, v5, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 56
    .line 57
    const-string v7, "\u65e0\u969c\u788d\u5f00\u673a\u4fdd\u6301"

    .line 58
    .line 59
    invoke-direct {v3, v7, v4, v6}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lha/b;->h:Lx9/j3;

    .line 66
    .line 67
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 68
    .line 69
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 70
    .line 71
    iget-boolean v6, v4, Lwa/u;->e:Z

    .line 72
    .line 73
    const-string v7, "\u91cd\u542f\u65e0\u969c\u788d\u670d\u52a1"

    .line 74
    .line 75
    const-string v8, "\u67d0\u4e9b\u8111\u6b8b\u7cfb\u7edf\u5f00\u673a\u540e\u65e0\u969c\u788d\u670d\u52a1\u662f\u5f00\u542f\u7684\uff0c\u4f46\u662f\u670d\u52a1\u5207\u4e0d\u80fd\u8fd0\u884c\uff01\u90a3\u4e48\u8bf7\u52fe\u9009\u6b64\u529f\u80fd\uff01 \u6b63\u5e38\u7684\u60c5\u51b5\u4e0b\u65e0\u9700\u52fe\u9009\u54e6"

    .line 76
    .line 77
    invoke-direct {v3, v7, v8, v6}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lha/b;->h:Lx9/j3;

    .line 84
    .line 85
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 86
    .line 87
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 88
    .line 89
    const-string v6, "\u4f7f\u7528root\u6743\u8fdb\u884c\u7ba1\u7406"

    .line 90
    .line 91
    const-string v7, "\u4e00\u4e9b\u7cfb\u7edf\u53ea\u80fd\u7528root\u6743\u624d\u80fd\u7ba1\u7406\u65e0\u969c\u788d\uff0c\u5982\u679c\u60a8\u7684\u7cfb\u7edf\u80fd\u6b63\u5e38\u7ba1\u7406\u7684\u8bdd\u8bf7\u4e0d\u8981\u52fe\u9009\u8fd9\u4e2a"

    .line 92
    .line 93
    invoke-direct {v3, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lha/b;->h:Lx9/j3;

    .line 100
    .line 101
    new-instance v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 102
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v6, "\u67d0\u4e9b\u8f66\u673a\u7184\u706b\u540e\u4e0d\u4f1a\u5f7b\u5e95\u5173\u673a(\u53ea\u662f\u8fdb\u5165\u6df1\u5ea6\u7761\u7720\u72b6\u6001)\uff0c\u5bfc\u81f4\u6bcf\u6b21\u5f00\u673a\u540e"

    .line 106
    .line 107
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v6, "\u65e0\u6cd5\u5b9e\u73b0\u81ea\u542f\u52a8\uff0c\u6301\u4e45\u529f\u80fd\u4e5f\u65e0\u6cd5\u6267\u884c\uff01\u5bf9\u4e8e\u8fd9\u79cd\u8bbe\u5907\uff0c\u53ea\u80fd\u81ea\u5df1\u624b\u52a8\u6253\u5f00"

    .line 114
    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, "\u5c31\u4f1a\u6267\u884c\u6301\u4e45\u4efb\u52a1\u6216\u5f00\u673a\u4efb\u52a1\n\n\u6ce8\u610f\uff1a\u73b0\u5728\u5927\u90e8\u5206\u4f11\u7720\u8f66\u673a\uff0c"

    .line 122
    .line 123
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, "\u90fd\u80fd\u5b9e\u73b0\u81ea\u542f\u52a8\u4e86\uff0c\u4e0d\u9700\u8981\u52fe\u9009\u6b64\u9879\u4e86"

    .line 134
    .line 135
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-boolean v5, v4, Lwa/u;->h:Z

    .line 143
    .line 144
    const-string v6, "\u5f00\u673a\u540e\u624b\u52a8\u70b9\u51fb\u542f\u52a8(\u4e0d\u8981\u52fe\u9009)"

    .line 145
    .line 146
    invoke-direct {v3, v6, v0, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lha/b;->h:Lx9/j3;

    .line 153
    .line 154
    new-instance v2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v5, "\u8fd9\u4e2a\u9009\u9879\u662f\u5bf9\u4e8e(\u65e0\u969c\u788d\u5f00\u673a\u4fdd\u6301)\u65f6\u6709\u6548\n\u5148\u4ecb\u7ecd\uff1a\u6240\u6709\u7684\u65e0\u969c\u788d\u670d\u52a1\u7684\u5f00/\u5173\uff0c\u7cfb\u7edf\u90fd\u662f\u4fdd\u5b58\u5728\u4e00\u4e2a\u914d\u7f6e\u91cc\u9762\u7684\uff0c\u6211\u4eec\u901a\u8fc7\u4fee\u6539\u8fd9\u4e2a\u914d\u7f6e\u6765\u8fbe\u5230\u63a7\u5236\u67d0\u4e2a\u670d\u52a1\u7684\u5f00\u542f/\u5173\u95ed\uff01\u800c\u8fd9\u91cc\u6240\u8c13\u7684\u8986\u76d6\u662f\u6307\uff1a\u5f00\u673a\u540e\u5b8c\u5168\u6309\u7167\u4f60\u5728"

    .line 159
    .line 160
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v5, "\u91cc\u7684\u65e0\u969c\u788d(\u5f00/\u5173)\u4e00\u81f4\u6765\u8bbe\u7f6e\uff0c \u800c\u8ffd\u52a0\u5219\u662f\uff1a\u5f00\u673a\u540e\u5728\u7cfb\u7edf\u539f\u6709\u5f00\u542f\u7684\u65e0\u969c\u788d\u57fa\u7840\u4e0a\uff0c\u8ffd\u52a0\u4f60\u5728"

    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p1, "\u4e2d\u5df2\u5f00\u542f\u7684\u65e0\u969c\u788d\u670d\u52a1\uff01\n\n\u770b\u4e0d\u61c2\u6ca1\u5173\u7cfb\uff0c\u66f4\u76f4\u63a5\u7684\u8bf4\u6cd5\uff1a\u4e0d\u7528\u52fe\u9009\u8fd9\u4e2a\u9009\u9879\uff0c\u9664\u975e\u4f60\u9700\u8981\u5728\u5f00\u673a\u65f6\u5173\u95ed\u67d0\u4e9b\u7cfb\u7edf\u5f00\u542f\u7684\u65e0\u969c\u788d\u670d\u52a1\uff01(\u6ce8\uff1a\u52fe\u9009\u91cd\u542f\u65e0\u969c\u788d\u670d\u52a1\u7684\u8bdd\uff0c\u90a3\u5c06\u91c7\u7528\u8986\u76d6\u65b9\u5f0f)"

    .line 183
    .line 184
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-boolean v1, v4, Lwa/u;->f:Z

    .line 192
    .line 193
    const-string v3, "\u91c7\u7528\u8986\u76d6\u65b9\u5f0f(\u4e0d\u52fe\u9009\u662f\u8ffd\u52a0)"

    .line 194
    .line 195
    invoke-direct {v2, v3, p1, v1}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lha/b;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 202
    .line 203
    iget-object v0, p0, Lha/b;->h:Lx9/j3;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lha/b;->h:Lx9/j3;

    .line 209
    .line 210
    new-instance v0, La1/d;

    .line 211
    .line 212
    const/4 v1, 0x6

    .line 213
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 217
    .line 218
    return-void
.end method
