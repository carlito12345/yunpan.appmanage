.class public Lcom/yunpan/appmanage/ui/ActivityAccessibility;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/a;

.field public E:Landroid/widget/TextView;

.field public F:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->F:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e001c

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lua/a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, v2}, Lua/a;-><init>(Lcom/yunpan/appmanage/ui/ActivityAccessibility;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0b03c3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lua/a;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v1, p0, v3}, Lua/a;-><init>(Lcom/yunpan/appmanage/ui/ActivityAccessibility;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0b05c0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->E:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f0b04f1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 56
    .line 57
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 58
    .line 59
    invoke-direct {v1, v4, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lx9/a;

    .line 66
    .line 67
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lx9/a;-><init>(Lda/g;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroidx/recyclerview/widget/y;

    .line 80
    .line 81
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/y;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 87
    .line 88
    const v4, 0x7f0800cb

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v4}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/y;->e(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lua/b;

    .line 104
    .line 105
    invoke-direct {v0, p0, v3}, Lua/b;-><init>(Lcom/yunpan/appmanage/ui/ActivityAccessibility;I)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lmc/c;

    .line 109
    .line 110
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v1, Lka/c;

    .line 128
    .line 129
    const/4 v3, 0x5

    .line 130
    invoke-direct {v1, v3, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 137
    .line 138
    new-instance v1, Lua/b;

    .line 139
    .line 140
    invoke-direct {v1, p0, v2}, Lua/b;-><init>(Lcom/yunpan/appmanage/ui/ActivityAccessibility;I)V

    .line 141
    .line 142
    .line 143
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 146
    .line 147
    new-instance v1, Ltb/v;

    .line 148
    .line 149
    const/16 v2, 0xd

    .line 150
    .line 151
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 158
    .line 159
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 160
    .line 161
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const-string v0, "\u6388\u6743\u5931\u8d25\uff0c\u65e0\u6cd5\u4f7f\u7528\u65e0\u969c\u788d\u6301\u4e45\u529f\u80fd"

    .line 167
    .line 168
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/util/k;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final x(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx9/b;

    .line 8
    .line 9
    iget-boolean v1, v0, Lx9/b;->f:Z

    .line 10
    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput-boolean v1, v0, Lx9/b;->f:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lua/b;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, p0, v2}, Lua/b;-><init>(Lcom/yunpan/appmanage/ui/ActivityAccessibility;I)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lmc/c;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lha/l4;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-direct {v2, p0, v0, p1, v3}, Lha/l4;-><init>(Lda/g;Ljava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
