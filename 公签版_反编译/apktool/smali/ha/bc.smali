.class public final synthetic Lha/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/fc;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p5, p0, Lha/bc;->a:I

    iput-object p1, p0, Lha/bc;->b:Lha/fc;

    iput-object p2, p0, Lha/bc;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lha/bc;->d:Landroid/widget/ImageView;

    iput-object p4, p0, Lha/bc;->e:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lha/bc;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lha/bc;->b:Lha/fc;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 14
    .line 15
    iget v3, v2, Lcom/yunpan/appmanage/util/w;->O:I

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v1, "\u5df2\u52fe\u9009\u661f\u745e\u81ea\u52a8\u63d0\u6743\uff0c\u4e0d\u80fd\u518d\u52fe\u9009\u8fd9\u4e2a"

    .line 26
    .line 27
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v10, Lha/z6;

    .line 32
    .line 33
    new-instance v9, Lha/dc;

    .line 34
    .line 35
    iget-object v4, v0, Lha/bc;->c:Landroid/widget/ImageView;

    .line 36
    .line 37
    iget-object v5, v0, Lha/bc;->d:Landroid/widget/ImageView;

    .line 38
    .line 39
    iget-object v6, v0, Lha/bc;->e:Landroid/widget/ImageView;

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    move-object v2, v9

    .line 43
    move-object v3, v1

    .line 44
    invoke-direct/range {v2 .. v7}, Lha/dc;-><init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 45
    .line 46
    .line 47
    const-string v5, "\u4ec5\u6781\u4e2a\u522b\u7cfb\u7edf\u652f\u6301su\u63d0\u6743\uff0c\u5982\u679c\u7cfb\u7edf\u5df2root\u76f4\u63a5\u7528root\u6a21\u5f0f\u4f1a\u66f4\u597d"

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 52
    .line 53
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 54
    .line 55
    const-string v7, "\u6211\u60f3\u8bd5\u8bd5"

    .line 56
    .line 57
    const-string v8, "\u53d6\u6d88\u9009\u62e9"

    .line 58
    .line 59
    move-object v2, v10

    .line 60
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10}, Lha/a4;->show()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v1, v0, Lha/bc;->b:Lha/fc;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 73
    .line 74
    iget v3, v2, Lcom/yunpan/appmanage/util/w;->O:I

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    if-ne v3, v4, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    const-string v1, "\u5df2\u52fe\u9009\u661f\u745e\u81ea\u52a8\u63d0\u6743\uff0c\u4e0d\u80fd\u518d\u52fe\u9009\u8fd9\u4e2a"

    .line 85
    .line 86
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    new-instance v10, Lha/z6;

    .line 91
    .line 92
    new-instance v9, Lha/dc;

    .line 93
    .line 94
    iget-object v13, v0, Lha/bc;->c:Landroid/widget/ImageView;

    .line 95
    .line 96
    iget-object v14, v0, Lha/bc;->d:Landroid/widget/ImageView;

    .line 97
    .line 98
    iget-object v15, v0, Lha/bc;->e:Landroid/widget/ImageView;

    .line 99
    .line 100
    const/16 v16, 0x0

    .line 101
    .line 102
    move-object v11, v9

    .line 103
    move-object v12, v1

    .line 104
    invoke-direct/range {v11 .. v16}, Lha/dc;-><init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 105
    .line 106
    .line 107
    const-string v5, "adb root\uff1a\u5c06adb\u4e34\u65f6\u63d0\u5347\u4e3aroot\u6743\u9650(\u5927\u90e8\u5206\u8f66\u673a\u3001\u673a\u9876\u76d2\u652f\u6301\u6b64\u529f\u80fd)\n\u5982\u679c\u60f3\u83b7\u5f97\u66f4\u5f3a\u529f\u80fd\u7684\u8bdd\u53ef\u4ee5\u9009\u62e9\uff0c\u5982\u679c\u4f60\u8bbe\u5907\u652f\u6301su\u63d0\u6743\u4e5f\u53ef\u4ee5\u9009\u62e9su"

    .line 108
    .line 109
    const-string v6, "\n\u6ce8\uff1a\u67d0\u8f66\u673a\u7528adb root\u540e\u4f1a\u65e0\u6cd5\u4f7f\u7528U\u76d8\uff0c\u90a3\u4e48\u91cd\u542f\u6062\u590d\u540e\u7528su\u63d0\u6743"

    .line 110
    .line 111
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 112
    .line 113
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 114
    .line 115
    const-string v7, "\u6211\u8981\u9009\u62e9"

    .line 116
    .line 117
    const-string v8, "\u53d6\u6d88\u9009\u62e9"

    .line 118
    .line 119
    move-object v2, v10

    .line 120
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10}, Lha/a4;->show()V

    .line 124
    .line 125
    .line 126
    :goto_1
    return-void

    .line 127
    :pswitch_1
    iget-object v1, v0, Lha/bc;->b:Lha/fc;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 133
    .line 134
    iget v3, v2, Lcom/yunpan/appmanage/util/w;->P:I

    .line 135
    .line 136
    const/4 v4, 0x1

    .line 137
    if-ne v3, v4, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 141
    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    const-string v1, "\u5df2\u52fe\u9009\u661f\u745e\u81ea\u52a8\u63d0\u6743\uff0c\u4e0d\u80fd\u518d\u52fe\u9009\u8fd9\u4e2a"

    .line 145
    .line 146
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    new-instance v10, Lha/z6;

    .line 151
    .line 152
    new-instance v9, Lha/dc;

    .line 153
    .line 154
    iget-object v13, v0, Lha/bc;->c:Landroid/widget/ImageView;

    .line 155
    .line 156
    iget-object v14, v0, Lha/bc;->d:Landroid/widget/ImageView;

    .line 157
    .line 158
    iget-object v15, v0, Lha/bc;->e:Landroid/widget/ImageView;

    .line 159
    .line 160
    const/16 v16, 0x2

    .line 161
    .line 162
    move-object v11, v9

    .line 163
    move-object v12, v1

    .line 164
    invoke-direct/range {v11 .. v16}, Lha/dc;-><init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 165
    .line 166
    .line 167
    const-string v5, "adb remount\u6302\u8f7d\u7cfb\u7edf\u8bfb\u5199\uff1a\u6210\u529f\u7684\u8bdd\u5373\u53ef\u4fee\u6539\u7cfb\u7edf\u6587\u4ef6\uff0c\u5220\u9664\u7cfb\u7edf\u5e94\u7528\u7b49\n\u5982\u679c\u4e0d\u4e86\u89e3\uff0c\u8bf7\u4e0d\u8981\u52fe\u9009\uff0c\u907f\u514d\u60a8\u4e71\u5220\u9664\u6587\u4ef6\u5bfc\u81f4\u7cfb\u7edf\u65e0\u6cd5\u5f00\u673a\u7b49\u7cfb\u7edf\u6027\u98ce\u9669"

    .line 168
    .line 169
    const-string v6, "\u8b66\u544a\uff1a\u5982\u679c\u60a8\u662f\u5c0f\u767d\uff0c\u6015\u8fd9\u6015\u90a3\u7684\u8bdd\uff0c\u8bf7\u4e0d\u8981\u5f00\u542fadb root\u548cadb\u6302\u8f7d\uff0c\u514d\u5f97\u5230\u65f6\u5019\u60a8\u602a\u6211\u55bd "

    .line 170
    .line 171
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 172
    .line 173
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 174
    .line 175
    const-string v7, "\u6211\u662f\u9ad8\u624b"

    .line 176
    .line 177
    const-string v8, "\u53d6\u6d88\u9009\u62e9"

    .line 178
    .line 179
    move-object v2, v10

    .line 180
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10}, Lha/a4;->show()V

    .line 184
    .line 185
    .line 186
    :goto_2
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
