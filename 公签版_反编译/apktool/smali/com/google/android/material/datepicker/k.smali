.class public final Lcom/google/android/material/datepicker/k;
.super Lcom/google/android/material/datepicker/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/u;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/google/android/material/datepicker/b;

.field public d:Lcom/google/android/material/datepicker/p;

.field public e:I

.field public f:Lcom/google/android/material/datepicker/c;

.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/u;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/material/datepicker/p;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/t;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/material/datepicker/t;->d:Lcom/google/android/material/datepicker/b;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/p;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/p;->d(Lcom/google/android/material/datepicker/p;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/material/datepicker/t;->d:Lcom/google/android/material/datepicker/b;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/p;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/p;->d(Lcom/google/android/material/datepicker/p;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int v0, v1, v0

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-le v2, v3, :cond_0

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    add-int/lit8 v0, v1, -0x3

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    new-instance v0, Landroidx/emoji2/text/j;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-direct {v0, v1, v2, p0}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    add-int/lit8 v0, v1, 0x3

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    new-instance v0, Landroidx/emoji2/text/j;

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-direct {v0, v1, v2, p0}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    new-instance v0, Landroidx/emoji2/text/j;

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-direct {v0, v1, v2, p0}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method

.method public final h(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/k;->e:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/material/datepicker/z;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 24
    .line 25
    iget v3, v3, Lcom/google/android/material/datepicker/p;->c:I

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/material/datepicker/z;->d:Lcom/google/android/material/datepicker/k;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/b;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/p;

    .line 32
    .line 33
    iget v0, v0, Lcom/google/android/material/datepicker/p;->c:I

    .line 34
    .line 35
    sub-int/2addr v3, v0

    .line 36
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->k:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->l:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->i:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->j:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x1

    .line 61
    if-ne p1, v0, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->k:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->l:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->i:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->j:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/k;->g(Lcom/google/android/material/datepicker/p;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/datepicker/k;->b:I

    .line 17
    .line 18
    const-string v0, "GRID_SELECTOR_KEY"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/material/datepicker/b;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/b;

    .line 35
    .line 36
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-string v0, "CURRENT_MONTH_KEY"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/material/datepicker/p;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/k;->b:I

    .line 8
    .line 9
    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/material/datepicker/c;

    .line 13
    .line 14
    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/material/datepicker/k;->f:Lcom/google/android/material/datepicker/c;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/b;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/p;

    .line 26
    .line 27
    const v1, 0x101020d

    .line 28
    .line 29
    .line 30
    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/n;->k(Landroid/content/Context;I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const v2, 0x7f0e01e2

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v2, 0x7f0e01dd

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const v2, 0x7f070540

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const v6, 0x7f070541

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    add-int/2addr v6, v2

    .line 74
    const v2, 0x7f07053f

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    add-int/2addr v2, v6

    .line 82
    const v6, 0x7f070530

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    sget v7, Lcom/google/android/material/datepicker/q;->d:I

    .line 90
    .line 91
    const v8, 0x7f07052b

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    mul-int v8, v8, v7

    .line 99
    .line 100
    sub-int/2addr v7, v3

    .line 101
    const v9, 0x7f07053e

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    mul-int v9, v9, v7

    .line 109
    .line 110
    add-int/2addr v9, v8

    .line 111
    const v7, 0x7f070528

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    add-int/2addr v2, v6

    .line 119
    add-int/2addr v2, v9

    .line 120
    add-int/2addr v2, p2

    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 122
    .line 123
    .line 124
    const p2, 0x7f0b021a

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Landroid/widget/GridView;

    .line 132
    .line 133
    new-instance v2, Lb1/i;

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    invoke-direct {v2, v6}, Lb1/i;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v2}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/b;

    .line 143
    .line 144
    iget v2, v2, Lcom/google/android/material/datepicker/b;->e:I

    .line 145
    .line 146
    new-instance v6, Lcom/google/android/material/datepicker/e;

    .line 147
    .line 148
    if-lez v2, :cond_1

    .line 149
    .line 150
    invoke-direct {v6, v2}, Lcom/google/android/material/datepicker/e;-><init>(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    invoke-direct {v6}, Lcom/google/android/material/datepicker/e;-><init>()V

    .line 155
    .line 156
    .line 157
    :goto_1
    invoke-virtual {p2, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    .line 159
    .line 160
    iget v0, v0, Lcom/google/android/material/datepicker/p;->d:I

    .line 161
    .line 162
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    .line 167
    .line 168
    const p2, 0x7f0b021d

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    .line 177
    iput-object p2, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    new-instance p2, Lcom/google/android/material/datepicker/g;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    invoke-direct {p2, p0, v5, v5}, Lcom/google/android/material/datepicker/g;-><init>(Lcom/google/android/material/datepicker/k;II)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    .line 189
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 190
    .line 191
    .line 192
    iget-object p2, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 193
    .line 194
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 195
    .line 196
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    new-instance p2, Lcom/google/android/material/datepicker/t;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/b;

    .line 202
    .line 203
    new-instance v2, La1/i;

    .line 204
    .line 205
    const/16 v5, 0xa

    .line 206
    .line 207
    invoke-direct {v2, v5, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p2, p3, v0, v2}, Lcom/google/android/material/datepicker/t;-><init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/b;La1/i;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const v2, 0x7f0c0056

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    const v2, 0x7f0b0220

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 237
    .line 238
    iput-object v5, p0, Lcom/google/android/material/datepicker/k;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    if-eqz v5, :cond_2

    .line 241
    .line 242
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 243
    .line 244
    .line 245
    iget-object v5, p0, Lcom/google/android/material/datepicker/k;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    .line 247
    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 248
    .line 249
    invoke-direct {v6, v0, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(IIZ)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 256
    .line 257
    new-instance v4, Lcom/google/android/material/datepicker/z;

    .line 258
    .line 259
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/z;-><init>(Lcom/google/android/material/datepicker/k;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    .line 267
    new-instance v4, Lcom/google/android/material/datepicker/h;

    .line 268
    .line 269
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/h;-><init>(Lcom/google/android/material/datepicker/k;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 273
    .line 274
    .line 275
    :cond_2
    const v0, 0x7f0b0212

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    if-eqz v4, :cond_3

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 289
    .line 290
    const-string v4, "SELECTOR_TOGGLE_TAG"

    .line 291
    .line 292
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    new-instance v4, Lcom/google/android/material/datepicker/i;

    .line 296
    .line 297
    const/4 v5, 0x0

    .line 298
    invoke-direct {v4, v5, p0}, Lcom/google/android/material/datepicker/i;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v0, v4}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 302
    .line 303
    .line 304
    const v4, 0x7f0b0214

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    iput-object v4, p0, Lcom/google/android/material/datepicker/k;->i:Landroid/view/View;

    .line 312
    .line 313
    const-string v5, "NAVIGATION_PREV_TAG"

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    const v4, 0x7f0b0213

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    iput-object v4, p0, Lcom/google/android/material/datepicker/k;->j:Landroid/view/View;

    .line 326
    .line 327
    const-string v5, "NAVIGATION_NEXT_TAG"

    .line 328
    .line 329
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    iput-object v2, p0, Lcom/google/android/material/datepicker/k;->k:Landroid/view/View;

    .line 337
    .line 338
    const v2, 0x7f0b0219

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iput-object v2, p0, Lcom/google/android/material/datepicker/k;->l:Landroid/view/View;

    .line 346
    .line 347
    invoke-virtual {p0, v3}, Lcom/google/android/material/datepicker/k;->h(I)V

    .line 348
    .line 349
    .line 350
    iget-object v2, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 351
    .line 352
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/p;->c()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    iget-object v2, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 360
    .line 361
    new-instance v3, Lcom/google/android/material/datepicker/j;

    .line 362
    .line 363
    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/material/datepicker/j;-><init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/t;Lcom/google/android/material/button/MaterialButton;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/d2;)V

    .line 367
    .line 368
    .line 369
    new-instance v2, Landroidx/leanback/widget/h0;

    .line 370
    .line 371
    const/4 v3, 0x1

    .line 372
    invoke-direct {v2, v3, p0}, Landroidx/leanback/widget/h0;-><init>(ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->j:Landroid/view/View;

    .line 379
    .line 380
    new-instance v2, Lcom/google/android/material/datepicker/f;

    .line 381
    .line 382
    invoke-direct {v2, p0, p2, v3}, Lcom/google/android/material/datepicker/f;-><init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/t;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->i:Landroid/view/View;

    .line 389
    .line 390
    new-instance v2, Lcom/google/android/material/datepicker/f;

    .line 391
    .line 392
    const/4 v3, 0x0

    .line 393
    invoke-direct {v2, p0, p2, v3}, Lcom/google/android/material/datepicker/f;-><init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/t;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    .line 398
    .line 399
    :cond_3
    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/n;->k(Landroid/content/Context;I)Z

    .line 400
    .line 401
    .line 402
    move-result p3

    .line 403
    if-nez p3, :cond_4

    .line 404
    .line 405
    new-instance p3, Landroidx/recyclerview/widget/h1;

    .line 406
    .line 407
    invoke-direct {p3}, Landroidx/recyclerview/widget/h1;-><init>()V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 411
    .line 412
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/w2;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 413
    .line 414
    .line 415
    :cond_4
    iget-object p3, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 416
    .line 417
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 418
    .line 419
    iget-object p2, p2, Lcom/google/android/material/datepicker/t;->d:Lcom/google/android/material/datepicker/b;

    .line 420
    .line 421
    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/p;

    .line 422
    .line 423
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/p;->d(Lcom/google/android/material/datepicker/p;)I

    .line 424
    .line 425
    .line 426
    move-result p2

    .line 427
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 428
    .line 429
    .line 430
    iget-object p2, p0, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 431
    .line 432
    new-instance p3, Lb1/i;

    .line 433
    .line 434
    const/4 v0, 0x2

    .line 435
    invoke-direct {p3, v0}, Lb1/i;-><init>(I)V

    .line 436
    .line 437
    .line 438
    invoke-static {p2, p3}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 439
    .line 440
    .line 441
    return-object p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "THEME_RES_ID_KEY"

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/datepicker/k;->b:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "GRID_SELECTOR_KEY"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/b;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "CURRENT_MONTH_KEY"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
