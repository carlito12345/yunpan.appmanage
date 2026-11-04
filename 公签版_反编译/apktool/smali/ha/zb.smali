.class public final synthetic Lha/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/fc;


# direct methods
.method public synthetic constructor <init>(Lha/fc;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/zb;->a:I

    iput-object p1, p0, Lha/zb;->b:Lha/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lha/zb;->b:Lha/fc;

    .line 2
    .line 3
    iget v0, p0, Lha/zb;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lha/fc;->dismiss()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    iget-object v1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 14
    .line 15
    const-class v2, Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 42
    .line 43
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const-string p1, "\u65e2\u6ca1\u6709sd\u5361\u4e5f\u6ca1\u6709U\u76d8\uff0c\u65e0\u6cd5\u8bbe\u7f6e"

    .line 54
    .line 55
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lha/fc;->dismiss()V

    .line 60
    .line 61
    .line 62
    new-instance v8, Lha/z6;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "\u4fee\u6539"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 72
    .line 73
    const v2, 0x7f13002f

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\u7684\u80cc\u666f\u56fe"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-instance v7, Lh5/m;

    .line 93
    .line 94
    const/16 v0, 0xe

    .line 95
    .line 96
    invoke-direct {v7, v0, p1}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 100
    .line 101
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 102
    .line 103
    const-string v5, "\u9009\u62e9\u56fe\u7247"

    .line 104
    .line 105
    const-string v6, "\u6062\u590d\u9ed8\u8ba4"

    .line 106
    .line 107
    const-string v4, ""

    .line 108
    .line 109
    move-object v0, v8

    .line 110
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void

    .line 117
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    const/16 v1, 0x17

    .line 123
    .line 124
    if-ge v0, v1, :cond_1

    .line 125
    .line 126
    const-string p1, "\u4f4e\u4e8e\u5b89\u53536.0\u65e0\u9700\u7ba1\u7406\u6743\u9650"

    .line 127
    .line 128
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_1
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 133
    .line 134
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 139
    .line 140
    const/16 v2, 0x3004

    .line 141
    .line 142
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    move-object v4, v0

    .line 147
    goto :goto_2

    .line 148
    :catch_0
    const/4 v0, 0x0

    .line 149
    goto :goto_1

    .line 150
    :goto_2
    if-nez v4, :cond_2

    .line 151
    .line 152
    const-string p1, "\u51fa\u9519\uff0c\u65e0\u6cd5\u6253\u5f00"

    .line 153
    .line 154
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_2
    invoke-virtual {p1}, Lha/fc;->dismiss()V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lha/za;

    .line 162
    .line 163
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    iget-object v3, p1, Lha/a4;->b:Landroid/content/Context;

    .line 168
    .line 169
    const/4 v6, 0x0

    .line 170
    iget-object v2, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 171
    .line 172
    move-object v1, v0

    .line 173
    invoke-direct/range {v1 .. v6}, Lha/za;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/content/pm/PackageInfo;IZ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 177
    .line 178
    .line 179
    :goto_3
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
