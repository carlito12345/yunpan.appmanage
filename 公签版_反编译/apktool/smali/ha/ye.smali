.class public final Lha/ye;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/xe;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/TextView;

.field public final l:Ljava/lang/String;

.field public final m:Lx9/n5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/xe;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00d5

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lha/ye;->g:Lha/xe;

    .line 8
    .line 9
    iput-object p3, p0, Lha/ye;->m:Lx9/n5;

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    iput-object p1, p0, Lha/ye;->l:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b05a7

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/ye;->k:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object p1, p0, Lha/ye;->l:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lha/ye;->k:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    iget-object p1, p0, Lha/ye;->k:Landroid/widget/TextView;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    const p1, 0x7f0b0453

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/EditText;

    .line 47
    .line 48
    iput-object p1, p0, Lha/ye;->i:Landroid/widget/EditText;

    .line 49
    .line 50
    const p1, 0x7f0b0445

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/EditText;

    .line 58
    .line 59
    iput-object p1, p0, Lha/ye;->j:Landroid/widget/EditText;

    .line 60
    .line 61
    const p1, 0x7f0b0390

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p1, p0, Lha/ye;->h:Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object p1, p0, Lha/ye;->i:Landroid/widget/EditText;

    .line 73
    .line 74
    new-instance v0, Lha/we;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {v0, p0, v1}, Lha/we;-><init>(Lha/ye;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lha/ye;->j:Landroid/widget/EditText;

    .line 84
    .line 85
    new-instance v0, Lha/we;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-direct {v0, p0, v1}, Lha/we;-><init>(Lha/ye;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lha/ye;->i:Landroid/widget/EditText;

    .line 95
    .line 96
    iget-object v0, p0, Lha/ye;->m:Lx9/n5;

    .line 97
    .line 98
    iget-object v1, v0, Lx9/n5;->e:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lha/ye;->j:Landroid/widget/EditText;

    .line 104
    .line 105
    iget-object v0, v0, Lx9/n5;->f:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lha/ye;->h:Landroid/widget/TextView;

    .line 111
    .line 112
    new-instance v0, Lha/g9;

    .line 113
    .line 114
    const/16 v1, 0x13

    .line 115
    .line 116
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lha/ye;->h:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v0, Lha/we;

    .line 125
    .line 126
    const/4 v1, 0x2

    .line 127
    invoke-direct {v0, p0, v1}, Lha/we;-><init>(Lha/ye;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
