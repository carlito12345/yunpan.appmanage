.class public final Lha/ke;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/je;

.field public final h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lha/je;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00ff

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, ".zip"

    .line 8
    .line 9
    iput-object p1, p0, Lha/ke;->i:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lha/ke;->g:Lha/je;

    .line 12
    .line 13
    iput-object p3, p0, Lha/ke;->h:Ljava/lang/String;

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
    const p1, 0x7f0b0512

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const p1, 0x7f0b0550

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 21
    .line 22
    const v0, 0x7f0b0428

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/EditText;

    .line 30
    .line 31
    new-instance v1, Ljava/io/File;

    .line 32
    .line 33
    iget-object v2, p0, Lha/ke;->h:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "."

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    new-instance v4, Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    if-le v3, v2, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lha/c0;

    .line 71
    .line 72
    const/4 v2, 0x7

    .line 73
    invoke-direct {v1, p1, v2}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 77
    .line 78
    .line 79
    const v1, 0x7f0b0530

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/EditText;

    .line 87
    .line 88
    new-instance v2, Lha/e2;

    .line 89
    .line 90
    const/4 v3, 0x4

    .line 91
    invoke-direct {v2, p0, p1, v3}, Lha/e2;-><init>(Landroid/view/KeyEvent$Callback;Landroid/view/View;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 98
    .line 99
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 100
    .line 101
    invoke-direct {v2, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lx9/j5;

    .line 108
    .line 109
    invoke-direct {v2}, Lx9/j5;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lx9/k5;

    .line 116
    .line 117
    const/4 v3, 0x1

    .line 118
    const-string v5, ".zip"

    .line 119
    .line 120
    const-string v6, ""

    .line 121
    .line 122
    invoke-direct {p1, v5, v6, v3}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lx9/k5;

    .line 129
    .line 130
    const-string v3, ".7z"

    .line 131
    .line 132
    invoke-direct {p1, v3, v6, v4}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Ld2/w;

    .line 139
    .line 140
    const/16 v3, 0x1b

    .line 141
    .line 142
    invoke-direct {p1, p0, v3, v2}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, v2, Lc6/g;->e:Lc6/e;

    .line 146
    .line 147
    const p1, 0x7f0b03f3

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Landroid/widget/LinearLayout;

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 157
    .line 158
    .line 159
    new-instance v2, Lha/s6;

    .line 160
    .line 161
    const/4 v3, 0x5

    .line 162
    invoke-direct {v2, p0, v0, v1, v3}, Lha/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    const p1, 0x7f0b0397

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance v0, Lha/g9;

    .line 176
    .line 177
    const/16 v1, 0x10

    .line 178
    .line 179
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
