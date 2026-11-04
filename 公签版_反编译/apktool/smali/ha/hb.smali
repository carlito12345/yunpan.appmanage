.class public final Lha/hb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lx9/w3;

.field public final h:Lha/gb;

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;ILha/gb;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00b0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/hb;->g:Lx9/w3;

    .line 8
    .line 9
    iput p4, p0, Lha/hb;->i:I

    .line 10
    .line 11
    iput-object p5, p0, Lha/hb;->h:Lha/gb;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b039c

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
    const v0, 0x7f0b0428

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/EditText;

    .line 21
    .line 22
    const v1, 0x7f0b05ba

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
    iget v2, p0, Lha/hb;->i:I

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const-string v2, "\u65b0\u5efa\u6587\u4ef6"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v3, 0x1

    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    const-string v2, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v3, 0x2

    .line 51
    if-ne v2, v3, :cond_2

    .line 52
    .line 53
    const-string v2, "\u91cd\u547d\u540d"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lha/hb;->g:Lx9/w3;

    .line 59
    .line 60
    iget-object v1, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    new-instance v1, Lha/x6;

    .line 66
    .line 67
    const/16 v2, 0x9

    .line 68
    .line 69
    invoke-direct {v1, p1, v2}, Lha/x6;-><init>(Landroid/widget/TextView;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lc6/c;

    .line 76
    .line 77
    const/16 v2, 0x15

    .line 78
    .line 79
    invoke-direct {v1, p0, v2, v0}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    const p1, 0x7f0b03ea

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lha/g9;

    .line 93
    .line 94
    const/4 v1, 0x7

    .line 95
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
