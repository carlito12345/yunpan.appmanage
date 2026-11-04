.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic F:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/s2;

.field public E:Lz7/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003c

    return v0
.end method

.method public final u()V
    .locals 3

    .line 1
    const v0, 0x7f0b05ba

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u65e5\u4ea7\u65b9\u5411\u76d8\u6309\u94ae\u6620\u5c04"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x15

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u517c\u5bb9\u60a8\u7684\u7cfb\u7edf"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityNissan;->y()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0x12c

    .line 31
    .line 32
    if-ge v0, v1, :cond_1

    .line 33
    .line 34
    const-string v0, "\u4e0d\u9002\u5408\u65e7\u7248\u7cfb\u7edf\uff0c\u8bf7\u7528\u65e5\u5fd7\u6620\u5c04"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const v0, 0x7f0b03ad

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lua/n3;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p0, v2}, Lua/n3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0b037d

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lua/n3;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {v1, p0, v2}, Lua/n3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0b0375

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lua/n3;

    .line 79
    .line 80
    const/4 v2, 0x2

    .line 81
    invoke-direct {v1, p0, v2}, Lua/n3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f0b034a

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lua/n3;

    .line 95
    .line 96
    const/4 v2, 0x3

    .line 97
    invoke-direct {v1, p0, v2}, Lua/n3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    const v0, 0x7f0b04f1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 113
    .line 114
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 115
    .line 116
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lx9/s2;

    .line 123
    .line 124
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 135
    .line 136
    new-instance v1, Lph/j;

    .line 137
    .line 138
    const/16 v2, 0x18

    .line 139
    .line 140
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->y()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final x(I)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lha/i9;

    .line 14
    .line 15
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->E:Lz7/s;

    .line 18
    .line 19
    new-instance v6, Ld3/g;

    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    invoke-direct {v6, p1, v1, p0}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object v1, v0

    .line 27
    move-object v2, p0

    .line 28
    move v5, p1

    .line 29
    invoke-direct/range {v1 .. v6}, Lha/i9;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;Lda/g;Lz7/s;ILd3/g;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    const-string p1, "\u51fa\u73b0\u79bb\u8c31\u7684\u9519\u8bef"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 12
    .line 13
    invoke-static {v0}, Lq4/a;->t(Landroid/content/Context;)Lz7/s;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->E:Lz7/s;

    .line 18
    .line 19
    const-string v1, "keys"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lz7/o;->l(I)Lz7/p;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
