.class public final synthetic Lua/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityApps;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityApps;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/i0;->a:Lcom/yunpan/appmanage/ui/ActivityApps;

    iput-object p2, p0, Lua/i0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 4
    .line 5
    iget-object v2, p0, Lua/i0;->a:Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const v4, 0x7f0b01fd

    .line 15
    .line 16
    .line 17
    if-ne v3, v4, :cond_1

    .line 18
    .line 19
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 20
    .line 21
    invoke-virtual {p1}, Lx9/c0;->F()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-virtual {v1, v3}, Lx9/c0;->G(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v2, p1}, Lcom/yunpan/appmanage/ui/ActivityApps;->x(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const v4, 0x7f0b01fe

    .line 54
    .line 55
    .line 56
    if-ne v3, v4, :cond_2

    .line 57
    .line 58
    new-instance p1, Ltb/v;

    .line 59
    .line 60
    const/16 v3, 0x1b

    .line 61
    .line 62
    invoke-direct {p1, v3}, Ltb/v;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lmc/c;

    .line 66
    .line 67
    invoke-direct {v3, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 71
    .line 72
    invoke-virtual {v3, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v3, Lua/j0;

    .line 85
    .line 86
    invoke-direct {v3, v2, v1}, Lua/j0;-><init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Lec/b;->b(Lec/e;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const v1, 0x7f0b01ff

    .line 98
    .line 99
    .line 100
    if-ne p1, v1, :cond_3

    .line 101
    .line 102
    new-instance p1, Landroid/widget/PopupMenu;

    .line 103
    .line 104
    iget-object v1, v2, Lda/g;->A:Lda/g;

    .line 105
    .line 106
    iget-object v3, p0, Lua/i0;->b:Landroid/view/View;

    .line 107
    .line 108
    invoke-direct {p1, v1, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const v3, 0x7f100001

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v1, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lha/y2;

    .line 126
    .line 127
    invoke-direct {v1, v2, v0}, Lha/y2;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_0
    return v0
.end method
