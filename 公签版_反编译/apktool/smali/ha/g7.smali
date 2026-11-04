.class public final synthetic Lha/g7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/f7;


# direct methods
.method public synthetic constructor <init>(Lha/f7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/g7;->a:I

    iput-object p1, p0, Lha/g7;->b:Lha/f7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lha/g7;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/g7;->b:Lha/f7;

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
    if-nez p3, :cond_1

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
    iget-object p2, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget-object p3, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-static {p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-ne p3, p2, :cond_1

    .line 43
    .line 44
    iget-object p3, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-ne p3, p2, :cond_1

    .line 55
    .line 56
    iget-object p1, p1, Lha/f7;->i:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/16 p3, 0x13

    .line 63
    .line 64
    if-ne p2, p3, :cond_1

    .line 65
    .line 66
    iget-object p2, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_1

    .line 77
    .line 78
    iget-object p2, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_1

    .line 89
    .line 90
    iget-object p1, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 98
    :pswitch_0
    iget-object p1, p0, Lha/g7;->b:Lha/f7;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-nez p3, :cond_2

    .line 108
    .line 109
    const/16 p3, 0x14

    .line 110
    .line 111
    if-ne p2, p3, :cond_2

    .line 112
    .line 113
    iget-object p2, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    iget-object p3, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 124
    .line 125
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-static {p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    if-ne p3, p2, :cond_2

    .line 134
    .line 135
    iget-object p3, p1, Lha/f7;->h:Landroid/widget/EditText;

    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-static {p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    if-ne p3, p2, :cond_2

    .line 146
    .line 147
    iget-object p1, p1, Lha/f7;->j:Landroid/widget/TextView;

    .line 148
    .line 149
    check-cast p1, Landroid/widget/EditText;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 152
    .line 153
    .line 154
    const/4 p1, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    const/4 p1, 0x0

    .line 157
    :goto_1
    return p1

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
