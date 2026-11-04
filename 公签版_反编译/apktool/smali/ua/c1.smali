.class public final synthetic Lua/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/c1;->a:I

    iput-object p1, p0, Lua/c1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/16 v0, 0x13

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lua/c1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 6
    .line 7
    iget v3, p0, Lua/c1;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

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
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    if-ne p2, v0, :cond_1

    .line 24
    .line 25
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 32
    .line 33
    iget p2, p1, Lmb/b;->b:I

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    iget p1, p1, Lmb/b;->c:I

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return v1

    .line 61
    :pswitch_0
    sget v3, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-nez p3, :cond_3

    .line 71
    .line 72
    if-ne p2, v0, :cond_3

    .line 73
    .line 74
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_2

    .line 89
    .line 90
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 p1, 0x0

    .line 103
    :goto_1
    return p1

    .line 104
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-nez p3, :cond_5

    .line 114
    .line 115
    const/16 p3, 0x14

    .line 116
    .line 117
    if-eq p2, p3, :cond_4

    .line 118
    .line 119
    const/16 p3, 0x42

    .line 120
    .line 121
    if-ne p2, p3, :cond_5

    .line 122
    .line 123
    :cond_4
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->h0:Landroid/widget/EditText;

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    const/4 p1, 0x0

    .line 130
    :goto_2
    return p1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
