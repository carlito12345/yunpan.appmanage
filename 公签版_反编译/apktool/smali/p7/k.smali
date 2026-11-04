.class public final Lp7/k;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:Lp7/h;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Lt6/a;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:I

.field public final synthetic k:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    iput-object p1, p0, Lp7/k;->k:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    .line 4
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lp7/k;->j:I

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lp7/k;->e(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->e:I

    .line 14
    .line 15
    sget-object v1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 16
    .line 17
    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->f:I

    .line 18
    .line 19
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->g:I

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/material/tabs/TabLayout;->h:I

    .line 22
    .line 23
    invoke-static {p0, p2, v1, v2, v3}, Lx0/k0;->k(Landroid/view/View;IIII)V

    .line 24
    .line 25
    .line 26
    const/16 p2, 0x11

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->E:Z

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    xor-int/2addr p1, p2

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v1, 0x18

    .line 48
    .line 49
    if-lt p2, v1, :cond_0

    .line 50
    .line 51
    new-instance v2, Lw/i;

    .line 52
    .line 53
    const/16 v3, 0x3ea

    .line 54
    .line 55
    invoke-static {p1, v3}, Lx0/b0;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v2, v0, p1}, Lw/i;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Lw/i;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-direct {v2, v0, p1}, Lw/i;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    if-lt p2, v1, :cond_1

    .line 70
    .line 71
    iget-object p1, v2, Lw/i;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroid/view/PointerIcon;

    .line 74
    .line 75
    invoke-static {p1}, Lq/t;->h(Ljava/lang/Object;)Landroid/view/PointerIcon;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1}, Lx0/r0;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method private getBadge()Lt6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private getOrCreateBadge()Lt6/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lt6/a;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lt6/a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lp7/k;->e:Lt6/a;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lp7/k;->b()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Unable to create badge"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lp7/k;->d:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v1, p0, Lp7/k;->e:Lt6/a;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    sget-boolean v0, Lt6/d;->a:Z

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-boolean v3, Lt6/d;->a:Z

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v0}, Lb1/o;->g(Landroid/view/View;)Landroid/view/ViewOverlay;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, v1}, Lb1/o;->p(Landroid/view/ViewOverlay;Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iput-object v2, p0, Lp7/k;->d:Landroid/view/View;

    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lp7/k;->f:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lp7/k;->a()V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    iget-object v1, p0, Lp7/k;->a:Lp7/h;

    .line 19
    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    iget-object v1, p0, Lp7/k;->d:Landroid/view/View;

    .line 23
    .line 24
    if-eq v1, v0, :cond_6

    .line 25
    .line 26
    invoke-virtual {p0}, Lp7/k;->a()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v1, p0, Lp7/k;->e:Lt6/a;

    .line 32
    .line 33
    if-eqz v1, :cond_8

    .line 34
    .line 35
    if-eqz v0, :cond_8

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v1, p0, Lp7/k;->e:Lt6/a;

    .line 59
    .line 60
    iget-object v2, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    if-eq v0, v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 66
    .line 67
    if-eq v0, v2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    sget-boolean v2, Lt6/d;->a:Z

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    move-object v3, v2

    .line 79
    check-cast v3, Landroid/widget/FrameLayout;

    .line 80
    .line 81
    :cond_3
    :goto_0
    sget-boolean v2, Lt6/d;->a:Z

    .line 82
    .line 83
    new-instance v2, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0, v3}, Lt6/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    sget-boolean v2, Lt6/d;->a:Z

    .line 112
    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    invoke-static {v0}, Lb1/o;->g(Landroid/view/View;)Landroid/view/ViewOverlay;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2, v1}, Lb1/o;->x(Landroid/view/ViewOverlay;Landroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    iput-object v0, p0, Lp7/k;->d:Landroid/view/View;

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string v1, "Trying to reference null customBadgeParent"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_6
    invoke-virtual {p0, v0}, Lp7/k;->c(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_7
    invoke-virtual {p0}, Lp7/k;->a()V

    .line 138
    .line 139
    .line 140
    :cond_8
    :goto_2
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lp7/k;->d:Landroid/view/View;

    .line 6
    .line 7
    if-ne p1, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-boolean v1, Lt6/d;->a:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    :cond_1
    :goto_0
    sget-boolean v1, Lt6/d;->a:Z

    .line 31
    .line 32
    new-instance v1, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v2}, Lt6/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp7/k;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp7/k;->a:Lp7/h;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lp7/h;->d:Lcom/google/android/material/tabs/TabLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    iget v0, v0, Lp7/h;->b:I

    .line 20
    .line 21
    if-ne v1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Tab not attached to a TabLayout"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Lp7/k;->setSelected(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lp7/k;->i:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lp7/k;->i:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lp7/k;->k:Lcom/google/android/material/tabs/TabLayout;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v5, v0, Lp7/k;->k:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    iget v6, v5, Lcom/google/android/material/tabs/TabLayout;->t:I

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    move-object/from16 v8, p1

    .line 15
    .line 16
    invoke-static {v8, v6}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    iput-object v6, v0, Lp7/k;->i:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    iget-object v6, v0, Lp7/k;->i:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object v7, v0, Lp7/k;->i:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    :cond_1
    :goto_0
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 43
    .line 44
    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v8, v5, Lcom/google/android/material/tabs/TabLayout;->n:Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    if-eqz v8, :cond_6

    .line 53
    .line 54
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    .line 55
    .line 56
    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 57
    .line 58
    .line 59
    const v9, 0x3727c5ac    # 1.0E-5f

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 63
    .line 64
    .line 65
    const/4 v9, -0x1

    .line 66
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v9, v5, Lcom/google/android/material/tabs/TabLayout;->n:Landroid/content/res/ColorStateList;

    .line 70
    .line 71
    sget-boolean v10, Lk7/d;->a:Z

    .line 72
    .line 73
    sget-object v11, Lk7/d;->b:[I

    .line 74
    .line 75
    sget-object v12, Lk7/d;->d:[I

    .line 76
    .line 77
    sget-object v13, Lk7/d;->f:[I

    .line 78
    .line 79
    sget-object v14, Lk7/d;->j:[I

    .line 80
    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    invoke-static {v9, v13}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-static {v9, v12}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    new-array v1, v1, [[I

    .line 92
    .line 93
    aput-object v14, v1, v4

    .line 94
    .line 95
    aput-object v12, v1, v3

    .line 96
    .line 97
    sget-object v12, Landroid/util/StateSet;->NOTHING:[I

    .line 98
    .line 99
    aput-object v12, v1, v2

    .line 100
    .line 101
    invoke-static {v9, v11}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    filled-new-array {v10, v13, v9}, [I

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    new-instance v10, Landroid/content/res/ColorStateList;

    .line 110
    .line 111
    invoke-direct {v10, v1, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-static {v9, v13}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    sget-object v15, Lk7/d;->g:[I

    .line 120
    .line 121
    invoke-static {v9, v15}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 122
    .line 123
    .line 124
    move-result v16

    .line 125
    sget-object v7, Lk7/d;->h:[I

    .line 126
    .line 127
    invoke-static {v9, v7}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 128
    .line 129
    .line 130
    move-result v17

    .line 131
    sget-object v1, Lk7/d;->i:[I

    .line 132
    .line 133
    invoke-static {v9, v1}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 134
    .line 135
    .line 136
    move-result v19

    .line 137
    invoke-static {v9, v11}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 138
    .line 139
    .line 140
    move-result v20

    .line 141
    sget-object v2, Lk7/d;->c:[I

    .line 142
    .line 143
    invoke-static {v9, v2}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 144
    .line 145
    .line 146
    move-result v21

    .line 147
    invoke-static {v9, v12}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 148
    .line 149
    .line 150
    move-result v22

    .line 151
    sget-object v3, Lk7/d;->e:[I

    .line 152
    .line 153
    invoke-static {v9, v3}, Lk7/d;->a(Landroid/content/res/ColorStateList;[I)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    const/16 v0, 0xa

    .line 158
    .line 159
    new-array v0, v0, [[I

    .line 160
    .line 161
    aput-object v13, v0, v4

    .line 162
    .line 163
    const/4 v13, 0x1

    .line 164
    aput-object v15, v0, v13

    .line 165
    .line 166
    const/4 v13, 0x2

    .line 167
    aput-object v7, v0, v13

    .line 168
    .line 169
    const/4 v7, 0x3

    .line 170
    aput-object v1, v0, v7

    .line 171
    .line 172
    const/4 v1, 0x4

    .line 173
    aput-object v14, v0, v1

    .line 174
    .line 175
    const/4 v1, 0x5

    .line 176
    aput-object v11, v0, v1

    .line 177
    .line 178
    const/4 v1, 0x6

    .line 179
    aput-object v2, v0, v1

    .line 180
    .line 181
    const/4 v1, 0x7

    .line 182
    aput-object v12, v0, v1

    .line 183
    .line 184
    const/16 v1, 0x8

    .line 185
    .line 186
    aput-object v3, v0, v1

    .line 187
    .line 188
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    .line 189
    .line 190
    const/16 v2, 0x9

    .line 191
    .line 192
    aput-object v1, v0, v2

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    move v11, v10

    .line 196
    move/from16 v12, v16

    .line 197
    .line 198
    move/from16 v13, v17

    .line 199
    .line 200
    move/from16 v14, v19

    .line 201
    .line 202
    move v15, v1

    .line 203
    move/from16 v16, v20

    .line 204
    .line 205
    move/from16 v17, v21

    .line 206
    .line 207
    move/from16 v18, v22

    .line 208
    .line 209
    move/from16 v19, v9

    .line 210
    .line 211
    move/from16 v20, v1

    .line 212
    .line 213
    filled-new-array/range {v11 .. v20}, [I

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    new-instance v10, Landroid/content/res/ColorStateList;

    .line 218
    .line 219
    invoke-direct {v10, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 220
    .line 221
    .line 222
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 223
    .line 224
    const/16 v1, 0x15

    .line 225
    .line 226
    if-lt v0, v1, :cond_5

    .line 227
    .line 228
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 229
    .line 230
    iget-boolean v1, v5, Lcom/google/android/material/tabs/TabLayout;->I:Z

    .line 231
    .line 232
    if-eqz v1, :cond_3

    .line 233
    .line 234
    const/4 v6, 0x0

    .line 235
    :cond_3
    if-eqz v1, :cond_4

    .line 236
    .line 237
    const/4 v7, 0x0

    .line 238
    goto :goto_2

    .line 239
    :cond_4
    move-object v7, v8

    .line 240
    :goto_2
    invoke-direct {v0, v10, v6, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 241
    .line 242
    .line 243
    move-object v6, v0

    .line 244
    goto :goto_3

    .line 245
    :cond_5
    invoke-static {v8}, Lcom/bumptech/glide/c;->n0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0, v10}, Lcom/bumptech/glide/c;->f0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 250
    .line 251
    .line 252
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 253
    .line 254
    const/4 v2, 0x2

    .line 255
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 256
    .line 257
    aput-object v6, v2, v4

    .line 258
    .line 259
    const/4 v3, 0x1

    .line 260
    aput-object v0, v2, v3

    .line 261
    .line 262
    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 263
    .line 264
    .line 265
    move-object v6, v1

    .line 266
    :cond_6
    :goto_3
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 267
    .line 268
    move-object/from16 v0, p0

    .line 269
    .line 270
    invoke-static {v0, v6}, Lx0/j0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 274
    .line 275
    .line 276
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp7/k;->a:Lp7/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, v0, Lp7/h;->c:Landroid/view/View;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v2, v1

    .line 10
    :goto_0
    if-eqz v2, :cond_7

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v3, p0, :cond_3

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    check-cast v3, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v3, p0, Lp7/k;->f:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    check-cast v3, Landroid/view/ViewGroup;

    .line 36
    .line 37
    iget-object v4, p0, Lp7/k;->f:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iput-object v2, p0, Lp7/k;->f:Landroid/view/View;

    .line 46
    .line 47
    iget-object v3, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 48
    .line 49
    const/16 v4, 0x8

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget-object v3, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 57
    .line 58
    if-eqz v3, :cond_5

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    :cond_5
    const v3, 0x1020014

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v3, p0, Lp7/k;->g:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    invoke-static {v3}, Lb1/p;->b(Landroid/widget/TextView;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iput v3, p0, Lp7/k;->j:I

    .line 86
    .line 87
    :cond_6
    const v3, 0x1020006

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object v2, p0, Lp7/k;->h:Landroid/widget/ImageView;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_7
    iget-object v2, p0, Lp7/k;->f:Landroid/view/View;

    .line 100
    .line 101
    if-eqz v2, :cond_8

    .line 102
    .line 103
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lp7/k;->f:Landroid/view/View;

    .line 107
    .line 108
    :cond_8
    iput-object v1, p0, Lp7/k;->g:Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v1, p0, Lp7/k;->h:Landroid/widget/ImageView;

    .line 111
    .line 112
    :goto_1
    iget-object v2, p0, Lp7/k;->f:Landroid/view/View;

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    if-nez v2, :cond_11

    .line 116
    .line 117
    iget-object v2, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 118
    .line 119
    const/4 v4, -0x2

    .line 120
    if-nez v2, :cond_a

    .line 121
    .line 122
    sget-boolean v2, Lt6/d;->a:Z

    .line 123
    .line 124
    if-eqz v2, :cond_9

    .line 125
    .line 126
    new-instance v2, Landroid/widget/FrameLayout;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_9
    move-object v2, p0

    .line 148
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    const v6, 0x7f0e006b

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Landroid/widget/ImageView;

    .line 164
    .line 165
    iput-object v5, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 166
    .line 167
    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 168
    .line 169
    .line 170
    :cond_a
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 171
    .line 172
    if-nez v2, :cond_c

    .line 173
    .line 174
    sget-boolean v2, Lt6/d;->a:Z

    .line 175
    .line 176
    if-eqz v2, :cond_b

    .line 177
    .line 178
    new-instance v2, Landroid/widget/FrameLayout;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 188
    .line 189
    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_b
    move-object v2, p0

    .line 200
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    const v5, 0x7f0e006c

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Landroid/widget/TextView;

    .line 216
    .line 217
    iput-object v3, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-static {v2}, Lb1/p;->b(Landroid/widget/TextView;)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    iput v2, p0, Lp7/k;->j:I

    .line 229
    .line 230
    :cond_c
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 231
    .line 232
    iget-object v3, p0, Lp7/k;->k:Lcom/google/android/material/tabs/TabLayout;

    .line 233
    .line 234
    iget v4, v3, Lcom/google/android/material/tabs/TabLayout;->i:I

    .line 235
    .line 236
    invoke-static {v2, v4}, Ld/b;->o0(Landroid/widget/TextView;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_d

    .line 244
    .line 245
    iget v2, v3, Lcom/google/android/material/tabs/TabLayout;->k:I

    .line 246
    .line 247
    const/4 v4, -0x1

    .line 248
    if-eq v2, v4, :cond_d

    .line 249
    .line 250
    iget-object v4, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 251
    .line 252
    invoke-static {v4, v2}, Ld/b;->o0(Landroid/widget/TextView;I)V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_d
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 257
    .line 258
    iget v4, v3, Lcom/google/android/material/tabs/TabLayout;->j:I

    .line 259
    .line 260
    invoke-static {v2, v4}, Ld/b;->o0(Landroid/widget/TextView;I)V

    .line 261
    .line 262
    .line 263
    :goto_4
    iget-object v2, v3, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/content/res/ColorStateList;

    .line 264
    .line 265
    if-eqz v2, :cond_e

    .line 266
    .line 267
    iget-object v3, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    .line 271
    .line 272
    :cond_e
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 273
    .line 274
    iget-object v3, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 275
    .line 276
    const/4 v4, 0x1

    .line 277
    invoke-virtual {p0, v2, v3, v4}, Lp7/k;->g(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lp7/k;->b()V

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 284
    .line 285
    if-nez v2, :cond_f

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_f
    new-instance v3, Lp7/j;

    .line 289
    .line 290
    invoke-direct {v3, p0, v2}, Lp7/j;-><init>(Lp7/k;Landroid/view/View;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 294
    .line 295
    .line 296
    :goto_5
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 297
    .line 298
    if-nez v2, :cond_10

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_10
    new-instance v3, Lp7/j;

    .line 302
    .line 303
    invoke-direct {v3, p0, v2}, Lp7/j;-><init>(Lp7/k;Landroid/view/View;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_11
    iget-object v2, p0, Lp7/k;->g:Landroid/widget/TextView;

    .line 311
    .line 312
    if-nez v2, :cond_12

    .line 313
    .line 314
    iget-object v4, p0, Lp7/k;->h:Landroid/widget/ImageView;

    .line 315
    .line 316
    if-eqz v4, :cond_13

    .line 317
    .line 318
    :cond_12
    iget-object v4, p0, Lp7/k;->h:Landroid/widget/ImageView;

    .line 319
    .line 320
    invoke-virtual {p0, v2, v4, v3}, Lp7/k;->g(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 321
    .line 322
    .line 323
    :cond_13
    :goto_6
    if-eqz v0, :cond_14

    .line 324
    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-nez v0, :cond_14

    .line 330
    .line 331
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    :cond_14
    return-void
.end method

.method public final g(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lp7/k;->a:Lp7/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lp7/h;->a:Ljava/lang/String;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    const/16 v2, 0x8

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    iget-object v5, p0, Lp7/k;->a:Lp7/h;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v5, 0x0

    .line 37
    :goto_1
    if-nez v3, :cond_3

    .line 38
    .line 39
    move-object v6, v0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    move-object v6, v1

    .line 42
    :goto_2
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    const/16 v6, 0x8

    .line 50
    .line 51
    :goto_3
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    if-nez v3, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_5
    const/4 v5, 0x0

    .line 61
    :cond_6
    :goto_4
    if-eqz p3, :cond_9

    .line 62
    .line 63
    if-eqz p2, :cond_9

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    .line 71
    if-eqz v5, :cond_7

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-nez p3, :cond_7

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-static {p3, v2}, Lg7/l;->d(Landroid/content/Context;I)F

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    float-to-int p3, p3

    .line 88
    goto :goto_5

    .line 89
    :cond_7
    const/4 p3, 0x0

    .line 90
    :goto_5
    iget-object v2, p0, Lp7/k;->k:Lcom/google/android/material/tabs/TabLayout;

    .line 91
    .line 92
    iget-boolean v2, v2, Lcom/google/android/material/tabs/TabLayout;->E:Z

    .line 93
    .line 94
    if-eqz v2, :cond_8

    .line 95
    .line 96
    invoke-static {p1}, Lx0/p;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eq p3, v2, :cond_9

    .line 101
    .line 102
    invoke-static {p1, p3}, Lx0/p;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 103
    .line 104
    .line 105
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_8
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 115
    .line 116
    if-eq p3, v2, :cond_9

    .line 117
    .line 118
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    .line 120
    invoke-static {p1, v4}, Lx0/p;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 127
    .line 128
    .line 129
    :cond_9
    :goto_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 p2, 0x15

    .line 132
    .line 133
    if-lt p1, p2, :cond_a

    .line 134
    .line 135
    const/16 p2, 0x17

    .line 136
    .line 137
    if-le p1, p2, :cond_c

    .line 138
    .line 139
    :cond_a
    if-nez v3, :cond_b

    .line 140
    .line 141
    move-object v1, v0

    .line 142
    :cond_b
    invoke-static {p0, v1}, Lq4/a;->a0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    :cond_c
    return-void
.end method

.method public getContentHeight()I
    .locals 9

    .line 1
    iget-object v0, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Lp7/k;->f:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v4, v3, [Landroid/view/View;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v0, v4, v5

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v4, v0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aput-object v2, v4, v1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v5, v3, :cond_3

    .line 23
    .line 24
    aget-object v7, v4, v5

    .line 25
    .line 26
    if-eqz v7, :cond_2

    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-nez v8, :cond_2

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_1
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_2
    const/4 v6, 0x1

    .line 65
    :cond_2
    add-int/2addr v5, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sub-int/2addr v1, v2

    .line 68
    return v1
.end method

.method public getContentWidth()I
    .locals 9

    .line 1
    iget-object v0, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Lp7/k;->f:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v4, v3, [Landroid/view/View;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v0, v4, v5

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v4, v0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aput-object v2, v4, v1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v5, v3, :cond_3

    .line 23
    .line 24
    aget-object v7, v4, v5

    .line 25
    .line 26
    if-eqz v7, :cond_2

    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-nez v8, :cond_2

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_1
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_2
    const/4 v6, 0x1

    .line 65
    :cond_2
    add-int/2addr v5, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sub-int/2addr v1, v2

    .line 68
    return v1
.end method

.method public getTab()Lp7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/k;->a:Lp7/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", "

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lp7/k;->e:Lt6/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    iget-object v4, v0, Lt6/a;->e:Lt6/c;

    .line 45
    .line 46
    iget-object v4, v4, Lt6/c;->b:Lt6/b;

    .line 47
    .line 48
    iget-object v6, v4, Lt6/b;->j:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v7, 0x0

    .line 55
    :goto_0
    if-eqz v7, :cond_3

    .line 56
    .line 57
    iget-object v0, v4, Lt6/b;->p:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    move-object v5, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object v5, v6

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {v0}, Lt6/a;->f()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_7

    .line 70
    .line 71
    iget v6, v4, Lt6/b;->r:I

    .line 72
    .line 73
    if-eqz v6, :cond_8

    .line 74
    .line 75
    iget-object v6, v0, Lt6/a;->a:Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Landroid/content/Context;

    .line 82
    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget v5, v0, Lt6/a;->h:I

    .line 87
    .line 88
    const/4 v7, -0x2

    .line 89
    if-eq v5, v7, :cond_6

    .line 90
    .line 91
    invoke-virtual {v0}, Lt6/a;->d()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    iget v7, v0, Lt6/a;->h:I

    .line 96
    .line 97
    if-gt v5, v7, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iget v0, v4, Lt6/b;->s:I

    .line 101
    .line 102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-array v5, v2, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v4, v5, v1

    .line 109
    .line 110
    invoke-virtual {v6, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    :goto_1
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iget v4, v4, Lt6/b;->r:I

    .line 120
    .line 121
    invoke-virtual {v0}, Lt6/a;->d()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-virtual {v0}, Lt6/a;->d()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-array v7, v2, [Ljava/lang/Object;

    .line 134
    .line 135
    aput-object v0, v7, v1

    .line 136
    .line 137
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    goto :goto_2

    .line 142
    :cond_7
    iget-object v5, v4, Lt6/b;->q:Ljava/lang/CharSequence;

    .line 143
    .line 144
    :cond_8
    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :cond_9
    iget-object v0, p0, Lp7/k;->a:Lp7/h;

    .line 155
    .line 156
    iget v0, v0, Lp7/h;->b:I

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-static {v1, v2, v0, v2, v3}, Ly0/m;->a(IIIIZ)Ly0/m;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 167
    .line 168
    const/16 v3, 0x13

    .line 169
    .line 170
    if-lt v2, v3, :cond_a

    .line 171
    .line 172
    iget-object v0, v0, Ly0/m;->a:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-static {v0}, Lvb/b;->e(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {p1, v0}, Lvb/b;->h(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_b

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 188
    .line 189
    .line 190
    sget-object v0, Ly0/f;->e:Ly0/f;

    .line 191
    .line 192
    const/16 v1, 0x15

    .line 193
    .line 194
    if-lt v2, v1, :cond_b

    .line 195
    .line 196
    iget-object v0, v0, Ly0/f;->a:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-static {v0}, Lwa/h;->g(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {p1, v0}, Lwa/h;->u(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 203
    .line 204
    .line 205
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const v1, 0x7f1300c1

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-lt v2, v3, :cond_c

    .line 217
    .line 218
    invoke-static {p1}, Ly0/g;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v1, "AccessibilityNodeInfo.roleDescription"

    .line 223
    .line 224
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    :cond_c
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lp7/k;->k:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lez v3, :cond_1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-le v0, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    iget p1, v2, Lcom/google/android/material/tabs/TabLayout;->v:I

    .line 22
    .line 23
    const/high16 v0, -0x80000000

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->r:F

    .line 37
    .line 38
    iget v1, p0, Lp7/k;->j:I

    .line 39
    .line 40
    iget-object v3, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-le v3, v4, :cond_3

    .line 62
    .line 63
    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->s:F

    .line 64
    .line 65
    :cond_3
    :goto_0
    iget-object v3, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v5, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iget-object v6, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-static {v6}, Lb1/p;->b(Landroid/widget/TextView;)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    cmpl-float v7, v0, v3

    .line 84
    .line 85
    if-nez v7, :cond_4

    .line 86
    .line 87
    if-ltz v6, :cond_6

    .line 88
    .line 89
    if-eq v1, v6, :cond_6

    .line 90
    .line 91
    :cond_4
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->D:I

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    if-ne v2, v4, :cond_5

    .line 95
    .line 96
    cmpl-float v2, v0, v3

    .line 97
    .line 98
    if-lez v2, :cond_5

    .line 99
    .line 100
    if-ne v5, v4, :cond_5

    .line 101
    .line 102
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineWidth(I)F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    div-float v2, v0, v2

    .line 123
    .line 124
    mul-float v2, v2, v3

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    sub-int/2addr v3, v4

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    sub-int/2addr v3, v4

    .line 140
    int-to-float v3, v3

    .line 141
    cmpl-float v2, v2, v3

    .line 142
    .line 143
    if-lez v2, :cond_5

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    iget-object v2, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 154
    .line 155
    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_1
    return-void
.end method

.method public final performClick()Z
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lp7/k;->a:Lp7/h;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lp7/k;->a:Lp7/h;

    .line 16
    .line 17
    iget-object v1, v0, Lp7/h;->d:Lcom/google/android/material/tabs/TabLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->j(Lp7/h;Z)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "Tab not attached to a TabLayout"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_2
    return v0
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lp7/k;->b:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lp7/k;->c:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lp7/k;->f:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public setTab(Lp7/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/k;->a:Lp7/h;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lp7/k;->a:Lp7/h;

    .line 6
    .line 7
    invoke-virtual {p0}, Lp7/k;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
