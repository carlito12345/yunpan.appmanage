.class public final Lha/se;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lx9/n5;

.field public final h:Lha/re;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/re;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0102

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lha/se;->h:Lha/re;

    .line 8
    .line 9
    iput-object p3, p0, Lha/se;->g:Lx9/n5;

    .line 10
    .line 11
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
    const p1, 0x7f0b05ba

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
    const-string v0, "WebDAV"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0b0437

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/EditText;

    .line 26
    .line 27
    iput-object p1, p0, Lha/se;->i:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    const p1, 0x7f0b0453

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/EditText;

    .line 40
    .line 41
    iput-object p1, p0, Lha/se;->j:Landroid/widget/EditText;

    .line 42
    .line 43
    const p1, 0x7f0b0445

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/EditText;

    .line 51
    .line 52
    iput-object p1, p0, Lha/se;->k:Landroid/widget/EditText;

    .line 53
    .line 54
    const p1, 0x7f0b0390

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object p1, p0, Lha/se;->l:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object p1, p0, Lha/se;->i:Landroid/widget/EditText;

    .line 66
    .line 67
    iget-object v0, p0, Lha/se;->g:Lx9/n5;

    .line 68
    .line 69
    iget-object v1, v0, Lx9/n5;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lha/se;->j:Landroid/widget/EditText;

    .line 75
    .line 76
    iget-object v1, v0, Lx9/n5;->e:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lha/se;->k:Landroid/widget/EditText;

    .line 82
    .line 83
    iget-object v0, v0, Lx9/n5;->f:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lha/se;->l:Landroid/widget/TextView;

    .line 89
    .line 90
    new-instance v0, Lha/g9;

    .line 91
    .line 92
    const/16 v1, 0x11

    .line 93
    .line 94
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lha/se;->l:Landroid/widget/TextView;

    .line 101
    .line 102
    new-instance v0, Lha/qe;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-direct {v0, p0, v1}, Lha/qe;-><init>(Lha/se;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lha/se;->i:Landroid/widget/EditText;

    .line 112
    .line 113
    new-instance v0, Lha/qe;

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    invoke-direct {v0, p0, v1}, Lha/qe;-><init>(Lha/se;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lha/se;->j:Landroid/widget/EditText;

    .line 123
    .line 124
    new-instance v0, Lha/qe;

    .line 125
    .line 126
    const/4 v1, 0x2

    .line 127
    invoke-direct {v0, p0, v1}, Lha/qe;-><init>(Lha/se;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lha/se;->k:Landroid/widget/EditText;

    .line 134
    .line 135
    new-instance v0, Lha/qe;

    .line 136
    .line 137
    const/4 v1, 0x3

    .line 138
    invoke-direct {v0, p0, v1}, Lha/qe;-><init>(Lha/se;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
