.class public final Lx9/x3;
.super Lc6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e016d

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 4
    .line 5
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p2, "pm"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p2, ""

    .line 17
    .line 18
    :goto_0
    const v0, 0x7f0b04c8

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0b0523

    .line 25
    .line 26
    .line 27
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const p2, 0x7f0b0406

    .line 33
    .line 34
    .line 35
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    const p2, 0x7f0b0418

    .line 41
    .line 42
    .line 43
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    const-string p2, "\u62d2\u7edd"

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p2, "\u5141\u8bb8"

    .line 56
    .line 57
    :goto_1
    const v0, 0x7f0b0334

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    const p2, 0x7f0b057b

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lh6/a;->a(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/TextView;

    .line 71
    .line 72
    iget-boolean p2, p3, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 73
    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    const-string p2, "\u5df2\u5141\u8bb8"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    sget-object p2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const p3, 0x7f060041

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    sget-object p2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const p3, 0x7f06004c

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    :goto_2
    return-void
.end method
