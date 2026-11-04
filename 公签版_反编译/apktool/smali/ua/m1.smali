.class public final synthetic Lua/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/p2;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/m1;->a:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lua/m1;->a:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->K:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->F:Landroid/media/projection/MediaProjectionManager;

    .line 6
    .line 7
    invoke-static {p2}, Ltb/b;->e(Landroid/media/projection/MediaProjectionManager;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget v0, p1, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->M:I

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 6

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    sget p2, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->N:I

    .line 4
    .line 5
    iget-object v1, p0, Lua/m1;->a:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/16 p2, 0xf

    .line 11
    .line 12
    const-string v0, "\u6b64\u529f\u80fd\u4ec5\u652f\u6301\u516c\u7b7e\u7cfb\u7edf"

    .line 13
    .line 14
    if-ne p3, p2, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 17
    .line 18
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 19
    .line 20
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    const/16 p2, 0x10

    .line 37
    .line 38
    const-class v2, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;

    .line 39
    .line 40
    if-ne p3, p2, :cond_2

    .line 41
    .line 42
    new-instance p1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string p2, "isNoPermissions"

    .line 48
    .line 49
    const/4 p3, 0x1

    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Landroid/content/Intent;

    .line 54
    .line 55
    iget-object p3, v1, Lda/g;->A:Lda/g;

    .line 56
    .line 57
    invoke-direct {p2, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_2
    const/16 p2, 0x11

    .line 69
    .line 70
    const-string v3, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 71
    .line 72
    if-ne p3, p2, :cond_4

    .line 73
    .line 74
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, La2/w0;->M()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_3
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityPresentation;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    const/16 p2, 0x12

    .line 97
    .line 98
    if-ne p3, p2, :cond_6

    .line 99
    .line 100
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {}, La2/w0;->M()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v1, v2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    const/16 p2, 0x13

    .line 120
    .line 121
    if-ne p3, p2, :cond_8

    .line 122
    .line 123
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {}, La2/w0;->M()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_7

    .line 133
    .line 134
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityPresentation2;

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    const/16 p2, 0xc

    .line 145
    .line 146
    if-ge p3, p2, :cond_b

    .line 147
    .line 148
    const/16 p2, 0x8

    .line 149
    .line 150
    if-eq p3, p2, :cond_9

    .line 151
    .line 152
    const/16 p2, 0x9

    .line 153
    .line 154
    if-eq p3, p2, :cond_9

    .line 155
    .line 156
    if-ne p3, p1, :cond_a

    .line 157
    .line 158
    :cond_9
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 159
    .line 160
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 161
    .line 162
    iget-boolean p2, p2, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 163
    .line 164
    if-nez p2, :cond_a

    .line 165
    .line 166
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_a
    new-instance p2, Lha/fa;

    .line 171
    .line 172
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 173
    .line 174
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->G:Ljava/util/ArrayList;

    .line 175
    .line 176
    new-instance v5, Lha/o;

    .line 177
    .line 178
    invoke-direct {v5, p3, p1, v1}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    move-object v0, p2

    .line 183
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_b
    const-string p1, "\u6b64\u529f\u80fd\u6682\u672a\u5f00\u653e"

    .line 191
    .line 192
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    :goto_0
    return-void
.end method
