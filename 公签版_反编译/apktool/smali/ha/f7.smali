.class public final Lha/f7;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lha/f7;->g:I

    const v0, 0x7f0e00b6

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lda/g;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lha/f7;->g:I

    const v0, 0x7f0e00b7

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/f7;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0b05ba

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    const p1, 0x7f0b040c

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
    iput-object p1, p0, Lha/f7;->h:Landroid/widget/EditText;

    .line 28
    .line 29
    const p1, 0x7f0b040d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/EditText;

    .line 37
    .line 38
    iput-object p1, p0, Lha/f7;->j:Landroid/widget/TextView;

    .line 39
    .line 40
    const p1, 0x7f0b03f3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lha/f7;->i:Landroid/widget/TextView;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 52
    .line 53
    const/16 v1, 0x16

    .line 54
    .line 55
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lha/f7;->h:Landroid/widget/EditText;

    .line 62
    .line 63
    new-instance v0, Lha/g7;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, p0, v1}, Lha/g7;-><init>(Lha/f7;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lha/f7;->j:Landroid/widget/TextView;

    .line 73
    .line 74
    check-cast p1, Landroid/widget/EditText;

    .line 75
    .line 76
    new-instance v0, Lha/g7;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-direct {v0, p0, v1}, Lha/g7;-><init>(Lha/f7;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    const p1, 0x7f0b05ba

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p1, p0, Lha/f7;->i:Landroid/widget/TextView;

    .line 99
    .line 100
    const p1, 0x7f0b040b

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/EditText;

    .line 108
    .line 109
    iput-object p1, p0, Lha/f7;->h:Landroid/widget/EditText;

    .line 110
    .line 111
    const p1, 0x7f0b03f3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p1, p0, Lha/f7;->j:Landroid/widget/TextView;

    .line 121
    .line 122
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 123
    .line 124
    const/16 v1, 0x15

    .line 125
    .line 126
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lha/f7;->h:Landroid/widget/EditText;

    .line 133
    .line 134
    new-instance v0, Lha/c0;

    .line 135
    .line 136
    const/4 v1, 0x3

    .line 137
    invoke-direct {v0, p0, v1}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
