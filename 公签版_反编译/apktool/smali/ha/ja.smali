.class public final Lha/ja;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Landroid/view/View;

.field public final h:Ljava/lang/String;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Lx9/m1;

.field public final k:Ljava/util/List;

.field public final l:Lha/ia;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V
    .locals 1

    const v0, 0x7f0e00d8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lha/ja;->h:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lha/ja;->k:Ljava/util/List;

    .line 4
    iput-object p5, p0, Lha/ja;->l:Lha/ia;

    .line 5
    iput-object p3, p0, Lha/ja;->g:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lda/g;Landroid/view/View;Ljava/util/ArrayList;Lua/k3;)V
    .locals 1

    const v0, 0x7f0e00d9

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 7
    iput-object p4, p0, Lha/ja;->k:Ljava/util/List;

    .line 8
    iput-object p5, p0, Lha/ja;->l:Lha/ia;

    .line 9
    iput-object p3, p0, Lha/ja;->g:Landroid/view/View;

    .line 10
    const-string p1, "\u5220\u9664\u65b9\u6848"

    iput-object p1, p0, Lha/ja;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/ja;->h:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const v0, 0x7f0b05ba

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const p1, 0x7f0b04f1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iput-object p1, p0, Lha/ja;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    new-array p1, p1, [I

    .line 33
    .line 34
    iget-object v0, p0, Lha/ja;->g:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    aget v1, p1, v1

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aget v3, p1, v2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    add-int/2addr v4, v3

    .line 55
    const v3, 0x7f0b0559

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .line 70
    iget-object v6, p0, Lha/a4;->b:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    .line 82
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 83
    .line 84
    mul-int/lit8 v8, v7, 0x2

    .line 85
    .line 86
    div-int/lit8 v8, v8, 0x3

    .line 87
    .line 88
    const/16 v9, 0xa

    .line 89
    .line 90
    const/16 v10, 0xc

    .line 91
    .line 92
    const/4 v11, -0x1

    .line 93
    if-le v1, v8, :cond_2

    .line 94
    .line 95
    div-int/lit8 v8, v6, 0x2

    .line 96
    .line 97
    const/16 v12, 0x15

    .line 98
    .line 99
    if-le v4, v8, :cond_1

    .line 100
    .line 101
    invoke-virtual {v5, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    .line 106
    .line 107
    sub-int/2addr v7, v1

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sub-int/2addr v7, v0

    .line 113
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 114
    .line 115
    aget p1, p1, v2

    .line 116
    .line 117
    sub-int/2addr v6, p1

    .line 118
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v5, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    .line 126
    .line 127
    sub-int/2addr v7, v1

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    sub-int/2addr v7, p1

    .line 133
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 134
    .line 135
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    div-int/lit8 v0, v6, 0x2

    .line 139
    .line 140
    const/16 v7, 0x14

    .line 141
    .line 142
    if-le v4, v0, :cond_3

    .line 143
    .line 144
    invoke-virtual {v5, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    .line 149
    .line 150
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 151
    .line 152
    aget p1, p1, v2

    .line 153
    .line 154
    sub-int/2addr v6, p1

    .line 155
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v5, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    .line 163
    .line 164
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 165
    .line 166
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 167
    .line 168
    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Lx9/m1;

    .line 172
    .line 173
    invoke-direct {p1}, Lx9/m1;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object p1, p0, Lha/ja;->j:Lx9/m1;

    .line 177
    .line 178
    iget-object v0, p0, Lha/ja;->k:Ljava/util/List;

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lha/ja;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    .line 185
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 186
    .line 187
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lha/ja;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    .line 195
    iget-object v0, p0, Lha/ja;->j:Lx9/m1;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lha/ja;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    .line 202
    new-instance v0, La2/h;

    .line 203
    .line 204
    const/16 v1, 0x1d

    .line 205
    .line 206
    invoke-direct {v0, v1, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const-wide/16 v1, 0x64

    .line 210
    .line 211
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lha/ja;->j:Lx9/m1;

    .line 215
    .line 216
    new-instance v0, Lha/p7;

    .line 217
    .line 218
    const/4 v1, 0x7

    .line 219
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 223
    .line 224
    return-void
.end method
