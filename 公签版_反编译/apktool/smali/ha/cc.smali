.class public final synthetic Lha/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/fc;


# direct methods
.method public synthetic constructor <init>(Lha/fc;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/cc;->a:I

    iput-object p1, p0, Lha/cc;->b:Lha/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lha/cc;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/cc;->b:Lha/fc;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    const/16 p3, 0x14

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p2, p3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p3, 0x13

    .line 24
    .line 25
    if-ne p2, p3, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Lha/fc;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 p3, 0x16

    .line 34
    .line 35
    if-ne p2, p3, :cond_2

    .line 36
    .line 37
    iget-object p2, p1, Lha/fc;->h:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget-object p3, p1, Lha/fc;->h:Landroid/widget/EditText;

    .line 48
    .line 49
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-ne p2, p3, :cond_2

    .line 58
    .line 59
    iget-object p2, p1, Lha/fc;->h:Landroid/widget/EditText;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iget-object p3, p1, Lha/fc;->h:Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-ne p2, p3, :cond_2

    .line 80
    .line 81
    iget-object p1, p1, Lha/fc;->j:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 84
    .line 85
    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 88
    :pswitch_0
    iget-object p1, p0, Lha/cc;->b:Lha/fc;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-nez p3, :cond_4

    .line 98
    .line 99
    const/16 p3, 0x14

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    if-ne p2, p3, :cond_3

    .line 103
    .line 104
    iget-object p1, p1, Lha/fc;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const/16 p3, 0x13

    .line 111
    .line 112
    if-ne p2, p3, :cond_4

    .line 113
    .line 114
    iget-object p1, p1, Lha/fc;->g:Landroid/widget/EditText;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/4 v0, 0x0

    .line 121
    :goto_1
    return v0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
