.class public final Lha/ed;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/dd;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/TextView;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Landroid/widget/TextView;

.field public final p:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lda/g;ZLha/dd;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00f9

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lha/ed;->h:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lha/ed;->i:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lha/ed;->k:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lha/ed;->l:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lha/ed;->m:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p3, p0, Lha/ed;->p:Z

    .line 20
    .line 21
    iput-object p4, p0, Lha/ed;->g:Lha/dd;

    .line 22
    .line 23
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
    const p1, 0x7f0b05cd

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
    iget-boolean v0, p0, Lha/ed;->p:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "\u5c31\u5173\u95ed\uff1a"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "\u5c31\u6253\u5f00\uff1a"

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0b0597

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p1, p0, Lha/ed;->j:Landroid/widget/TextView;

    .line 35
    .line 36
    const p1, 0x7f0b037b

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v0, Lha/bd;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, p0, v1}, Lha/bd;-><init>(Lha/ed;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    const p1, 0x7f0b05a6

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
    iput-object p1, p0, Lha/ed;->n:Landroid/widget/TextView;

    .line 64
    .line 65
    const p1, 0x7f0b03e8

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/TextView;

    .line 73
    .line 74
    new-instance v0, Lha/bd;

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-direct {v0, p0, v1}, Lha/bd;-><init>(Lha/ed;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    const p1, 0x7f0b03f3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    .line 92
    new-instance v0, Lha/bd;

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    invoke-direct {v0, p0, v1}, Lha/bd;-><init>(Lha/ed;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
