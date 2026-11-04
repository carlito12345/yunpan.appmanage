.class public final Lha/t7;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Ll5/y;

.field public final h:Z

.field public final i:I

.field public j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ZIILl5/y;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00c2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-boolean p3, p0, Lha/t7;->h:Z

    .line 8
    .line 9
    iput p4, p0, Lha/t7;->i:I

    .line 10
    .line 11
    iput p5, p0, Lha/t7;->j:I

    .line 12
    .line 13
    iput-object p6, p0, Lha/t7;->g:Ll5/y;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0374

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
    const v0, 0x7f0b03eb

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    const v1, 0x7f0b03e9

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    .line 31
    const v2, 0x7f0b0377

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/TextView;

    .line 39
    .line 40
    const v3, 0x7f0b035b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/widget/TextView;

    .line 48
    .line 49
    const v4, 0x7f0b0568

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    .line 58
    const v5, 0x7f0b0569

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/widget/ImageView;

    .line 66
    .line 67
    iget-boolean v6, p0, Lha/t7;->h:Z

    .line 68
    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    const v6, 0x7f080234

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const v6, 0x7f080237

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Lha/s7;

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-direct {v5, p0, v6}, Lha/s7;-><init>(Lha/t7;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lha/s7;

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    invoke-direct {p1, p0, v5}, Lha/s7;-><init>(Lha/t7;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lha/s7;

    .line 100
    .line 101
    const/4 v0, 0x2

    .line 102
    invoke-direct {p1, p0, v0}, Lha/s7;-><init>(Lha/t7;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lha/s7;

    .line 109
    .line 110
    const/4 v0, 0x3

    .line 111
    invoke-direct {p1, p0, v0}, Lha/s7;-><init>(Lha/t7;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lha/s7;

    .line 118
    .line 119
    const/4 v0, 0x4

    .line 120
    invoke-direct {p1, p0, v0}, Lha/s7;-><init>(Lha/t7;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lha/s7;

    .line 127
    .line 128
    const/4 v0, 0x5

    .line 129
    invoke-direct {p1, p0, v0}, Lha/s7;-><init>(Lha/t7;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
