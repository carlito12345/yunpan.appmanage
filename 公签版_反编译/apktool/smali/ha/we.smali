.class public final synthetic Lha/we;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ye;


# direct methods
.method public synthetic constructor <init>(Lha/ye;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/we;->a:I

    iput-object p1, p0, Lha/we;->b:Lha/ye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lha/we;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/we;->b:Lha/ye;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x13

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_4

    .line 21
    .line 22
    iget-object p1, v0, Lha/ye;->j:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0x15

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
    if-nez p2, :cond_4

    .line 37
    .line 38
    const/16 p2, 0x14d

    .line 39
    .line 40
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, 0x16

    .line 45
    .line 46
    if-ne p2, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_4

    .line 53
    .line 54
    const/16 p2, 0x14c

    .line 55
    .line 56
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/16 v0, 0x14

    .line 61
    .line 62
    if-ne p2, v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    const/16 p2, 0x14b

    .line 71
    .line 72
    invoke-static {p2, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v2, 0x0

    .line 77
    :cond_4
    :goto_0
    return v2

    .line 78
    :pswitch_0
    iget-object p1, p0, Lha/we;->b:Lha/ye;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-nez p3, :cond_6

    .line 88
    .line 89
    const/16 p3, 0x14

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    if-ne p2, p3, :cond_5

    .line 93
    .line 94
    iget-object p1, p1, Lha/ye;->h:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    const/16 p3, 0x13

    .line 101
    .line 102
    if-ne p2, p3, :cond_6

    .line 103
    .line 104
    iget-object p1, p1, Lha/ye;->i:Landroid/widget/EditText;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    const/4 v0, 0x0

    .line 111
    :goto_1
    return v0

    .line 112
    :pswitch_1
    iget-object p1, p0, Lha/we;->b:Lha/ye;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-nez p3, :cond_7

    .line 122
    .line 123
    const/16 p3, 0x14

    .line 124
    .line 125
    if-ne p2, p3, :cond_7

    .line 126
    .line 127
    iget-object p1, p1, Lha/ye;->j:Landroid/widget/EditText;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 130
    .line 131
    .line 132
    const/4 p1, 0x1

    .line 133
    goto :goto_2

    .line 134
    :cond_7
    const/4 p1, 0x0

    .line 135
    :goto_2
    return p1

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
