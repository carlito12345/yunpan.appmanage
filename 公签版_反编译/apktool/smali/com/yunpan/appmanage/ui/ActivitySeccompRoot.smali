.class public Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public E:Lha/u9;

.field public F:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->F:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->F:Z

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "/EnableAccSeccompRoot"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 37
    .line 38
    const-string v1, "UP_ACC_SHELL_SECCOMP_ROOT"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0050

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    new-instance v0, Lha/u9;

    .line 2
    .line 3
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->E:Lha/u9;

    .line 9
    .line 10
    const v0, 0x7f0b03ad

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lua/g1;

    .line 18
    .line 19
    const/16 v2, 0x1b

    .line 20
    .line 21
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0b04f1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 37
    .line 38
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, "/EnableAccSeccompRoot"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->F:Z

    .line 79
    .line 80
    new-instance v0, Lx9/k3;

    .line 81
    .line 82
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 86
    .line 87
    const v1, 0x7f0802bf

    .line 88
    .line 89
    .line 90
    const-string v2, "\u5c06shell\u63d0\u6743\u4e3aroot\u6743\u9650"

    .line 91
    .line 92
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 96
    .line 97
    new-instance v1, Lx9/l3;

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->F:Z

    .line 100
    .line 101
    if-eqz v2, :cond_0

    .line 102
    .line 103
    const v2, 0x7f080234

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const v2, 0x7f080237

    .line 108
    .line 109
    .line 110
    :goto_0
    const-string v3, "\u81ea\u52a8\u5316\u4efb\u52a1\u7684shell\u63d0\u5347\u4e3aroot"

    .line 111
    .line 112
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;->D:Lx9/k3;

    .line 126
    .line 127
    new-instance v1, Lua/g5;

    .line 128
    .line 129
    const/4 v2, 0x2

    .line 130
    invoke-direct {v1, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 134
    .line 135
    return-void
.end method
