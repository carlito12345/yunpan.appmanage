.class public final synthetic Lua/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAutomation;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/q0;->a:I

    iput-object p1, p0, Lua/q0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lua/q0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget v1, p0, Lua/q0;->a:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v4, p0, Lua/q0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 10
    .line 11
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "\u6b63\u5728\u542f\u52a8\u4e2d"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v1, "\u670d\u52a1\u8fd0\u884c\u4e2d"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    new-instance p1, Lha/z6;

    .line 39
    .line 40
    iget-object v0, v4, Lda/g;->A:Lda/g;

    .line 41
    .line 42
    new-instance v9, Lua/r0;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v9, v4, v1}, Lua/r0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 46
    .line 47
    .line 48
    const-string v7, "\u786e\u5b9a"

    .line 49
    .line 50
    const-string v8, "\u53d6\u6d88"

    .line 51
    .line 52
    const-string v5, "\u60a8\u786e\u5b9a\u8981\u505c\u6b62\u81ea\u52a8\u5316\u670d\u52a1\u5417\uff1f"

    .line 53
    .line 54
    const-string v6, ""

    .line 55
    .line 56
    move-object v2, p1

    .line 57
    move-object v3, v4

    .line 58
    move-object v4, v0

    .line 59
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 67
    .line 68
    iget-object v1, p1, Lwa/u;->N:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-object p1, p1, Lwa/u;->O:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    :cond_2
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 85
    .line 86
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 89
    .line 90
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {p1, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    new-instance p1, Lha/z6;

    .line 101
    .line 102
    new-instance v9, Lua/r0;

    .line 103
    .line 104
    invoke-direct {v9, v4, v0}, Lua/r0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 105
    .line 106
    .line 107
    const-string v7, "\u597d\u7684"

    .line 108
    .line 109
    const-string v8, ""

    .line 110
    .line 111
    const-string v5, "\u9700\u8981\u6388\u6743\u60ac\u6d6e\u7a97\u6743\u9650\u3010\u5728\u4e0a\u5c42\u663e\u793a\u3011\u65b9\u53ef\u4f7f\u7528\n\n\u5982\u679c\u4f60\u5df2\u7ecf\u6388\u6743\u4e86\uff0c\u8bf7\u53d6\u6d88\u6388\u6743\uff0c\u91cd\u65b0\u6388\u6743\u5373\u53ef"

    .line 112
    .line 113
    const-string v6, ""

    .line 114
    .line 115
    move-object v2, p1

    .line 116
    move-object v3, v4

    .line 117
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v4, v0}, Lcom/yunpan/appmanage/ui/ActivityAutomation;->x(Z)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void

    .line 128
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->L:I

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    new-instance v0, Lha/v3;

    .line 134
    .line 135
    invoke-direct {v0, p1, p1}, Lha/v3;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->L:I

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
