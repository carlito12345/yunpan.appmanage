.class public final synthetic Lua/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;
.implements Lha/ea;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityPermissions;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/m5;->a:Lcom/yunpan/appmanage/ui/ActivityPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->L:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/m5;->a:Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    const-string p1, "\u7cfb\u7edf\u4f4e\u4e8e8.0\uff0c\u65e0\u9700\u7ba1\u7406\u6b64\u6743\u9650"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x3

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string p1, "\u6b64\u529f\u80fd\u65e0\u6cd5\u7ba1\u7406\u6b64\u6743\u9650"

    .line 35
    .line 36
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 41
    .line 42
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->F:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityPermissions;->u()V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 1

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->L:I

    iget-object v0, p0, Lua/m5;->a:Lcom/yunpan/appmanage/ui/ActivityPermissions;

    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/ui/ActivityPermissions;->x(Lmc/b;)V

    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lua/m5;->a:Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 2
    .line 3
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 10
    .line 11
    iget p2, v1, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-ne p2, v0, :cond_2

    .line 15
    .line 16
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 33
    .line 34
    iget-boolean p2, p2, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    iget-object p2, v1, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    invoke-static {p2}, Lq4/a;->E(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    :cond_0
    new-instance p1, Lha/z6;

    .line 47
    .line 48
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 49
    .line 50
    new-instance v7, Ls5/c;

    .line 51
    .line 52
    const/16 p2, 0xc

    .line 53
    .line 54
    invoke-direct {v7, p2}, Ls5/c;-><init>(I)V

    .line 55
    .line 56
    .line 57
    const-string v5, "\u597d\u7684"

    .line 58
    .line 59
    const-string v6, ""

    .line 60
    .line 61
    const-string v3, "\u81ea\u52a8\u5316\u4efb\u52a1\u3001\u5f00\u673a\u7ba1\u7406\u3001\u6309\u952e\u6620\u5c04\u3001\u65e0\u969c\u788d\u6301\u4e45\u7b49\u7b49\u529f\u80fd\uff0c\u5747\u9700\u6b64\u6743\u9650"

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    move-object v0, p1

    .line 66
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    new-instance p1, Lha/z6;

    .line 78
    .line 79
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 80
    .line 81
    new-instance v7, Ld3/g;

    .line 82
    .line 83
    const/16 p2, 0x12

    .line 84
    .line 85
    invoke-direct {v7, p3, p2, v1}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-string v5, "\u53d6\u6d88"

    .line 89
    .line 90
    const-string v6, "\u786e\u5b9a"

    .line 91
    .line 92
    const-string v3, "\u81ea\u52a8\u5316\u4efb\u52a1\u3001\u5f00\u673a\u7ba1\u7406\u3001\u6309\u952e\u6620\u5c04\u3001\u65e0\u969c\u788d\u6301\u4e45\u7b49\u7b49\u529f\u80fd\uff0c\u5747\u9700\u6b64\u6743\u9650"

    .line 93
    .line 94
    const-string v4, "\u60a8\u786e\u5b9a\u8981\u53d6\u6d88\u6b64\u6743\u9650\u5417\uff1f"

    .line 95
    .line 96
    move-object v0, p1

    .line 97
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v1, p3}, Lcom/yunpan/appmanage/ui/ActivityPermissions;->y(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method
