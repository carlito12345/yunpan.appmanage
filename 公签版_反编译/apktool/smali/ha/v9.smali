.class public final Lha/v9;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/yunpan/appmanage/view/MyProgressViewTest;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

.field public r:J

.field public s:J

.field public final t:J

.field public v:Ljava/lang/String;

.field public w:Llc/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 2

    .line 1
    const v0, 0x7f0e00d0

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lha/v9;->r:J

    .line 11
    .line 12
    iput-wide p1, p0, Lha/v9;->s:J

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lha/v9;->t:J

    .line 19
    .line 20
    const-string p1, "0"

    .line 21
    .line 22
    iput-object p1, p0, Lha/v9;->v:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static a(JJJ)Ljava/lang/String;
    .locals 0

    .line 1
    sub-long/2addr p2, p0

    .line 2
    long-to-double p0, p2

    .line 3
    const-wide/high16 p2, 0x4090000000000000L    # 1024.0

    .line 4
    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 6
    .line 7
    .line 8
    div-double/2addr p0, p2

    .line 9
    div-double/2addr p0, p2

    .line 10
    long-to-double p2, p4

    .line 11
    const-wide p4, 0x408f400000000000L    # 1000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 17
    .line 18
    .line 19
    div-double/2addr p2, p4

    .line 20
    sget-object p4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    sget-object p4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 23
    .line 24
    sget-object p4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 25
    .line 26
    div-double/2addr p0, p2

    .line 27
    invoke-virtual {p4, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/32 v0, 0x36ee80

    .line 2
    .line 3
    .line 4
    div-long v2, p0, v0

    .line 5
    .line 6
    long-to-int v3, v2

    .line 7
    rem-long v0, p0, v0

    .line 8
    .line 9
    const-wide/32 v4, 0xea60

    .line 10
    .line 11
    .line 12
    div-long/2addr v0, v4

    .line 13
    long-to-int v1, v0

    .line 14
    rem-long/2addr p0, v4

    .line 15
    const-wide/16 v4, 0x3e8

    .line 16
    .line 17
    div-long/2addr p0, v4

    .line 18
    long-to-int p1, p0

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x3

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object p0, v1, v2

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    aput-object v0, v1, p0

    .line 39
    .line 40
    const/4 p0, 0x2

    .line 41
    aput-object p1, v1, p0

    .line 42
    .line 43
    const-string p0, "%02d:%02d:%02d"

    .line 44
    .line 45
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lha/a4;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lha/v9;->g:Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    iput-wide p1, p0, Lha/v9;->s:J

    .line 16
    .line 17
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    sget-object v6, Lrc/f;->a:Lec/j;

    .line 20
    .line 21
    const-string p1, "unit is null"

    .line 22
    .line 23
    invoke-static {v5, p1}, Ljc/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "scheduler is null"

    .line 27
    .line 28
    invoke-static {v6, p1}, Ljc/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lmc/j;

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    const-wide/16 v2, 0x12c

    .line 36
    .line 37
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    move-object v0, p1

    .line 46
    move-wide v1, v7

    .line 47
    invoke-direct/range {v0 .. v6}, Lmc/j;-><init>(JJLjava/util/concurrent/TimeUnit;Lec/j;)V

    .line 48
    .line 49
    .line 50
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Lha/p7;

    .line 65
    .line 66
    const/4 v0, 0x4

    .line 67
    invoke-direct {p2, v0, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Llc/a;

    .line 71
    .line 72
    invoke-direct {v0, p2}, Llc/a;-><init>(Lha/p7;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lha/v9;->w:Llc/a;

    .line 79
    .line 80
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lha/v9;->w:Llc/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lic/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

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
    iput-object p1, p0, Lha/v9;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0b032c

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p1, p0, Lha/v9;->h:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0b057d

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object p1, p0, Lha/v9;->i:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f0b057e

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p1, p0, Lha/v9;->j:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const p1, 0x7f0b0580

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object p1, p0, Lha/v9;->k:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    const p1, 0x7f0b0581

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object p1, p0, Lha/v9;->l:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    const p1, 0x7f0b0538

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 98
    .line 99
    iput-object p1, p0, Lha/v9;->m:Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 100
    .line 101
    const/high16 v1, 0x42c80000    # 100.0f

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setMaxCount(F)V

    .line 104
    .line 105
    .line 106
    const p1, 0x7f0b057f

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object p1, p0, Lha/v9;->n:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    const p1, 0x7f0b0582

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object p1, p0, Lha/v9;->p:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    const p1, 0x7f0b035e

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/widget/TextView;

    .line 142
    .line 143
    new-instance v0, Lha/g9;

    .line 144
    .line 145
    const/4 v1, 0x2

    .line 146
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
