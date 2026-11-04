.class public final synthetic Lua/j6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityShell;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/j6;->a:I

    iput-object p1, p0, Lua/j6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/16 p1, 0x14

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lua/j6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 6
    .line 7
    iget v3, p0, Lua/j6;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v3, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-nez p3, :cond_4

    .line 22
    .line 23
    const/16 p3, 0xfa

    .line 24
    .line 25
    const/16 v3, 0x13

    .line 26
    .line 27
    const/16 v4, -0x32

    .line 28
    .line 29
    if-ne p2, v3, :cond_1

    .line 30
    .line 31
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->K:Landroidx/core/widget/NestedScrollView;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->K:Landroidx/core/widget/NestedScrollView;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v4, p3, v1}, Landroidx/core/widget/NestedScrollView;->v(IIIZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 v3, 0x32

    .line 52
    .line 53
    if-ne p2, p1, :cond_2

    .line 54
    .line 55
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->K:Landroidx/core/widget/NestedScrollView;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v3, p3, v1}, Landroidx/core/widget/NestedScrollView;->v(IIIZ)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/16 p1, 0x15

    .line 62
    .line 63
    if-ne p2, p1, :cond_3

    .line 64
    .line 65
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->L:Landroid/widget/HorizontalScrollView;

    .line 66
    .line 67
    invoke-virtual {p1, v4, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/16 p1, 0x16

    .line 72
    .line 73
    if-ne p2, p1, :cond_4

    .line 74
    .line 75
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->L:Landroid/widget/HorizontalScrollView;

    .line 76
    .line 77
    invoke-virtual {p1, v3, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 83
    :pswitch_0
    sget v3, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-nez p3, :cond_5

    .line 93
    .line 94
    if-ne p2, p1, :cond_5

    .line 95
    .line 96
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    const/4 v0, 0x0

    .line 103
    :goto_1
    return v0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
