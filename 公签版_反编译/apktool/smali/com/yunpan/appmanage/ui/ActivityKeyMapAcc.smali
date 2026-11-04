.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;
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
    const-string v1, "\u539f\u751f\u6309\u952e\u6620\u5c04"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0b03ad

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lua/g3;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, p0, v2}, Lua/g3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0b037d

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lua/g3;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, v2}, Lua/g3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0b0375

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lua/g3;

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-direct {v1, p0, v2}, Lua/g3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0b034a

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lua/g3;

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    invoke-direct {v1, p0, v2}, Lua/g3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0b04f1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 89
    .line 90
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 91
    .line 92
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lx9/s2;

    .line 99
    .line 100
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

    .line 111
    .line 112
    new-instance v1, Lph/j;

    .line 113
    .line 114
    const/16 v2, 0x15

    .line 115
    .line 116
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->y()V

    .line 122
    .line 123
    .line 124
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
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

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
    new-instance v0, Lha/t8;

    .line 14
    .line 15
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->E:Lz7/s;

    .line 18
    .line 19
    new-instance v6, Ld3/g;

    .line 20
    .line 21
    const/16 v1, 0xb

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
    invoke-direct/range {v1 .. v6}, Lha/t8;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;Lda/g;Lz7/s;ILd3/g;)V

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
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

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
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "KeyMapAcc.json"

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lq4/a;->I(Ljava/io/File;)Lz7/s;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->E:Lz7/s;

    .line 33
    .line 34
    const-string v1, "keys"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v2, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v1, v2, :cond_0

    .line 48
    .line 49
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lz7/o;->l(I)Lz7/p;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method
