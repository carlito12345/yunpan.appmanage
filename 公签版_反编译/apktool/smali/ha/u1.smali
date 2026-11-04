.class public final synthetic Lha/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lea/g;
.implements Lha/p2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/w1;


# direct methods
.method public synthetic constructor <init>(Lha/w1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/u1;->a:I

    iput-object p1, p0, Lha/u1;->b:Lha/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lha/u1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/u1;->b:Lha/w1;

    .line 7
    .line 8
    iget-object v1, v0, Lha/w1;->q:Lx9/w0;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 16
    .line 17
    iput-object p1, v0, Lha/w1;->A:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "\u5bfc\u822a\u5230XXX\u3001\u5bfc\u822a\u5230\u5bb6\u3001\u5bfc\u822a\u5230\u516c\u53f8 (\u5982\u679c\u60a8\u8bed\u97f3\u672c\u8eab\u5c31\u652f\u6301\uff0c\u90a3\u4e48\u4e0d\u8981\u52fe\u9009)"

    .line 26
    .line 27
    iput-object p1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Lha/w1;->A:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "XXX (\u5982\u679c\u60a8\u8bed\u97f3\u672c\u8eab\u5c31\u652f\u6301\uff0c\u90a3\u4e48\u4e0d\u8981\u52fe\u9009)"

    .line 38
    .line 39
    invoke-static {v3, v4, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    iget-object p1, v0, Lha/w1;->q:Lx9/w0;

    .line 46
    .line 47
    invoke-virtual {p1, v2, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lha/u1;->b:Lha/w1;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string v1, ":"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, -0x1

    .line 63
    if-ne v1, v2, :cond_1

    .line 64
    .line 65
    const-string p1, "\u6b64\u6761\u65e5\u5fd7\u4e0d\u7b26\u5408"

    .line 66
    .line 67
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v2, v0, Lha/w1;->k:Landroid/widget/EditText;

    .line 72
    .line 73
    add-int/lit8 v3, v1, 0x1

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, v0, Lha/w1;->v:Ljava/lang/String;

    .line 96
    .line 97
    :goto_1
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/u1;->b:Lha/w1;

    .line 2
    .line 3
    iput-object p1, v0, Lha/w1;->y:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, v0, Lha/w1;->z:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, v0, Lha/w1;->i:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lha/w1;->y:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "\n"

    .line 26
    .line 27
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lha/w1;->z:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 p2, 0x15

    .line 45
    .line 46
    if-lt p1, p2, :cond_1

    .line 47
    .line 48
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, v0, Lha/w1;->z:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, p2}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p1, 0x0

    .line 62
    :goto_0
    if-nez p1, :cond_2

    .line 63
    .line 64
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p2, v0, Lha/w1;->z:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :cond_2
    const/4 p2, 0x0

    .line 77
    if-eqz p1, :cond_a

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const-string v1, "/com.autonavi.auto."

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    iget-object v1, v0, Lha/w1;->z:Ljava/lang/String;

    .line 101
    .line 102
    const-string v2, "com.autonavi.amapauto"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    const-string v1, "/com.autonavi.map"

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_8

    .line 118
    .line 119
    iget-object v1, v0, Lha/w1;->z:Ljava/lang/String;

    .line 120
    .line 121
    const-string v2, "com.autonavi.minimap"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const-string v1, "/com.baidu.naviauto."

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_7

    .line 137
    .line 138
    iget-object v1, v0, Lha/w1;->z:Ljava/lang/String;

    .line 139
    .line 140
    const-string v2, "com.baidu.naviauto"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    const-string v1, "/com.tencent.wecarnavi."

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_6

    .line 156
    .line 157
    iget-object p1, v0, Lha/w1;->z:Ljava/lang/String;

    .line 158
    .line 159
    const-string v1, "com.tencent.wecarnavi"

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_a

    .line 166
    .line 167
    :cond_6
    const/4 p1, 0x3

    .line 168
    iput p1, v0, Lha/w1;->x:I

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_7
    :goto_1
    const/4 p1, 0x2

    .line 172
    iput p1, v0, Lha/w1;->x:I

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_8
    :goto_2
    const/4 p1, 0x1

    .line 176
    iput p1, v0, Lha/w1;->x:I

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_9
    :goto_3
    iput p2, v0, Lha/w1;->x:I

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_a
    const-string p1, "\u65e0\u6cd5\u8bc6\u522b\u6b64\u5730\u56feapp\uff0c\u5c06\u9ed8\u8ba4\u9ad8\u5fb7\u5730\u56fe(\u8f66\u673a\u7248)"

    .line 183
    .line 184
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iput p2, v0, Lha/w1;->x:I

    .line 188
    .line 189
    :goto_4
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget p1, p0, Lha/u1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/u1;->b:Lha/w1;

    .line 7
    .line 8
    iget p2, p1, Lha/w1;->w:I

    .line 9
    .line 10
    if-ne p2, p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput p3, p1, Lha/w1;->w:I

    .line 14
    .line 15
    iget-object p2, p1, Lha/w1;->r:Lx9/i4;

    .line 16
    .line 17
    invoke-virtual {p2, p3}, Lx9/i4;->G(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 21
    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Lha/w1;->h:Landroid/widget/TextView;

    .line 25
    .line 26
    const p3, 0x7f13002b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    if-ne p3, v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p1, Lha/w1;->h:Landroid/widget/TextView;

    .line 41
    .line 42
    const p3, 0x7f13002c

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const/4 p1, 0x3

    .line 54
    iget-object p2, p0, Lha/u1;->b:Lha/w1;

    .line 55
    .line 56
    if-ne p3, p1, :cond_3

    .line 57
    .line 58
    new-instance p1, Lha/c2;

    .line 59
    .line 60
    iget-object v0, p2, Lha/w1;->B:Lz7/o;

    .line 61
    .line 62
    new-instance v1, Lha/o;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-direct {v1, p3, v2, p2}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 69
    .line 70
    iget-object p2, p2, Lha/a4;->b:Landroid/content/Context;

    .line 71
    .line 72
    invoke-direct {p1, p3, p2, v0, v1}, Lha/c2;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/o;Lha/o;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object p1, p2, Lha/w1;->q:Lx9/w0;

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 86
    .line 87
    iget-boolean v0, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 88
    .line 89
    xor-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    iput-boolean v0, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 92
    .line 93
    iget-object p1, p2, Lha/w1;->q:Lx9/w0;

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :pswitch_1
    iget-object p1, p0, Lha/u1;->b:Lha/w1;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance p2, Lz7/m;

    .line 105
    .line 106
    invoke-direct {p2}, Lz7/m;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p1, Lha/w1;->s:Lx9/s2;

    .line 110
    .line 111
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lz7/p;

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Lz7/m;->b(Lz7/p;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lz7/s;

    .line 122
    .line 123
    new-instance v0, Lha/z1;

    .line 124
    .line 125
    new-instance v1, Lha/v1;

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-direct {v1, p1, p2, p3, v2}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    iget-object p3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 132
    .line 133
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 134
    .line 135
    invoke-direct {v0, p3, p1, p2, v1}, Lha/z1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/b;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
