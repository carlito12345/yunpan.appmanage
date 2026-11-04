.class public final synthetic Lua/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/e0;->a:Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    iput-object p2, p0, Lua/e0;->b:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lua/e0;->c:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/e0;->a:Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const v2, 0x7f0b0203

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iput v3, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 19
    .line 20
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->C:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string v1, "\u4eca\u65e5\u6d41\u91cf\u4f7f\u7528\u60c5\u51b5"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const v2, 0x7f0b0205

    .line 33
    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 39
    .line 40
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->C:Landroid/widget/TextView;

    .line 41
    .line 42
    const-string v1, "\u672c\u5468\u6d41\u91cf\u4f7f\u7528\u60c5\u51b5"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const v2, 0x7f0b0204

    .line 53
    .line 54
    .line 55
    if-ne v1, v2, :cond_2

    .line 56
    .line 57
    const/4 p1, 0x3

    .line 58
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 59
    .line 60
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->C:Landroid/widget/TextView;

    .line 61
    .line 62
    const-string v1, "\u672c\u6708\u6d41\u91cf\u4f7f\u7528\u60c5\u51b5"

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const v2, 0x7f0b020b

    .line 73
    .line 74
    .line 75
    if-ne v1, v2, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x4

    .line 78
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 79
    .line 80
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->C:Landroid/widget/TextView;

    .line 81
    .line 82
    const-string v1, "30\u5929\u6d41\u91cf\u4f7f\u7528\u60c5\u51b5"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const v1, 0x7f0b020c

    .line 93
    .line 94
    .line 95
    if-ne p1, v1, :cond_4

    .line 96
    .line 97
    const/4 p1, 0x5

    .line 98
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 99
    .line 100
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->C:Landroid/widget/TextView;

    .line 101
    .line 102
    const-string v1, "\u6628\u65e5\u6d41\u91cf\u4f7f\u7528\u60c5\u51b5"

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_0
    iget p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 108
    .line 109
    iget-object v1, p0, Lua/e0;->b:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    iget-object v2, p0, Lua/e0;->c:Landroid/widget/LinearLayout;

    .line 112
    .line 113
    if-nez p1, :cond_5

    .line 114
    .line 115
    const/16 p1, 0x8

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const/4 p1, 0x0

    .line 125
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :goto_1
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 132
    .line 133
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->H:I

    .line 134
    .line 135
    iput v1, p1, Lx9/z;->i:I

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->z()V

    .line 138
    .line 139
    .line 140
    return v3
.end method
