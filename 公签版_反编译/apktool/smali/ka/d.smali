.class public final Lka/d;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public d:Lx9/m3;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ProgressBar;

.field public final g:Lma/b;


# direct methods
.method public constructor <init>(ILma/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lka/d;->a:I

    .line 5
    .line 6
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->x:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lka/d;->b:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lka/d;->g:Lma/b;

    .line 15
    .line 16
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    new-instance v1, Landroid/content/ComponentName;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 p1, 0x2

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    if-ne p0, v0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    return p2
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    const p3, 0x7f0e0117

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0b04f1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 17
    .line 18
    iput-object p2, p0, Lka/d;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 19
    .line 20
    new-instance p3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {p3, v1, v2, v0}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Lx9/m3;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-direct {p2, p3}, Lx9/m3;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lka/d;->d:Lx9/m3;

    .line 43
    .line 44
    iget-object p3, p0, Lka/d;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 45
    .line 46
    invoke-virtual {p3, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lka/d;->d:Lx9/m3;

    .line 50
    .line 51
    new-instance p3, Lka/a;

    .line 52
    .line 53
    invoke-direct {p3, p0}, Lka/a;-><init>(Lka/d;)V

    .line 54
    .line 55
    .line 56
    iput-object p3, p2, Lc6/g;->e:Lc6/e;

    .line 57
    .line 58
    iget-object p2, p0, Lka/d;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 59
    .line 60
    new-instance p3, Lka/b;

    .line 61
    .line 62
    invoke-direct {p3, p0}, Lka/b;-><init>(Lka/d;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 66
    .line 67
    .line 68
    const p2, 0x7f0b0517

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/widget/ProgressBar;

    .line 76
    .line 77
    iput-object p2, p0, Lka/d;->f:Landroid/widget/ProgressBar;

    .line 78
    .line 79
    const p2, 0x7f0b05c0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object p2, p0, Lka/d;->e:Landroid/widget/TextView;

    .line 89
    .line 90
    new-instance p2, Lka/a;

    .line 91
    .line 92
    invoke-direct {p2, p0}, Lka/a;-><init>(Lka/d;)V

    .line 93
    .line 94
    .line 95
    new-instance p3, Lmc/c;

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-direct {p3, v0, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 102
    .line 103
    invoke-virtual {p3, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p2, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    new-instance p3, Lka/c;

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-direct {p3, v0, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 122
    .line 123
    .line 124
    return-object p1
.end method
