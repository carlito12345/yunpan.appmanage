.class public final Lha/v2;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/s3;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0091

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/v2;->i:Ljava/util/ArrayList;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    iput v1, p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->mHorizontalSpacingWithMargins:I

    .line 24
    .line 25
    iget-object p1, p0, Lha/v2;->i:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v4, 0x7

    .line 34
    if-ge v2, v4, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 37
    .line 38
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-direct {v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v4, 0x6

    .line 56
    if-le v2, v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 59
    .line 60
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 61
    .line 62
    invoke-direct {v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    div-int/2addr v1, v4

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    .line 78
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 79
    .line 80
    invoke-direct {v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x5

    .line 92
    div-int/2addr v1, v2

    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 96
    .line 97
    new-instance v4, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 98
    .line 99
    invoke-direct {v4, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 107
    .line 108
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 109
    .line 110
    const/4 v4, 0x4

    .line 111
    invoke-direct {v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    new-instance v1, Lx9/s3;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v1, v2}, Lx9/s3;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Lha/v2;->h:Lx9/s3;

    .line 127
    .line 128
    iget-object v2, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lha/v2;->h:Lx9/s3;

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 139
    .line 140
    new-instance v1, Lha/u2;

    .line 141
    .line 142
    invoke-direct {v1}, Lha/u2;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 149
    .line 150
    new-instance v1, Lg2/c;

    .line 151
    .line 152
    const/4 v2, 0x5

    .line 153
    invoke-direct {v1, v2}, Lg2/c;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lha/v2;->h:Lx9/s3;

    .line 160
    .line 161
    new-instance v1, La1/d;

    .line 162
    .line 163
    const/16 v2, 0xc

    .line 164
    .line 165
    invoke-direct {v1, v2, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iput-object v1, p1, Lc6/g;->e:Lc6/e;

    .line 169
    .line 170
    iget-object p1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lha/v2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 184
    .line 185
    .line 186
    return-void
.end method
