.class public final synthetic Lha/z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lha/ba;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/ba;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/z9;->a:Lha/ba;

    iput-object p2, p0, Lha/z9;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lha/z9;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lha/z9;->a:Lha/ba;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x14

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p1, Lha/ba;->i:Lx9/t0;

    .line 21
    .line 22
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-lez p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p1, Lha/ba;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    iget-object p2, p1, Lha/ba;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 34
    .line 35
    invoke-virtual {p2, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lha/ba;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v0, 0x15

    .line 46
    .line 47
    if-ne p2, v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    iget-object p2, p1, Lha/ba;->m:Landroid/widget/EditText;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_3

    .line 66
    .line 67
    iget-object p2, p1, Lha/ba;->m:Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    iget-object p2, p0, Lha/z9;->b:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lha/ba;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/16 v0, 0x16

    .line 91
    .line 92
    if-ne p2, v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    iget-object p2, p1, Lha/ba;->m:Landroid/widget/EditText;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iget-object p3, p1, Lha/ba;->m:Landroid/widget/EditText;

    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-ne p2, p3, :cond_3

    .line 121
    .line 122
    iget-object p2, p1, Lha/ba;->m:Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    iget-object p1, p1, Lha/ba;->m:Landroid/widget/EditText;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-ne p2, p1, :cond_3

    .line 143
    .line 144
    iget-object p1, p0, Lha/z9;->c:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    :goto_1
    return v2
.end method
