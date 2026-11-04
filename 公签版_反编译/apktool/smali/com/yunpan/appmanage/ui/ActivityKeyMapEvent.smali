.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;
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
    const v0, 0x7f0e003e

    return v0
.end method

.method public final u()V
    .locals 5

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
    const-string v1, "\u4e8b\u4ef6\u6620\u5c04"

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
    new-instance v1, Lua/i3;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, p0, v2}, Lua/i3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;I)V

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
    new-instance v1, Lua/i3;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, v2}, Lua/i3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0b0374

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lua/i3;

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-direct {v1, p0, v2}, Lua/i3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;I)V

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
    new-instance v1, Lua/i3;

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    invoke-direct {v1, p0, v2}, Lua/i3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0b034b

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    .line 88
    new-instance v1, Lc6/c;

    .line 89
    .line 90
    const/16 v2, 0x1d

    .line 91
    .line 92
    invoke-direct {v1, p0, v2, v0}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    const v0, 0x7f0b04f1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 108
    .line 109
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 110
    .line 111
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 112
    .line 113
    const/4 v3, 0x1

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lx9/s2;

    .line 122
    .line 123
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 134
    .line 135
    new-instance v1, Lph/j;

    .line 136
    .line 137
    const/16 v2, 0x16

    .line 138
    .line 139
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->z()V

    .line 145
    .line 146
    .line 147
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
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

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
    new-instance v0, Lha/a9;

    .line 14
    .line 15
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->E:Lz7/s;

    .line 18
    .line 19
    new-instance v6, Lua/j3;

    .line 20
    .line 21
    invoke-direct {v6, p0, p1}, Lua/j3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;I)V

    .line 22
    .line 23
    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move v5, p1

    .line 27
    invoke-direct/range {v1 .. v6}, Lha/a9;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;Lda/g;Lz7/s;ILua/j3;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    const-string p1, "\u51fa\u9519\uff1a\u79bb\u8c31\u7684\u9519\u8bef"

    .line 35
    .line 36
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final y(I)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

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
    new-instance v0, Lha/v8;

    .line 14
    .line 15
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->E:Lz7/s;

    .line 18
    .line 19
    new-instance v6, Lua/j3;

    .line 20
    .line 21
    invoke-direct {v6, p0, p1}, Lua/j3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;I)V

    .line 22
    .line 23
    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move v5, p1

    .line 27
    invoke-direct/range {v1 .. v6}, Lha/v8;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;Lda/g;Lz7/s;ILua/j3;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    const-string p1, "\u51fa\u9519\uff1a\u79bb\u8c31\u7684\u9519\u8bef"

    .line 35
    .line 36
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

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
    const-string v2, "KeyMapEvent.json"

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->E:Lz7/s;

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
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

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
