.class public final Lha/w6;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/v6;

.field public final h:Z

.field public final i:Z

.field public j:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public k:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ZZLha/v6;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00b3

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p5, p0, Lha/w6;->g:Lha/v6;

    .line 8
    .line 9
    iput-boolean p3, p0, Lha/w6;->h:Z

    .line 10
    .line 11
    iput-boolean p4, p0, Lha/w6;->i:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lha/w6;->h:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "\u957f\u6309"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 20
    .line 21
    const-string v1, "\u5355\u51fb"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lha/w6;->j:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 33
    .line 34
    const-string v1, "\u53cc\u51fb"

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    invoke-direct {v0, v1, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 44
    .line 45
    const-string v1, "\u4e09\u51fb"

    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    invoke-direct {v0, v1, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0b05f7

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v1, p0, Lha/w6;->j:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0b05f6

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v4, Lha/t6;

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    invoke-direct {v4, p0, p1, v0, v5}, Lha/t6;-><init>(Lha/w6;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 92
    .line 93
    const-string v1, "\u65b9\u6cd5\u4e00"

    .line 94
    .line 95
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lha/w6;->k:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 104
    .line 105
    const-string v1, "\u65b9\u6cd5\u4e8c"

    .line 106
    .line 107
    invoke-direct {v0, v1, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0b0322

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 121
    .line 122
    iget-boolean v1, p0, Lha/w6;->i:Z

    .line 123
    .line 124
    if-eqz v1, :cond_1

    .line 125
    .line 126
    const/16 p1, 0x8

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    const v1, 0x7f0b0323

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v2, p0, Lha/w6;->k:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 142
    .line 143
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    new-instance v2, Lha/t6;

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    invoke-direct {v2, p0, p1, v1, v3}, Lha/t6;-><init>(Lha/w6;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    :goto_0
    const p1, 0x7f0b0334

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0b045b

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/EditText;

    .line 174
    .line 175
    const v1, 0x7f0b045f

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Landroid/widget/EditText;

    .line 183
    .line 184
    new-instance v2, Lha/r6;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    invoke-direct {v2, v3, v1}, Lha/r6;-><init>(ILandroid/widget/EditText;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Lha/j1;

    .line 194
    .line 195
    const/4 v3, 0x4

    .line 196
    invoke-direct {v2, p1, v0, v3}, Lha/j1;-><init>(Landroid/widget/TextView;Landroid/widget/EditText;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lha/s6;

    .line 203
    .line 204
    const/4 v3, 0x0

    .line 205
    invoke-direct {v2, p0, v0, v1, v3}, Lha/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method
