.class public final Lha/n6;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lea/g;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public j:Lx9/b3;

.field public k:Lg0/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00ae

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/n6;->k:Lg0/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/e;->k()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Logcat"

    .line 7
    .line 8
    invoke-static {v0}, Lv8/b;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lha/n6;->h:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, "\u76d1\u542c\u65e5\u5fd7"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lg0/e;

    .line 5
    .line 6
    invoke-direct {p1}, Lg0/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lha/n6;->k:Lg0/e;

    .line 10
    .line 11
    const p1, 0x7f0b03b1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lha/k6;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lha/k6;-><init>(Lha/n6;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0b03d2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object p1, p0, Lha/n6;->h:Landroid/widget/TextView;

    .line 37
    .line 38
    const p1, 0x7f0b036b

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lha/k6;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {v0, p0, v1}, Lha/k6;-><init>(Lha/n6;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    const p1, 0x7f0b03f1

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
    new-instance v0, Lc6/c;

    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    invoke-direct {v0, p0, v1, p1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lha/n6;->h:Landroid/widget/TextView;

    .line 74
    .line 75
    new-instance v0, Lha/k6;

    .line 76
    .line 77
    const/4 v1, 0x2

    .line 78
    invoke-direct {v0, p0, v1}, Lha/k6;-><init>(Lha/n6;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    const p1, 0x7f0b04f1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 92
    .line 93
    iput-object p1, p0, Lha/n6;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 94
    .line 95
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 96
    .line 97
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Landroidx/recyclerview/widget/y;

    .line 108
    .line 109
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/y;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    const v0, 0x7f0800cb

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v0}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/y;->e(Landroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lha/n6;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lx9/b3;

    .line 128
    .line 129
    invoke-direct {p1}, Lx9/b3;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object p1, p0, Lha/n6;->j:Lx9/b3;

    .line 133
    .line 134
    iget-object v0, p0, Lha/n6;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lha/n6;->j:Lx9/b3;

    .line 140
    .line 141
    new-instance v0, Lha/l6;

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-direct {v0, p0, v1}, Lha/l6;-><init>(Lha/n6;I)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 148
    .line 149
    return-void
.end method
