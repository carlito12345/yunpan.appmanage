.class public final synthetic Lha/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/m4;


# direct methods
.method public synthetic constructor <init>(Lha/m4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/k4;->a:I

    iput-object p1, p0, Lha/k4;->b:Lha/m4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget p1, p0, Lha/k4;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/k4;->b:Lha/m4;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    iget-object p1, p1, Lha/m4;->i:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0x13

    .line 29
    .line 30
    if-ne p2, v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-ne p2, v1, :cond_2

    .line 37
    .line 38
    iget-object p1, p1, Lha/m4;->j:Landroid/widget/EditText;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :cond_2
    :goto_0
    return v1

    .line 46
    :pswitch_0
    iget-object p1, p0, Lha/k4;->b:Lha/m4;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x14

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    if-ne p2, v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_5

    .line 61
    .line 62
    iget-object p1, p1, Lha/m4;->i:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/16 v0, 0x13

    .line 69
    .line 70
    if-ne p2, v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-ne p2, v1, :cond_5

    .line 77
    .line 78
    iget-object p1, p1, Lha/m4;->k:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v1, 0x0

    .line 85
    :cond_5
    :goto_1
    return v1

    .line 86
    :pswitch_1
    iget-object p1, p0, Lha/k4;->b:Lha/m4;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/16 v0, 0x14

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    if-ne p2, v0, :cond_6

    .line 95
    .line 96
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-nez p2, :cond_8

    .line 101
    .line 102
    iget-object p1, p1, Lha/m4;->j:Landroid/widget/EditText;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    const/16 v0, 0x13

    .line 109
    .line 110
    if-ne p2, v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-ne p2, v1, :cond_8

    .line 117
    .line 118
    iget-object p1, p1, Lha/m4;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    const/4 v1, 0x0

    .line 125
    :cond_8
    :goto_2
    return v1

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
