.class public final Lha/m7;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/p8;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/EditText;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public v:Lcom/yunpan/appmanage/bean/KeyCodeBean;

.field public final w:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/p8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00bc

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/m7;->w:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object p3, p0, Lha/m7;->g:Lha/p8;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b045c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/EditText;

    .line 12
    .line 13
    iput-object p1, p0, Lha/m7;->h:Landroid/widget/EditText;

    .line 14
    .line 15
    const p1, 0x7f0b0460

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/EditText;

    .line 23
    .line 24
    iput-object p1, p0, Lha/m7;->i:Landroid/widget/EditText;

    .line 25
    .line 26
    const p1, 0x7f0b045d

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/EditText;

    .line 34
    .line 35
    iput-object p1, p0, Lha/m7;->j:Landroid/widget/EditText;

    .line 36
    .line 37
    const p1, 0x7f0b0461

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/EditText;

    .line 45
    .line 46
    iput-object p1, p0, Lha/m7;->k:Landroid/widget/EditText;

    .line 47
    .line 48
    const p1, 0x7f0b045e

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/EditText;

    .line 56
    .line 57
    iput-object p1, p0, Lha/m7;->l:Landroid/widget/EditText;

    .line 58
    .line 59
    const p1, 0x7f0b0462

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/EditText;

    .line 67
    .line 68
    iput-object p1, p0, Lha/m7;->m:Landroid/widget/EditText;

    .line 69
    .line 70
    const p1, 0x7f0b044f

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/EditText;

    .line 78
    .line 79
    iput-object p1, p0, Lha/m7;->n:Landroid/widget/EditText;

    .line 80
    .line 81
    const p1, 0x7f0b04d0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/LinearLayout;

    .line 89
    .line 90
    iput-object p1, p0, Lha/m7;->p:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    const p1, 0x7f0b04d1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/widget/LinearLayout;

    .line 100
    .line 101
    iput-object p1, p0, Lha/m7;->q:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    const p1, 0x7f0b05f6

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 111
    .line 112
    iput-object p1, p0, Lha/m7;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 113
    .line 114
    const p1, 0x7f0b05f7

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object p1, p0, Lha/m7;->s:Landroid/widget/TextView;

    .line 124
    .line 125
    const p1, 0x7f0b0334

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object p1, p0, Lha/m7;->t:Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object p1, p0, Lha/m7;->p:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    const/16 v0, 0x8

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lha/m7;->q:Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 149
    .line 150
    const/4 v0, 0x0

    .line 151
    const-string v1, "\u5355\u6307"

    .line 152
    .line 153
    invoke-direct {p1, v0, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iput-object p1, p0, Lha/m7;->v:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 157
    .line 158
    iget-object v0, p0, Lha/m7;->w:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    const-string v2, "\u53cc\u6307"

    .line 167
    .line 168
    invoke-direct {p1, v1, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 175
    .line 176
    const/4 v1, 0x2

    .line 177
    const-string v2, "\u4e09\u6307"

    .line 178
    .line 179
    invoke-direct {p1, v1, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lha/m7;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 186
    .line 187
    new-instance v0, Lha/l7;

    .line 188
    .line 189
    const/4 v1, 0x0

    .line 190
    invoke-direct {v0, p0, v1}, Lha/l7;-><init>(Lha/m7;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lha/m7;->t:Landroid/widget/TextView;

    .line 197
    .line 198
    new-instance v0, Lha/l7;

    .line 199
    .line 200
    const/4 v1, 0x1

    .line 201
    invoke-direct {v0, p0, v1}, Lha/l7;-><init>(Lha/m7;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
