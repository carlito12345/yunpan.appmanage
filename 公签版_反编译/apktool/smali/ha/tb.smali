.class public final Lha/tb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/a1;

.field public final i:Ljava/lang/String;

.field public final j:Landroidx/leanback/widget/i;

.field public final k:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/Set;Landroidx/leanback/widget/i;)V
    .locals 2

    .line 1
    const v0, 0x7f0e00ec

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    const-string p1, "\u8bf7\u9009\u4e2d\u8981\u6392\u9664\u7684\u5e94\u7528"

    .line 9
    .line 10
    iput-object p1, p0, Lha/tb;->i:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lha/tb;->k:Ljava/util/Set;

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lha/tb;->k:Ljava/util/Set;

    .line 22
    .line 23
    :cond_0
    iput-object p4, p0, Lha/tb;->j:Landroidx/leanback/widget/i;

    .line 24
    .line 25
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
    iget-object v0, p0, Lha/tb;->i:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0b03f3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 28
    .line 29
    .line 30
    new-instance v0, Lha/sb;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, v1}, Lha/sb;-><init>(Lha/tb;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const p1, 0x7f0b0364

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Lha/sb;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-direct {v0, p0, v1}, Lha/sb;-><init>(Lha/tb;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    const p1, 0x7f0b04f1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 63
    .line 64
    iput-object p1, p0, Lha/tb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 65
    .line 66
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 67
    .line 68
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 69
    .line 70
    const/4 v2, 0x6

    .line 71
    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lx9/a1;

    .line 78
    .line 79
    invoke-direct {p1, v1}, Lx9/a1;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lha/tb;->h:Lx9/a1;

    .line 83
    .line 84
    iget-object v0, p0, Lha/tb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lha/tb;->h:Lx9/a1;

    .line 90
    .line 91
    new-instance v0, Lha/p7;

    .line 92
    .line 93
    const/16 v1, 0xc

    .line 94
    .line 95
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    invoke-static {p1}, Lnh/b;->i0(I)Lmc/g;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Lha/p0;

    .line 106
    .line 107
    const/16 v1, 0x13

    .line 108
    .line 109
    invoke-direct {v0, v1, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
