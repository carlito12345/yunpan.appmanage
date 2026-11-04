.class public final Lha/y;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/y8;

.field public h:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public i:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public n:Lc1/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/y8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e007d

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/y;->g:Lha/y8;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lha/y;->n:Lc1/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0560

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 12
    .line 13
    iput-object p1, p0, Lha/y;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 14
    .line 15
    const/16 v0, 0xff

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lha/y;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 21
    .line 22
    const/16 v1, 0x32

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lha/y;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 28
    .line 29
    new-instance v1, Lha/v;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, v2, p0}, Lha/v;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 36
    .line 37
    .line 38
    const p1, 0x7f0b05fb

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    .line 47
    iput-object p1, p0, Lha/y;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    const p1, 0x7f0b05fc

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object p1, p0, Lha/y;->j:Landroid/widget/TextView;

    .line 59
    .line 60
    const p1, 0x7f0b03f3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p1, p0, Lha/y;->k:Landroid/widget/TextView;

    .line 70
    .line 71
    const p1, 0x7f0b0412

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p1, p0, Lha/y;->l:Landroid/widget/TextView;

    .line 81
    .line 82
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "screen_brightness"

    .line 89
    .line 90
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 102
    .line 103
    const-string v0, "\u5c4f\u5e55\u4eae\u5ea6\u4e0a\u5347\u5230 50 \u4ee5\u4e0a\u7684\u65f6\u5019"

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-direct {p1, v0, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lha/y;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 110
    .line 111
    iget-object v0, p0, Lha/y;->j:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lha/y;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    .line 120
    new-instance v0, Lha/x;

    .line 121
    .line 122
    invoke-direct {v0, p0, v2}, Lha/x;-><init>(Lha/y;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lc1/a;

    .line 129
    .line 130
    new-instance v0, Landroid/os/Handler;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 133
    .line 134
    .line 135
    const/4 v2, 0x1

    .line 136
    invoke-direct {p1, p0, v0, v2}, Lc1/a;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lha/y;->n:Lc1/a;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const/4 v1, 0x1

    .line 150
    iget-object v2, p0, Lha/y;->n:Lc1/a;

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lha/y;->k:Landroid/widget/TextView;

    .line 156
    .line 157
    new-instance v0, Lha/x;

    .line 158
    .line 159
    invoke-direct {v0, p0, v1}, Lha/x;-><init>(Lha/y;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
