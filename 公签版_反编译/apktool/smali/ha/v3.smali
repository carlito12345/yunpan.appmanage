.class public final Lha/v3;
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
    iput-object p1, p0, Lha/v3;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

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
    new-instance p1, Lx9/j3;

    .line 28
    .line 29
    invoke-direct {p1}, Lx9/j3;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 33
    .line 34
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 35
    .line 36
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 37
    .line 38
    iget-boolean v5, v4, Lwa/u;->D:Z

    .line 39
    .line 40
    const-string v6, "\u81ea\u52a8\u5316\u670d\u52a1\u5173\u95ed\u65f6\u5f39\u51fa\u63d0\u793a"

    .line 41
    .line 42
    const-string v7, "\u81ea\u52a8\u5316\u670d\u52a1\u88ab\u5173\u95ed\u65f6\u4f1a\u5f39\u51fa\u63d0\u793a"

    .line 43
    .line 44
    invoke-direct {v0, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 51
    .line 52
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 53
    .line 54
    iget-boolean v5, v4, Lwa/u;->E:Z

    .line 55
    .line 56
    const-string v6, "\u81ea\u52a8\u5316\u542f\u52a8\u65f6\u6267\u884c\u5f00\u673a\u4efb\u52a1"

    .line 57
    .line 58
    const-string v7, "\u6709\u4e9b\u8bbe\u5907\u65e0\u6cd5\u5f00\u673a\u81ea\u542f\u6240\u4ee5\u65e0\u6cd5\u6267\u884c\u5f00\u673a\u4efb\u52a1\uff0c\u4f46\u5374\u80fd\u4e3b\u52a8\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1(\u81ea\u52a8\u5316\u4efb\u52a1\u5c31\u662f\u65e0\u969c\u788d\u670d\u52a1)\uff0c\u90a3\u4e48\u5c31\u53ef\u4ee5\u52fe\u9009\u8fd9\u4e2a\uff0c\u5f53\u81ea\u52a8\u5316\u670d\u52a1\u542f\u52a8\u65f6\u5c31\u6267\u884c\u5f00\u673a\u4efb\u52a1(\u4ec5\u5728\u5f00\u673a\u65f6\u6709\u6548)\uff01\u770b\u4e0d\u61c2\u6587\u5b57\u7684\u8bf7\u4e0d\u8981\u52fe\u9009"

    .line 59
    .line 60
    invoke-direct {v0, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 67
    .line 68
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v6, "\u7cfb\u7edf\u5b89\u88c5\u5668\u3001\u6743\u9650\u6388\u6743\u7a97\u3001usb\u8c03\u8bd5\u5f39\u7a97\u3001\u5f00\u53d1\u8005\u9009\u9879 \u7b49\u8fd9\u4e9b\u7cfb\u7edf\u7a97\u53e3\u4e0d\u80fd\u51fa\u73b0\u60ac\u6d6e\u7a97\uff0c\u5982\u679c\u6709\u60ac\u6d6e\u7a97\u5728\u8fd9\u4e9b\u7a97\u53e3\u4e0a\u5c42\u7684\u8bdd\uff0c\u4f1a\u5bfc\u81f4\u8fd9\u4e9b\u7a97\u53e3\u65e0\u6cd5\u70b9\u51fb\u786e\u5b9a\uff0c\u8fd9\u5c5e\u4e8eandroid\u7684\u5b89\u5168\u673a\u5236\uff01\u5982\u679c\u4f60\u7684\u7cfb\u7edf\u5b58\u5728\u8fd9\u79cd\u673a\u5236\uff0c\u90a3\u4e48\u8bf7\u52fe\u9009\u8fd9\u4e2a\u529f\u80fd\uff01\n\u6ce8\uff1a"

    .line 73
    .line 74
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const v6, 0x7f13016f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v6, "\u53ea\u662f\u9690\u85cf\u81ea\u8eab\u521b\u5efa\u7684\u60ac\u6d6e\u7a97"

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-boolean v6, v4, Lwa/u;->G:Z

    .line 97
    .line 98
    const-string v7, "\u9047\u5230\u7cfb\u7edf\u5f39\u7a97\u81ea\u52a8\u9690\u85cf\u60ac\u6d6e\u7a97"

    .line 99
    .line 100
    invoke-direct {v0, v7, v5, v6}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 107
    .line 108
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 109
    .line 110
    iget-boolean v5, v4, Lwa/u;->F:Z

    .line 111
    .line 112
    const-string v6, "\u606f\u5c4f\u65f6\u5173\u95ed\u81ea\u52a8\u5316\uff0c\u4eae\u5c4f\u65f6\u5f00\u542f\u81ea\u52a8\u5316"

    .line 113
    .line 114
    const-string v7, "\u6ce8\uff1a\u6b63\u5e38\u60c5\u51b5\u4e0b\u65e0\u9700\u52fe\u9009\u6b64\u529f\u80fd\uff01\u6b64\u529f\u80fd\u662f\u7279\u6b8a\u8f66\u673a\u7528\u7684\uff0c\u5982\uff1a\u67d0\u4f11\u7720\u7c7b\u578b\u7684\u7cfb\u7edf\uff0c\u8fdb\u5165\u4f11\u7720\u65f6(\u606f\u5c4f)\u7cfb\u7edf\u4f1a\u5f3a\u5236\u5173\u95ed\u65e0\u969c\u788d\u670d\u52a1\uff0c\u5bfc\u81f4\u65e0\u969c\u788d\u670d\u52a1\u5f02\u5e38\uff0c\u4eae\u5c4f\u540e\u65e0\u6cd5\u5f00\u542f\u81ea\u52a8\u5316\uff0c\u90a3\u4e48\u53ef\u8003\u8651\u52fe\u9009\u6b64\u9879\u76ee"

    .line 115
    .line 116
    invoke-direct {v0, v6, v7, v5}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 123
    .line 124
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 125
    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v6, "\u7194\u65ad\u4fdd\u62a4\uff1a\u4e24\u5206\u949f\u5185\u8fde\u7eed\u89e6\u53d1"

    .line 129
    .line 130
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget v6, v4, Lwa/u;->z:I

    .line 134
    .line 135
    const-string v7, "40"

    .line 136
    .line 137
    if-nez v6, :cond_0

    .line 138
    .line 139
    move-object v6, v7

    .line 140
    goto :goto_0

    .line 141
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v6, "\u6b21\u6620\u5c04\u4ee5\u4e0a\u65f6\uff0c\u505c\u6b62\u81ea\u52a8\u5316"

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iget v6, v4, Lwa/u;->z:I

    .line 158
    .line 159
    if-lez v6, :cond_1

    .line 160
    .line 161
    const/4 v6, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    const/4 v6, 0x0

    .line 164
    :goto_1
    const-string v8, "\u5047\u5982\u65e0\u610f\u4e2d\u8bbe\u7f6e\u4e86\u9519\u8bef\u7684\u6620\u5c04\uff0c\u5bfc\u81f4\u8fde\u7eed\u89e6\u53d1\u6620\u5c04\uff0c\u800c\u65e0\u6cd5\u624b\u52a8\u5e72\u9884\u7684\u60c5\u51b5\uff01\u52fe\u9009\u7194\u65ad\u4fdd\u62a4\u5c31\u53ef\u4ee5\u5f88\u597d\u5730\u907f\u514d\u8fd9\u79cd\u9519\u8bef\u5371\u673a\uff01 \u53ef\u4ee5\u4e0d\u52fe\u9009\u8fd9\u4e2a\uff01  \u8fd9\u91cc\u7684\u6620\u5c04\u4fdd\u62a4\u662f\u6307\u9664\u4e86\u65e5\u5fd7\u6620\u5c04\u5916\u7684\u6240\u6709\u6620\u5c04\uff01 \u65e5\u5fd7\u6620\u5c04\u7194\u65ad\u8bf7\u7528\u4e0b\u9762\u90a3\u4e2a"

    .line 165
    .line 166
    invoke-direct {v0, v5, v8, v6}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 173
    .line 174
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 175
    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v6, "\u65e5\u5fd7\u7194\u65ad\u4fdd\u62a4\uff1a\u4e24\u5206\u949f\u5185\u8fde\u7eed\u89e6\u53d1"

    .line 179
    .line 180
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget v6, v4, Lwa/u;->A:I

    .line 184
    .line 185
    if-nez v6, :cond_2

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v6, "\u6b21\u65e5\u5fd7\u6620\u5c04\u4ee5\u4e0a\u65f6\uff0c\u505c\u6b62\u81ea\u52a8\u5316"

    .line 196
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    iget v6, v4, Lwa/u;->A:I

    .line 205
    .line 206
    if-lez v6, :cond_3

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_3
    const/4 v2, 0x0

    .line 210
    :goto_3
    const-string v3, "\u5047\u5982\u65e0\u610f\u4e2d\u8bbe\u7f6e\u4e86\u9519\u8bef\u7684\u65e5\u5fd7\u6620\u5c04\uff0c\u5bfc\u81f4\u8fde\u7eed\u89e6\u53d1\u6620\u5c04\uff0c\u800c\u65e0\u6cd5\u624b\u52a8\u5e72\u9884\u7684\u60c5\u51b5\uff01\u52fe\u9009\u7194\u65ad\u4fdd\u62a4\u5c31\u53ef\u4ee5\u5f88\u597d\u5730\u907f\u514d\u8fd9\u79cd\u9519\u8bef\u5371\u673a\uff01 \u8bf7\u4e00\u5b9a\u8981\u52fe\u9009\u8fd9\u4e2a"

    .line 211
    .line 212
    invoke-direct {v0, v5, v3, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 219
    .line 220
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 221
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v3, "\u6ce8\uff1a\u6b64\u529f\u80fd\u4e00\u822c\u6ca1\u5565\u7528\u5904\uff01\u6709\u4e9b\u7cfb\u7edf\u4f1a\u6740\u540e\u53f0\uff0c\u65e0\u969c\u788d\u670d\u52a1\u8fd0\u884c\u8fc7\u7a0b\u4e2d\u88ab\u7cfb\u7edf\u5077\u5077\u6740\u6b7b\uff0c\u5bfc\u81f4\u81ea\u52a8\u5316\u4efb\u52a1\u5931\u6548\uff01 \u5982\u679c\u60a8\u7684\u7cfb\u7edf\u4f1a\u8fd9\u6837\u7684\u8bdd\uff0c\u53ef\u5c1d\u8bd5\u52fe\u9009\u8fd9\u4e2a\u4fdd\u6d3b\u63aa\u65bd\uff0c\u4f1a\u5728\u901a\u77e5\u680f\u663e\u793a"

    .line 225
    .line 226
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    const v5, 0x7f13002f

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v3, "\u5b88\u62a4\u670d\u52a1\uff01"

    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget-boolean v3, v4, Lwa/u;->C:Z

    .line 253
    .line 254
    const-string v6, "\u4fdd\u6d3b\u63aa\u65bd\uff1a\u521b\u5efa\u901a\u77e5\u680f\u670d\u52a1"

    .line 255
    .line 256
    invoke-direct {v0, v6, v2, v3}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 263
    .line 264
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v3, " \u4e0d\u663e\u793a\u5728\u6700\u8fd1\u4efb\u52a1"

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget-boolean v3, v4, Lwa/u;->B:Z

    .line 288
    .line 289
    const-string v5, "\u4fdd\u6d3b\u63aa\u65bd\uff1a\u4e0d\u663e\u793a\u5728\u6700\u8fd1\u4efb\u52a1"

    .line 290
    .line 291
    invoke-direct {v0, v5, v2, v3}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 298
    .line 299
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 300
    .line 301
    iget-boolean v2, v4, Lwa/u;->H:Z

    .line 302
    .line 303
    const-string v3, "\u81ea\u52a8\u5316\u88ab\u8bef\u5173\u65f6\u91cd\u65b0\u542f\u52a8"

    .line 304
    .line 305
    const-string v5, "\u67d0\u4e9b\u7cfb\u7edf\u5f00\u673a\u65f6\u4f1a\u628a\u65e0\u969c\u788d\u670d\u52a1\u5173\u95ed\uff0c\u800c\u4e14\u65e0\u6cd5\u7528\u65e0\u969c\u788d\u6301\u4e45\u670d\u52a1\u65f6\uff0c\u53ef\u4ee5\u5c1d\u8bd5\u6b64\u529f\u80fd\uff0c\u6b63\u5e38\u60c5\u51b5\u65e0\u9700\u52fe\u9009\uff01"

    .line 306
    .line 307
    invoke-direct {v0, v3, v5, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 314
    .line 315
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 316
    .line 317
    iget-boolean v2, v4, Lwa/u;->I:Z

    .line 318
    .line 319
    const-string v3, "\u81ea\u52a8\u5316\u88ab\u8bef\u5173\u65f6\u6267\u884c\u5f00\u673a\u4efb\u52a1"

    .line 320
    .line 321
    const-string v4, "(\u4e0d\u8981\u52fe\u9009)\u67d0\u4e9b\u7cfb\u7edf\u5f00\u673a\u65f6\u4f1a\u628a\u65e0\u969c\u788d\u670d\u52a1\u5173\u95ed\uff0c\u800c\u4e14\u65e0\u6cd5\u7528\u5f00\u673a\u4efb\u52a1\u65f6\uff0c\u53ef\u5c1d\u8bd5\u6b64\u529f\u80fd\uff0c\u6b63\u5e38\u60c5\u51b5\u65e0\u9700\u52fe\u9009\uff01"

    .line 322
    .line 323
    invoke-direct {v0, v3, v4, v2}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 330
    .line 331
    const/16 v0, 0x17

    .line 332
    .line 333
    if-lt p1, v0, :cond_4

    .line 334
    .line 335
    const-string p1, "power"

    .line 336
    .line 337
    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Landroid/os/PowerManager;

    .line 342
    .line 343
    if-eqz p1, :cond_4

    .line 344
    .line 345
    iget-object v0, p0, Lha/v3;->h:Lx9/j3;

    .line 346
    .line 347
    new-instance v2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 348
    .line 349
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {p1, v1}, La2/a;->x(Landroid/os/PowerManager;Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    const-string v1, "\u4fdd\u6d3b\u63aa\u65bd\uff1a\u5ffd\u7565\u7535\u6c60\u4f18\u5316\uff08\u5f3a\u70c8\u5efa\u8bae\u52fe\u9009\uff09"

    .line 358
    .line 359
    const-string v3, "\u6388\u4e88\u6211(\u5ffd\u7565\u7535\u6c60\u4f18\u5316)\u7684\u6743\u9650\uff0c\u53ef\u6709\u6548\u907f\u514d\u7cfb\u7edf\u5077\u5077\u5173\u95ed\u81ea\u52a8\u5316\u4efb\u52a1"

    .line 360
    .line 361
    invoke-direct {v2, v1, v3, p1}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_4
    iget-object p1, p0, Lha/v3;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 368
    .line 369
    iget-object v0, p0, Lha/v3;->h:Lx9/j3;

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 372
    .line 373
    .line 374
    iget-object p1, p0, Lha/v3;->h:Lx9/j3;

    .line 375
    .line 376
    new-instance v0, La1/d;

    .line 377
    .line 378
    const/16 v1, 0xf

    .line 379
    .line 380
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 384
    .line 385
    return-void
.end method
