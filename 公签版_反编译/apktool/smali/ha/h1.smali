.class public final Lha/h1;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final h:Lea/c;

.field public i:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V
    .locals 0

    .line 1
    iput p7, p0, Lha/h1;->g:I

    .line 2
    .line 3
    packed-switch p7, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const p7, 0x7f0e00eb

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p7}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iput-object p6, p0, Lha/h1;->h:Lea/c;

    .line 13
    .line 14
    iput-object p3, p0, Lha/h1;->j:Ljava/lang/String;

    .line 15
    .line 16
    iput p4, p0, Lha/h1;->k:I

    .line 17
    .line 18
    iput p5, p0, Lha/h1;->l:I

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    const p7, 0x7f0e00ea

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2, p7}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    iput-object p6, p0, Lha/h1;->h:Lea/c;

    .line 28
    .line 29
    iput-object p3, p0, Lha/h1;->j:Ljava/lang/String;

    .line 30
    .line 31
    iput p4, p0, Lha/h1;->k:I

    .line 32
    .line 33
    iput p5, p0, Lha/h1;->l:I

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/h1;->g:I

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
    iget-object v0, p0, Lha/h1;->j:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0b0560

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 31
    .line 32
    iput-object p1, p0, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 33
    .line 34
    new-instance v0, Lha/v;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-direct {v0, v1, p0}, Lha/v;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 44
    .line 45
    iget v0, p0, Lha/h1;->l:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 48
    .line 49
    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v0, 0x1a

    .line 53
    .line 54
    if-lt p1, v0, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 57
    .line 58
    invoke-static {p1}, Leg/a;->n(Landroidx/appcompat/widget/AppCompatSeekBar;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 62
    .line 63
    iget v0, p0, Lha/h1;->k:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0b05ba

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v0, p0, Lha/h1;->j:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f0b0560

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 94
    .line 95
    iput-object p1, p0, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 96
    .line 97
    iget v0, p0, Lha/h1;->l:I

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 100
    .line 101
    .line 102
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v0, 0x1a

    .line 105
    .line 106
    if-lt p1, v0, :cond_1

    .line 107
    .line 108
    iget-object p1, p0, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 109
    .line 110
    invoke-static {p1}, Leg/a;->n(Landroidx/appcompat/widget/AppCompatSeekBar;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    iget-object p1, p0, Lha/h1;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 114
    .line 115
    iget v0, p0, Lha/h1;->k:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 118
    .line 119
    .line 120
    const p1, 0x7f0b03f3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 128
    .line 129
    const/4 v1, 0x4

    .line 130
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
