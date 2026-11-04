.class public final Lha/o5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lma/b;

.field public final h:Ljava/lang/String;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lda/g;Ljava/lang/String;Lma/b;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00a0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lha/o5;->g:Lma/b;

    .line 8
    .line 9
    iput-object p3, p0, Lha/o5;->h:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0428

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/EditText;

    .line 12
    .line 13
    iput-object p1, p0, Lha/o5;->i:Landroid/widget/EditText;

    .line 14
    .line 15
    iget-object v0, p0, Lha/o5;->h:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lha/o5;->i:Landroid/widget/EditText;

    .line 21
    .line 22
    new-instance v1, Lha/c0;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, p0, v2}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0b058f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v1, "\u4e0b\u8f7d\u6587\u4ef6"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0b0378

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object p1, p0, Lha/o5;->j:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    new-instance v1, Lha/n5;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-direct {v1, p0, v2}, Lha/n5;-><init>(Lha/o5;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const p1, 0x7f0b0382

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    iput-object p1, p0, Lha/o5;->k:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-static {v0}, Lif/a;->X(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_0

    .line 81
    .line 82
    iget-object p1, p0, Lha/o5;->k:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    const/16 v0, 0x8

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lha/o5;->j:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lha/o5;->k:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lha/o5;->k:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    new-instance v0, Lha/n5;

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-direct {v0, p0, v1}, Lha/n5;-><init>(Lha/o5;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method
