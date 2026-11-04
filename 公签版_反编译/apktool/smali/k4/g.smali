.class public abstract Lk4/g;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final M:[I

.field public static final N:La5/a;

.field public static final O:Landroidx/recyclerview/widget/o0;

.field public static final P:La5/a;


# instance fields
.field public A:Z

.field public B:I

.field public C:Ljava/util/ArrayList;

.field public D:Lk4/e;

.field public E:Ljava/util/ArrayList;

.field public F:Ls9/a;

.field public G:I

.field public H:I

.field public I:Ljava/util/ArrayList;

.field public final K:Landroidx/activity/h;

.field public L:I

.field public a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:Lk4/c;

.field public d:Lk4/a;

.field public e:I

.field public f:I

.field public g:Landroid/os/Parcelable;

.field public h:Landroid/widget/Scroller;

.field public i:Z

.field public j:Lc1/b;

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public n:I

.field public p:F

.field public q:F

.field public r:I

.field public s:Z

.field public t:Z

.field public v:I

.field public final w:I

.field public final x:Landroid/widget/EdgeEffect;

.field public final y:Landroid/widget/EdgeEffect;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100b3

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lk4/g;->M:[I

    .line 9
    .line 10
    new-instance v0, La5/a;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-direct {v0, v1}, La5/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lk4/g;->N:La5/a;

    .line 18
    .line 19
    new-instance v0, Landroidx/recyclerview/widget/o0;

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/o0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lk4/g;->O:Landroidx/recyclerview/widget/o0;

    .line 26
    .line 27
    new-instance v0, La5/a;

    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    invoke-direct {v0, v1}, La5/a;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lk4/g;->P:La5/a;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Lk4/c;

    .line 12
    .line 13
    invoke-direct {p1}, Lk4/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lk4/g;->c:Lk4/c;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lk4/g;->f:I

    .line 25
    .line 26
    const p1, -0x800001

    .line 27
    .line 28
    .line 29
    iput p1, p0, Lk4/g;->p:F

    .line 30
    .line 31
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 32
    .line 33
    .line 34
    iput p1, p0, Lk4/g;->q:F

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lk4/g;->v:I

    .line 38
    .line 39
    iput-boolean p1, p0, Lk4/g;->z:Z

    .line 40
    .line 41
    new-instance p2, Landroidx/activity/h;

    .line 42
    .line 43
    const/16 v0, 0xc

    .line 44
    .line 45
    invoke-direct {p2, v0, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lk4/g;->K:Landroidx/activity/h;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lk4/g;->L:I

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 54
    .line 55
    .line 56
    const/high16 p2, 0x40000

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v0, Landroid/widget/Scroller;

    .line 69
    .line 70
    sget-object v1, Lk4/g;->O:Landroidx/recyclerview/widget/o0;

    .line 71
    .line 72
    invoke-direct {v0, p2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 76
    .line 77
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 95
    .line 96
    .line 97
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 98
    .line 99
    invoke-direct {v0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lk4/g;->x:Landroid/widget/EdgeEffect;

    .line 103
    .line 104
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 105
    .line 106
    invoke-direct {v0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lk4/g;->y:Landroid/widget/EdgeEffect;

    .line 110
    .line 111
    const/high16 p2, 0x41800000    # 16.0f

    .line 112
    .line 113
    mul-float v1, v1, p2

    .line 114
    .line 115
    float-to-int p2, v1

    .line 116
    iput p2, p0, Lk4/g;->w:I

    .line 117
    .line 118
    new-instance p2, Lcom/google/android/material/datepicker/i;

    .line 119
    .line 120
    const/4 v0, 0x3

    .line 121
    invoke-direct {p2, v0, p0}, Lcom/google/android/material/datepicker/i;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p2}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0}, Lx0/j0;->c(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-nez p2, :cond_0

    .line 132
    .line 133
    invoke-static {p0, p1}, Lx0/b1;->B(Landroid/view/View;I)V

    .line 134
    .line 135
    .line 136
    :cond_0
    new-instance p1, La2/g1;

    .line 137
    .line 138
    invoke-direct {p1, p0}, La2/g1;-><init>(Lk4/g;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p1}, Lx0/b1;->C(Landroid/view/View;Lx0/x;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk4/g;->t:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lk4/g;->t:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Lk4/c;
    .locals 11

    .line 1
    new-instance v0, Lk4/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lk4/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lk4/c;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Lk4/g;->d:Lk4/a;

    .line 9
    .line 10
    check-cast v1, Lx9/k2;

    .line 11
    .line 12
    iget-object v2, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 13
    .line 14
    iget-object v3, v1, Lx9/k2;->b:Landroidx/fragment/app/e1;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroidx/fragment/app/a;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 27
    .line 28
    :cond_0
    int-to-long v4, p1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v7, "android:switcher:"

    .line 36
    .line 37
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ":"

    .line 44
    .line 45
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v3, v6}, Landroidx/fragment/app/d1;->C(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/4 v6, 0x1

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget-object p1, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v2, Landroidx/fragment/app/m1;

    .line 68
    .line 69
    const/4 v4, 0x7

    .line 70
    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/m1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/m1;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v3, v1, Lx9/k2;->h:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    move-object v3, p1

    .line 84
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 85
    .line 86
    iget-object p1, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    new-instance v10, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p1, v8, v3, v2, v6}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    :goto_0
    iget-object p1, v1, Lx9/k2;->e:Landroidx/fragment/app/Fragment;

    .line 118
    .line 119
    if-eq v3, p1, :cond_3

    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 123
    .line 124
    .line 125
    iget v2, v1, Lx9/k2;->c:I

    .line 126
    .line 127
    if-ne v2, v6, :cond_2

    .line 128
    .line 129
    iget-object p1, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 130
    .line 131
    sget-object v2, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 132
    .line 133
    invoke-virtual {p1, v3, v2}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 138
    .line 139
    .line 140
    :cond_3
    :goto_1
    iget-object p1, v1, Lx9/k2;->g:Landroidx/fragment/app/e1;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    new-instance v1, Landroidx/fragment/app/a;

    .line 146
    .line 147
    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3}, Landroidx/fragment/app/a;->k(Landroidx/fragment/app/Fragment;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v6}, Landroidx/fragment/app/a;->d(Z)I

    .line 154
    .line 155
    .line 156
    iput-object v3, v0, Lk4/c;->a:Landroidx/fragment/app/Fragment;

    .line 157
    .line 158
    iget-object p1, p0, Lk4/g;->d:Lk4/a;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    const/high16 p1, 0x3f800000    # 1.0f

    .line 164
    .line 165
    iput p1, v0, Lk4/c;->d:F

    .line 166
    .line 167
    iget-object p1, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 168
    .line 169
    if-ltz p2, :cond_5

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-lt p2, v1, :cond_4

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :goto_3
    return-object v0
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget v4, v4, Lk4/c;->b:I

    .line 37
    .line 38
    iget v5, p0, Lk4/g;->e:I

    .line 39
    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/high16 p2, 0x40000

    .line 49
    .line 50
    if-ne v1, p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne v0, p2, :cond_5

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_5
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget v2, v2, Lk4/c;->b:I

    .line 25
    .line 26
    iget v3, p0, Lk4/g;->e:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lk4/g;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p3, Lk4/d;

    .line 8
    .line 9
    invoke-direct {p3}, Lk4/d;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    move-object v0, p3

    .line 13
    check-cast v0, Lk4/d;

    .line 14
    .line 15
    iget-boolean v1, v0, Lk4/d;->a:Z

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-class v3, Lk4/b;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    or-int/2addr v1, v2

    .line 34
    iput-boolean v1, v0, Lk4/d;->a:Z

    .line 35
    .line 36
    iget-boolean v2, p0, Lk4/g;->s:Z

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iput-boolean v3, v0, Lk4/d;->d:Z

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "Cannot add pager decor view during layout"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method public final b(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lk4/g;->L:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v3}, Lk4/g;->setScrollingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget-object v6, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ne v1, v5, :cond_1

    .line 50
    .line 51
    if-eq v4, v6, :cond_2

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 54
    .line 55
    .line 56
    if-eq v5, v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v5}, Lk4/g;->h(I)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    :goto_1
    iget-object v4, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ge v1, v5, :cond_4

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lk4/c;

    .line 75
    .line 76
    iget-boolean v5, v4, Lk4/c;->c:Z

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    iput-boolean v3, v4, Lk4/c;->c:Z

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    :cond_3
    add-int/2addr v1, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    if-eqz v0, :cond_6

    .line 86
    .line 87
    iget-object v0, p0, Lk4/g;->K:Landroidx/activity/h;

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    sget-object p1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 92
    .line 93
    invoke-static {p0, v0}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {v0}, Landroidx/activity/h;->run()V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_2
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk4/a;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lk4/g;->a:I

    .line 8
    .line 9
    iget-object v1, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Lk4/g;->v:I

    .line 16
    .line 17
    mul-int/lit8 v3, v3, 0x2

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    add-int/2addr v3, v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    iget v2, p0, Lk4/g;->e:I

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v3, v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lk4/c;

    .line 47
    .line 48
    iget-object v7, p0, Lk4/g;->d:Lk4/a;

    .line 49
    .line 50
    iget-object v6, v6, Lk4/c;->a:Landroidx/fragment/app/Fragment;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object v3, Lk4/g;->N:La5/a;

    .line 59
    .line 60
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_2
    if-ge v1, v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lk4/d;

    .line 81
    .line 82
    iget-boolean v6, v3, Lk4/d;->a:Z

    .line 83
    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    iput v6, v3, Lk4/d;->c:F

    .line 88
    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {p0, v2, v5, v4}, Lk4/g;->m(IZZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lk4/g;->getClientWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    int-to-float p1, v0

    .line 19
    iget v0, p0, Lk4/g;->p:F

    .line 20
    .line 21
    mul-float p1, p1, v0

    .line 22
    .line 23
    float-to-int p1, p1

    .line 24
    if-le v2, p1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    if-lez p1, :cond_3

    .line 29
    .line 30
    int-to-float p1, v0

    .line 31
    iget v0, p0, Lk4/g;->q:F

    .line 32
    .line 33
    mul-float p1, p1, v0

    .line 34
    .line 35
    float-to-int p1, p1

    .line 36
    if-ge v2, p1, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_3
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lk4/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk4/g;->i:Z

    .line 3
    .line 4
    iget-object v1, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    if-eq v1, v3, :cond_1

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lk4/g;->h(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-static {p0}, Lx0/j0;->k(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0, v0}, Lk4/g;->b(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/g;->D:Lk4/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lp7/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lp7/i;->b(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lk4/g;->C:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lk4/g;->C:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lk4/e;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v2, Lp7/i;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lp7/i;->b(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget v4, v4, Lk4/c;->b:I

    .line 39
    .line 40
    iget v5, p0, Lk4/g;->e:I

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lk4/g;->y:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    iget-object v1, p0, Lk4/g;->x:Landroid/widget/EdgeEffect;

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lk4/g;->d:Lk4/a;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lk4/a;->c()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-le v2, v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sub-int/2addr v3, v4

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    sub-int/2addr v3, v4

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/high16 v5, 0x43870000    # 270.0f

    .line 65
    .line 66
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 67
    .line 68
    .line 69
    neg-int v5, v3

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    add-int/2addr v6, v5

    .line 75
    int-to-float v5, v6

    .line 76
    iget v6, p0, Lk4/g;->p:F

    .line 77
    .line 78
    int-to-float v7, v4

    .line 79
    mul-float v6, v6, v7

    .line 80
    .line 81
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    sub-int/2addr v4, v5

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    sub-int/2addr v4, v5

    .line 122
    const/high16 v5, 0x42b40000    # 90.0f

    .line 123
    .line 124
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    neg-int v5, v5

    .line 132
    int-to-float v5, v5

    .line 133
    iget v6, p0, Lk4/g;->q:F

    .line 134
    .line 135
    const/high16 v7, 0x3f800000    # 1.0f

    .line 136
    .line 137
    add-float/2addr v6, v7

    .line 138
    neg-float v6, v6

    .line 139
    int-to-float v7, v2

    .line 140
    mul-float v6, v6, v7

    .line 141
    .line 142
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v4, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    or-int/2addr v3, v0

    .line 153
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 157
    .line 158
    sget-object p1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 159
    .line 160
    invoke-static {p0}, Lx0/j0;->k(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk4/g;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;)Lk4/c;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lk4/c;

    .line 15
    .line 16
    iget-object v2, p0, Lk4/g;->d:Lk4/a;

    .line 17
    .line 18
    iget-object v3, v1, Lk4/c;->a:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    check-cast v2, Lx9/k2;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-ne v2, p1, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final f(I)Lk4/c;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lk4/c;

    .line 15
    .line 16
    iget v2, v1, Lk4/c;->b:I

    .line 17
    .line 18
    if-ne v2, p1, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public final g(IFI)V
    .locals 11

    .line 1
    iget p3, p0, Lk4/g;->B:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lez p3, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_0
    if-ge v6, v5, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lk4/d;

    .line 39
    .line 40
    iget-boolean v9, v8, Lk4/d;->a:Z

    .line 41
    .line 42
    if-nez v9, :cond_0

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget v8, v8, Lk4/d;->b:I

    .line 46
    .line 47
    and-int/lit8 v8, v8, 0x7

    .line 48
    .line 49
    if-eq v8, v1, :cond_3

    .line 50
    .line 51
    const/4 v9, 0x3

    .line 52
    if-eq v8, v9, :cond_2

    .line 53
    .line 54
    const/4 v9, 0x5

    .line 55
    if-eq v8, v9, :cond_1

    .line 56
    .line 57
    move v8, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    sub-int v8, v4, v3

    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    sub-int/2addr v8, v9

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    add-int/2addr v3, v9

    .line 71
    :goto_1
    move v10, v8

    .line 72
    move v8, v2

    .line 73
    move v2, v10

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    add-int/2addr v8, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    sub-int v8, v4, v8

    .line 86
    .line 87
    div-int/lit8 v8, v8, 0x2

    .line 88
    .line 89
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    goto :goto_1

    .line 94
    :goto_2
    add-int/2addr v2, p3

    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    sub-int/2addr v2, v9

    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 103
    .line 104
    .line 105
    :cond_4
    move v2, v8

    .line 106
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    iget-object p3, p0, Lk4/g;->D:Lk4/e;

    .line 110
    .line 111
    if-eqz p3, :cond_6

    .line 112
    .line 113
    check-cast p3, Lp7/i;

    .line 114
    .line 115
    invoke-virtual {p3, p2, p1}, Lp7/i;->a(FI)V

    .line 116
    .line 117
    .line 118
    :cond_6
    iget-object p3, p0, Lk4/g;->C:Ljava/util/ArrayList;

    .line 119
    .line 120
    if-eqz p3, :cond_8

    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    const/4 v2, 0x0

    .line 127
    :goto_4
    if-ge v2, p3, :cond_8

    .line 128
    .line 129
    iget-object v3, p0, Lk4/g;->C:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lk4/e;

    .line 136
    .line 137
    if-eqz v3, :cond_7

    .line 138
    .line 139
    check-cast v3, Lp7/i;

    .line 140
    .line 141
    invoke-virtual {v3, p2, p1}, Lp7/i;->a(FI)V

    .line 142
    .line 143
    .line 144
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    iget-object p1, p0, Lk4/g;->F:Ls9/a;

    .line 148
    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    :goto_5
    if-ge v0, p1, :cond_a

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    check-cast p3, Lk4/d;

    .line 169
    .line 170
    iget-boolean p3, p3, Lk4/d;->a:Z

    .line 171
    .line 172
    if-eqz p3, :cond_9

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 176
    .line 177
    .line 178
    invoke-direct {p0}, Lk4/g;->getClientWidth()I

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lk4/g;->F:Ls9/a;

    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_a
    iput-boolean v1, p0, Lk4/g;->A:Z

    .line 190
    .line 191
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lk4/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lk4/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lk4/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk4/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p1, Lk4/d;

    invoke-direct {p1}, Lk4/d;-><init>()V

    return-object p1
.end method

.method public getAdapter()Lk4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lk4/g;->H:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    sub-int p2, p1, p2

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lk4/g;->I:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lk4/d;

    .line 23
    .line 24
    iget p1, p1, Lk4/d;->f:I

    .line 25
    .line 26
    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lk4/g;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lk4/g;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lk4/g;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "onPageScrolled did not call superclass implementation"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-boolean v1, v0, Lk4/g;->z:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return v5

    .line 20
    :cond_0
    iput-boolean v5, v0, Lk4/g;->A:Z

    .line 21
    .line 22
    invoke-virtual {v0, v5, v4, v5}, Lk4/g;->g(IFI)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, v0, Lk4/g;->A:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v5

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_2
    invoke-direct/range {p0 .. p0}, Lk4/g;->getClientWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    int-to-float v6, v6

    .line 47
    int-to-float v7, v2

    .line 48
    div-float/2addr v6, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 v6, 0x0

    .line 51
    :goto_0
    if-lez v2, :cond_4

    .line 52
    .line 53
    iget v7, v0, Lk4/g;->k:I

    .line 54
    .line 55
    int-to-float v7, v7

    .line 56
    int-to-float v2, v2

    .line 57
    div-float/2addr v7, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/4 v7, 0x0

    .line 60
    :goto_1
    const/4 v2, 0x1

    .line 61
    const/4 v8, -0x1

    .line 62
    const/4 v9, 0x0

    .line 63
    move-object v10, v9

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, -0x1

    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v12, 0x1

    .line 68
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    if-ge v11, v13, :cond_9

    .line 73
    .line 74
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    check-cast v13, Lk4/c;

    .line 79
    .line 80
    if-nez v12, :cond_5

    .line 81
    .line 82
    iget v14, v13, Lk4/c;->b:I

    .line 83
    .line 84
    add-int/2addr v9, v2

    .line 85
    if-eq v14, v9, :cond_5

    .line 86
    .line 87
    add-float/2addr v4, v8

    .line 88
    add-float/2addr v4, v7

    .line 89
    iget-object v8, v0, Lk4/g;->c:Lk4/c;

    .line 90
    .line 91
    iput v4, v8, Lk4/c;->e:F

    .line 92
    .line 93
    iput v9, v8, Lk4/c;->b:I

    .line 94
    .line 95
    iget-object v4, v0, Lk4/g;->d:Lk4/a;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    const/high16 v4, 0x3f800000    # 1.0f

    .line 101
    .line 102
    iput v4, v8, Lk4/c;->d:F

    .line 103
    .line 104
    add-int/lit8 v11, v11, -0x1

    .line 105
    .line 106
    move-object v9, v8

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-object v9, v13

    .line 109
    :goto_3
    iget v4, v9, Lk4/c;->e:F

    .line 110
    .line 111
    iget v8, v9, Lk4/c;->d:F

    .line 112
    .line 113
    add-float/2addr v8, v4

    .line 114
    add-float/2addr v8, v7

    .line 115
    if-nez v12, :cond_6

    .line 116
    .line 117
    cmpl-float v12, v6, v4

    .line 118
    .line 119
    if-ltz v12, :cond_9

    .line 120
    .line 121
    :cond_6
    cmpg-float v8, v6, v8

    .line 122
    .line 123
    if-ltz v8, :cond_8

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    sub-int/2addr v8, v2

    .line 130
    if-ne v11, v8, :cond_7

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    iget v8, v9, Lk4/c;->b:I

    .line 134
    .line 135
    iget v10, v9, Lk4/c;->d:F

    .line 136
    .line 137
    add-int/lit8 v11, v11, 0x1

    .line 138
    .line 139
    const/4 v12, 0x0

    .line 140
    move-object v15, v9

    .line 141
    move v9, v8

    .line 142
    move v8, v10

    .line 143
    move-object v10, v15

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    :goto_4
    move-object v10, v9

    .line 146
    :cond_9
    invoke-direct/range {p0 .. p0}, Lk4/g;->getClientWidth()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    iget v4, v0, Lk4/g;->k:I

    .line 151
    .line 152
    add-int v6, v1, v4

    .line 153
    .line 154
    int-to-float v4, v4

    .line 155
    int-to-float v1, v1

    .line 156
    div-float/2addr v4, v1

    .line 157
    iget v7, v10, Lk4/c;->b:I

    .line 158
    .line 159
    move/from16 v8, p1

    .line 160
    .line 161
    int-to-float v8, v8

    .line 162
    div-float/2addr v8, v1

    .line 163
    iget v1, v10, Lk4/c;->e:F

    .line 164
    .line 165
    sub-float/2addr v8, v1

    .line 166
    iget v1, v10, Lk4/c;->d:F

    .line 167
    .line 168
    add-float/2addr v1, v4

    .line 169
    div-float/2addr v8, v1

    .line 170
    int-to-float v1, v6

    .line 171
    mul-float v1, v1, v8

    .line 172
    .line 173
    float-to-int v1, v1

    .line 174
    iput-boolean v5, v0, Lk4/g;->A:Z

    .line 175
    .line 176
    invoke-virtual {v0, v7, v8, v1}, Lk4/g;->g(IFI)V

    .line 177
    .line 178
    .line 179
    iget-boolean v1, v0, Lk4/g;->A:Z

    .line 180
    .line 181
    if-eqz v1, :cond_a

    .line 182
    .line 183
    return v2

    .line 184
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :goto_5
    throw v1

    .line 191
    :goto_6
    goto :goto_5
.end method

.method public final i()V
    .locals 1

    .line 1
    iget v0, p0, Lk4/g;->e:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lk4/g;->j(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lk4/g;->e:I

    .line 6
    .line 7
    if-eq v2, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lk4/g;->f(I)Lk4/c;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput v1, v0, Lk4/g;->e:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v1, v0, Lk4/g;->d:Lk4/a;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lk4/g;->o()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object v1, v0, Lk4/g;->d:Lk4/a;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lk4/a;->e(Lk4/g;)V

    .line 35
    .line 36
    .line 37
    iget v1, v0, Lk4/g;->v:I

    .line 38
    .line 39
    iget v4, v0, Lk4/g;->e:I

    .line 40
    .line 41
    sub-int/2addr v4, v1

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v6, v0, Lk4/g;->d:Lk4/a;

    .line 48
    .line 49
    invoke-virtual {v6}, Lk4/a;->c()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    add-int/lit8 v7, v6, -0x1

    .line 54
    .line 55
    iget v8, v0, Lk4/g;->e:I

    .line 56
    .line 57
    add-int/2addr v8, v1

    .line 58
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget v7, v0, Lk4/g;->a:I

    .line 63
    .line 64
    if-ne v6, v7, :cond_34

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    :goto_1
    iget-object v8, v0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-ge v7, v9, :cond_4

    .line 74
    .line 75
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    check-cast v9, Lk4/c;

    .line 80
    .line 81
    iget v10, v9, Lk4/c;->b:I

    .line 82
    .line 83
    iget v11, v0, Lk4/g;->e:I

    .line 84
    .line 85
    if-lt v10, v11, :cond_3

    .line 86
    .line 87
    if-ne v10, v11, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const/4 v9, 0x0

    .line 94
    :goto_2
    if-nez v9, :cond_5

    .line 95
    .line 96
    if-lez v6, :cond_5

    .line 97
    .line 98
    iget v9, v0, Lk4/g;->e:I

    .line 99
    .line 100
    invoke-virtual {v0, v9, v7}, Lk4/g;->a(II)Lk4/c;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    :cond_5
    if-eqz v9, :cond_2a

    .line 105
    .line 106
    add-int/lit8 v11, v7, -0x1

    .line 107
    .line 108
    if-ltz v11, :cond_6

    .line 109
    .line 110
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    check-cast v12, Lk4/c;

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    const/4 v12, 0x0

    .line 118
    :goto_3
    invoke-direct/range {p0 .. p0}, Lk4/g;->getClientWidth()I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    const/high16 v14, 0x40000000    # 2.0f

    .line 123
    .line 124
    if-gtz v13, :cond_7

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    goto :goto_4

    .line 128
    :cond_7
    iget v15, v9, Lk4/c;->d:F

    .line 129
    .line 130
    sub-float v15, v14, v15

    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    int-to-float v3, v3

    .line 137
    int-to-float v10, v13

    .line 138
    div-float/2addr v3, v10

    .line 139
    add-float/2addr v3, v15

    .line 140
    :goto_4
    iget v10, v0, Lk4/g;->e:I

    .line 141
    .line 142
    const/4 v15, 0x1

    .line 143
    sub-int/2addr v10, v15

    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    :goto_5
    if-ltz v10, :cond_d

    .line 147
    .line 148
    cmpl-float v17, v16, v3

    .line 149
    .line 150
    if-ltz v17, :cond_a

    .line 151
    .line 152
    if-ge v10, v4, :cond_a

    .line 153
    .line 154
    if-nez v12, :cond_8

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_8
    iget v5, v12, Lk4/c;->b:I

    .line 158
    .line 159
    if-ne v10, v5, :cond_c

    .line 160
    .line 161
    iget-boolean v5, v12, Lk4/c;->c:Z

    .line 162
    .line 163
    if-nez v5, :cond_c

    .line 164
    .line 165
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    iget-object v5, v0, Lk4/g;->d:Lk4/a;

    .line 169
    .line 170
    invoke-virtual {v5, v10}, Lk4/a;->a(I)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v11, v11, -0x1

    .line 174
    .line 175
    add-int/lit8 v7, v7, -0x1

    .line 176
    .line 177
    if-ltz v11, :cond_9

    .line 178
    .line 179
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Lk4/c;

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_9
    const/4 v5, 0x0

    .line 187
    :goto_6
    move-object v12, v5

    .line 188
    goto :goto_7

    .line 189
    :cond_a
    if-eqz v12, :cond_b

    .line 190
    .line 191
    iget v5, v12, Lk4/c;->b:I

    .line 192
    .line 193
    if-ne v10, v5, :cond_b

    .line 194
    .line 195
    iget v5, v12, Lk4/c;->d:F

    .line 196
    .line 197
    add-float v16, v16, v5

    .line 198
    .line 199
    add-int/lit8 v11, v11, -0x1

    .line 200
    .line 201
    if-ltz v11, :cond_9

    .line 202
    .line 203
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Lk4/c;

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_b
    add-int/lit8 v5, v11, 0x1

    .line 211
    .line 212
    invoke-virtual {v0, v10, v5}, Lk4/g;->a(II)Lk4/c;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    iget v5, v5, Lk4/c;->d:F

    .line 217
    .line 218
    add-float v16, v16, v5

    .line 219
    .line 220
    add-int/lit8 v7, v7, 0x1

    .line 221
    .line 222
    if-ltz v11, :cond_9

    .line 223
    .line 224
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Lk4/c;

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_c
    :goto_7
    add-int/lit8 v10, v10, -0x1

    .line 232
    .line 233
    const/4 v5, 0x0

    .line 234
    goto :goto_5

    .line 235
    :cond_d
    :goto_8
    iget v3, v9, Lk4/c;->d:F

    .line 236
    .line 237
    add-int/lit8 v4, v7, 0x1

    .line 238
    .line 239
    cmpg-float v5, v3, v14

    .line 240
    .line 241
    if-gez v5, :cond_15

    .line 242
    .line 243
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-ge v4, v5, :cond_e

    .line 248
    .line 249
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    check-cast v5, Lk4/c;

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_e
    const/4 v5, 0x0

    .line 257
    :goto_9
    if-gtz v13, :cond_f

    .line 258
    .line 259
    const/4 v10, 0x0

    .line 260
    goto :goto_a

    .line 261
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    int-to-float v10, v10

    .line 266
    int-to-float v11, v13

    .line 267
    div-float/2addr v10, v11

    .line 268
    add-float/2addr v10, v14

    .line 269
    :goto_a
    iget v11, v0, Lk4/g;->e:I

    .line 270
    .line 271
    add-int/2addr v11, v15

    .line 272
    move v12, v4

    .line 273
    :goto_b
    if-ge v11, v6, :cond_15

    .line 274
    .line 275
    cmpl-float v13, v3, v10

    .line 276
    .line 277
    if-ltz v13, :cond_12

    .line 278
    .line 279
    if-le v11, v1, :cond_12

    .line 280
    .line 281
    if-nez v5, :cond_10

    .line 282
    .line 283
    goto :goto_d

    .line 284
    :cond_10
    iget v13, v5, Lk4/c;->b:I

    .line 285
    .line 286
    if-ne v11, v13, :cond_14

    .line 287
    .line 288
    iget-boolean v13, v5, Lk4/c;->c:Z

    .line 289
    .line 290
    if-nez v13, :cond_14

    .line 291
    .line 292
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    iget-object v5, v0, Lk4/g;->d:Lk4/a;

    .line 296
    .line 297
    invoke-virtual {v5, v11}, Lk4/a;->a(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-ge v12, v5, :cond_11

    .line 305
    .line 306
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    check-cast v5, Lk4/c;

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_11
    const/4 v5, 0x0

    .line 314
    goto :goto_c

    .line 315
    :cond_12
    if-eqz v5, :cond_13

    .line 316
    .line 317
    iget v13, v5, Lk4/c;->b:I

    .line 318
    .line 319
    if-ne v11, v13, :cond_13

    .line 320
    .line 321
    iget v5, v5, Lk4/c;->d:F

    .line 322
    .line 323
    add-float/2addr v3, v5

    .line 324
    add-int/lit8 v12, v12, 0x1

    .line 325
    .line 326
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-ge v12, v5, :cond_11

    .line 331
    .line 332
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    check-cast v5, Lk4/c;

    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_13
    invoke-virtual {v0, v11, v12}, Lk4/g;->a(II)Lk4/c;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    add-int/lit8 v12, v12, 0x1

    .line 344
    .line 345
    iget v5, v5, Lk4/c;->d:F

    .line 346
    .line 347
    add-float/2addr v3, v5

    .line 348
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-ge v12, v5, :cond_11

    .line 353
    .line 354
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    check-cast v5, Lk4/c;

    .line 359
    .line 360
    :cond_14
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_15
    :goto_d
    iget-object v1, v0, Lk4/g;->d:Lk4/a;

    .line 364
    .line 365
    invoke-virtual {v1}, Lk4/a;->c()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-direct/range {p0 .. p0}, Lk4/g;->getClientWidth()I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-lez v3, :cond_16

    .line 374
    .line 375
    iget v5, v0, Lk4/g;->k:I

    .line 376
    .line 377
    int-to-float v5, v5

    .line 378
    int-to-float v3, v3

    .line 379
    div-float/2addr v5, v3

    .line 380
    goto :goto_e

    .line 381
    :cond_16
    const/4 v5, 0x0

    .line 382
    :goto_e
    const/high16 v3, 0x3f800000    # 1.0f

    .line 383
    .line 384
    if-eqz v2, :cond_1c

    .line 385
    .line 386
    iget v6, v2, Lk4/c;->b:I

    .line 387
    .line 388
    iget v10, v9, Lk4/c;->b:I

    .line 389
    .line 390
    if-ge v6, v10, :cond_19

    .line 391
    .line 392
    iget v10, v2, Lk4/c;->e:F

    .line 393
    .line 394
    iget v2, v2, Lk4/c;->d:F

    .line 395
    .line 396
    add-float/2addr v10, v2

    .line 397
    add-float/2addr v10, v5

    .line 398
    add-int/2addr v6, v15

    .line 399
    const/4 v2, 0x0

    .line 400
    :goto_f
    iget v11, v9, Lk4/c;->b:I

    .line 401
    .line 402
    if-gt v6, v11, :cond_1c

    .line 403
    .line 404
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    if-ge v2, v11, :cond_1c

    .line 409
    .line 410
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v11

    .line 414
    check-cast v11, Lk4/c;

    .line 415
    .line 416
    :goto_10
    iget v12, v11, Lk4/c;->b:I

    .line 417
    .line 418
    if-le v6, v12, :cond_17

    .line 419
    .line 420
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 421
    .line 422
    .line 423
    move-result v12

    .line 424
    sub-int/2addr v12, v15

    .line 425
    if-ge v2, v12, :cond_17

    .line 426
    .line 427
    add-int/lit8 v2, v2, 0x1

    .line 428
    .line 429
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v11

    .line 433
    check-cast v11, Lk4/c;

    .line 434
    .line 435
    goto :goto_10

    .line 436
    :cond_17
    :goto_11
    iget v12, v11, Lk4/c;->b:I

    .line 437
    .line 438
    if-ge v6, v12, :cond_18

    .line 439
    .line 440
    iget-object v12, v0, Lk4/g;->d:Lk4/a;

    .line 441
    .line 442
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    add-float v12, v3, v5

    .line 446
    .line 447
    add-float/2addr v10, v12

    .line 448
    add-int/lit8 v6, v6, 0x1

    .line 449
    .line 450
    goto :goto_11

    .line 451
    :cond_18
    iput v10, v11, Lk4/c;->e:F

    .line 452
    .line 453
    iget v11, v11, Lk4/c;->d:F

    .line 454
    .line 455
    add-float/2addr v11, v5

    .line 456
    add-float/2addr v10, v11

    .line 457
    add-int/lit8 v6, v6, 0x1

    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_19
    if-le v6, v10, :cond_1c

    .line 461
    .line 462
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 463
    .line 464
    .line 465
    move-result v10

    .line 466
    sub-int/2addr v10, v15

    .line 467
    iget v2, v2, Lk4/c;->e:F

    .line 468
    .line 469
    sub-int/2addr v6, v15

    .line 470
    :goto_12
    iget v11, v9, Lk4/c;->b:I

    .line 471
    .line 472
    if-lt v6, v11, :cond_1c

    .line 473
    .line 474
    if-ltz v10, :cond_1c

    .line 475
    .line 476
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v11

    .line 480
    check-cast v11, Lk4/c;

    .line 481
    .line 482
    :goto_13
    iget v12, v11, Lk4/c;->b:I

    .line 483
    .line 484
    if-ge v6, v12, :cond_1a

    .line 485
    .line 486
    if-lez v10, :cond_1a

    .line 487
    .line 488
    add-int/lit8 v10, v10, -0x1

    .line 489
    .line 490
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    check-cast v11, Lk4/c;

    .line 495
    .line 496
    goto :goto_13

    .line 497
    :cond_1a
    :goto_14
    iget v12, v11, Lk4/c;->b:I

    .line 498
    .line 499
    if-le v6, v12, :cond_1b

    .line 500
    .line 501
    iget-object v12, v0, Lk4/g;->d:Lk4/a;

    .line 502
    .line 503
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    add-float v12, v3, v5

    .line 507
    .line 508
    sub-float/2addr v2, v12

    .line 509
    add-int/lit8 v6, v6, -0x1

    .line 510
    .line 511
    goto :goto_14

    .line 512
    :cond_1b
    iget v12, v11, Lk4/c;->d:F

    .line 513
    .line 514
    add-float/2addr v12, v5

    .line 515
    sub-float/2addr v2, v12

    .line 516
    iput v2, v11, Lk4/c;->e:F

    .line 517
    .line 518
    add-int/lit8 v6, v6, -0x1

    .line 519
    .line 520
    goto :goto_12

    .line 521
    :cond_1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    iget v6, v9, Lk4/c;->e:F

    .line 526
    .line 527
    iget v10, v9, Lk4/c;->b:I

    .line 528
    .line 529
    add-int/lit8 v11, v10, -0x1

    .line 530
    .line 531
    if-nez v10, :cond_1d

    .line 532
    .line 533
    move v12, v6

    .line 534
    goto :goto_15

    .line 535
    :cond_1d
    const v12, -0x800001

    .line 536
    .line 537
    .line 538
    :goto_15
    iput v12, v0, Lk4/g;->p:F

    .line 539
    .line 540
    sub-int/2addr v1, v15

    .line 541
    if-ne v10, v1, :cond_1e

    .line 542
    .line 543
    iget v10, v9, Lk4/c;->d:F

    .line 544
    .line 545
    add-float/2addr v10, v6

    .line 546
    sub-float/2addr v10, v3

    .line 547
    goto :goto_16

    .line 548
    :cond_1e
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 549
    .line 550
    .line 551
    :goto_16
    iput v10, v0, Lk4/g;->q:F

    .line 552
    .line 553
    sub-int/2addr v7, v15

    .line 554
    :goto_17
    if-ltz v7, :cond_21

    .line 555
    .line 556
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v10

    .line 560
    check-cast v10, Lk4/c;

    .line 561
    .line 562
    :goto_18
    iget v12, v10, Lk4/c;->b:I

    .line 563
    .line 564
    if-le v11, v12, :cond_1f

    .line 565
    .line 566
    iget-object v12, v0, Lk4/g;->d:Lk4/a;

    .line 567
    .line 568
    add-int/lit8 v11, v11, -0x1

    .line 569
    .line 570
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    add-float v12, v3, v5

    .line 574
    .line 575
    sub-float/2addr v6, v12

    .line 576
    goto :goto_18

    .line 577
    :cond_1f
    iget v13, v10, Lk4/c;->d:F

    .line 578
    .line 579
    add-float/2addr v13, v5

    .line 580
    sub-float/2addr v6, v13

    .line 581
    iput v6, v10, Lk4/c;->e:F

    .line 582
    .line 583
    if-nez v12, :cond_20

    .line 584
    .line 585
    iput v6, v0, Lk4/g;->p:F

    .line 586
    .line 587
    :cond_20
    add-int/lit8 v7, v7, -0x1

    .line 588
    .line 589
    add-int/lit8 v11, v11, -0x1

    .line 590
    .line 591
    goto :goto_17

    .line 592
    :cond_21
    iget v6, v9, Lk4/c;->e:F

    .line 593
    .line 594
    iget v7, v9, Lk4/c;->d:F

    .line 595
    .line 596
    add-float/2addr v6, v7

    .line 597
    add-float/2addr v6, v5

    .line 598
    iget v7, v9, Lk4/c;->b:I

    .line 599
    .line 600
    add-int/2addr v7, v15

    .line 601
    :goto_19
    if-ge v4, v2, :cond_24

    .line 602
    .line 603
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v10

    .line 607
    check-cast v10, Lk4/c;

    .line 608
    .line 609
    :goto_1a
    iget v11, v10, Lk4/c;->b:I

    .line 610
    .line 611
    if-ge v7, v11, :cond_22

    .line 612
    .line 613
    iget-object v11, v0, Lk4/g;->d:Lk4/a;

    .line 614
    .line 615
    add-int/lit8 v7, v7, 0x1

    .line 616
    .line 617
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    add-float v11, v3, v5

    .line 621
    .line 622
    add-float/2addr v6, v11

    .line 623
    goto :goto_1a

    .line 624
    :cond_22
    if-ne v11, v1, :cond_23

    .line 625
    .line 626
    iget v11, v10, Lk4/c;->d:F

    .line 627
    .line 628
    add-float/2addr v11, v6

    .line 629
    sub-float/2addr v11, v3

    .line 630
    iput v11, v0, Lk4/g;->q:F

    .line 631
    .line 632
    :cond_23
    iput v6, v10, Lk4/c;->e:F

    .line 633
    .line 634
    iget v10, v10, Lk4/c;->d:F

    .line 635
    .line 636
    add-float/2addr v10, v5

    .line 637
    add-float/2addr v6, v10

    .line 638
    add-int/lit8 v4, v4, 0x1

    .line 639
    .line 640
    add-int/lit8 v7, v7, 0x1

    .line 641
    .line 642
    goto :goto_19

    .line 643
    :cond_24
    iget-object v1, v0, Lk4/g;->d:Lk4/a;

    .line 644
    .line 645
    iget-object v2, v9, Lk4/c;->a:Landroidx/fragment/app/Fragment;

    .line 646
    .line 647
    check-cast v1, Lx9/k2;

    .line 648
    .line 649
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    iget-object v3, v1, Lx9/k2;->e:Landroidx/fragment/app/Fragment;

    .line 653
    .line 654
    if-eq v2, v3, :cond_2a

    .line 655
    .line 656
    iget-object v4, v1, Lx9/k2;->b:Landroidx/fragment/app/e1;

    .line 657
    .line 658
    iget v5, v1, Lx9/k2;->c:I

    .line 659
    .line 660
    const/4 v6, 0x0

    .line 661
    if-eqz v3, :cond_27

    .line 662
    .line 663
    invoke-virtual {v3, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 664
    .line 665
    .line 666
    if-ne v5, v15, :cond_26

    .line 667
    .line 668
    iget-object v3, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 669
    .line 670
    if-nez v3, :cond_25

    .line 671
    .line 672
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    new-instance v3, Landroidx/fragment/app/a;

    .line 676
    .line 677
    invoke-direct {v3, v4}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 678
    .line 679
    .line 680
    iput-object v3, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 681
    .line 682
    :cond_25
    iget-object v3, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 683
    .line 684
    iget-object v6, v1, Lx9/k2;->e:Landroidx/fragment/app/Fragment;

    .line 685
    .line 686
    sget-object v7, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 687
    .line 688
    invoke-virtual {v3, v6, v7}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 689
    .line 690
    .line 691
    const/4 v6, 0x0

    .line 692
    goto :goto_1b

    .line 693
    :cond_26
    iget-object v3, v1, Lx9/k2;->e:Landroidx/fragment/app/Fragment;

    .line 694
    .line 695
    const/4 v6, 0x0

    .line 696
    invoke-virtual {v3, v6}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 697
    .line 698
    .line 699
    :cond_27
    :goto_1b
    invoke-virtual {v2, v15}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 700
    .line 701
    .line 702
    if-ne v5, v15, :cond_29

    .line 703
    .line 704
    iget-object v3, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 705
    .line 706
    if-nez v3, :cond_28

    .line 707
    .line 708
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    new-instance v3, Landroidx/fragment/app/a;

    .line 712
    .line 713
    invoke-direct {v3, v4}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 714
    .line 715
    .line 716
    iput-object v3, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 717
    .line 718
    :cond_28
    iget-object v3, v1, Lx9/k2;->d:Landroidx/fragment/app/a;

    .line 719
    .line 720
    sget-object v4, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    .line 721
    .line 722
    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 723
    .line 724
    .line 725
    goto :goto_1c

    .line 726
    :cond_29
    invoke-virtual {v2, v15}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 727
    .line 728
    .line 729
    :goto_1c
    iput-object v2, v1, Lx9/k2;->e:Landroidx/fragment/app/Fragment;

    .line 730
    .line 731
    goto :goto_1d

    .line 732
    :cond_2a
    const/4 v6, 0x0

    .line 733
    :goto_1d
    iget-object v1, v0, Lk4/g;->d:Lk4/a;

    .line 734
    .line 735
    invoke-virtual {v1}, Lk4/a;->b()V

    .line 736
    .line 737
    .line 738
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 739
    .line 740
    .line 741
    move-result v1

    .line 742
    const/4 v2, 0x0

    .line 743
    :goto_1e
    if-ge v2, v1, :cond_2d

    .line 744
    .line 745
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    check-cast v4, Lk4/d;

    .line 754
    .line 755
    iput v2, v4, Lk4/d;->f:I

    .line 756
    .line 757
    iget-boolean v5, v4, Lk4/d;->a:Z

    .line 758
    .line 759
    if-nez v5, :cond_2b

    .line 760
    .line 761
    iget v5, v4, Lk4/d;->c:F

    .line 762
    .line 763
    const/4 v7, 0x0

    .line 764
    cmpl-float v5, v5, v7

    .line 765
    .line 766
    if-nez v5, :cond_2c

    .line 767
    .line 768
    invoke-virtual {v0, v3}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    if-eqz v3, :cond_2c

    .line 773
    .line 774
    iget v5, v3, Lk4/c;->d:F

    .line 775
    .line 776
    iput v5, v4, Lk4/d;->c:F

    .line 777
    .line 778
    iget v3, v3, Lk4/c;->b:I

    .line 779
    .line 780
    iput v3, v4, Lk4/d;->e:I

    .line 781
    .line 782
    goto :goto_1f

    .line 783
    :cond_2b
    const/4 v7, 0x0

    .line 784
    :cond_2c
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    .line 785
    .line 786
    goto :goto_1e

    .line 787
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lk4/g;->o()V

    .line 788
    .line 789
    .line 790
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    if-eqz v1, :cond_33

    .line 795
    .line 796
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    if-eqz v1, :cond_30

    .line 801
    .line 802
    :goto_20
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    if-eq v2, v0, :cond_2f

    .line 807
    .line 808
    if-eqz v2, :cond_30

    .line 809
    .line 810
    instance-of v1, v2, Landroid/view/View;

    .line 811
    .line 812
    if-nez v1, :cond_2e

    .line 813
    .line 814
    goto :goto_21

    .line 815
    :cond_2e
    move-object v1, v2

    .line 816
    check-cast v1, Landroid/view/View;

    .line 817
    .line 818
    goto :goto_20

    .line 819
    :cond_2f
    invoke-virtual {v0, v1}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    goto :goto_22

    .line 824
    :cond_30
    :goto_21
    const/4 v3, 0x0

    .line 825
    :goto_22
    if-eqz v3, :cond_31

    .line 826
    .line 827
    iget v1, v3, Lk4/c;->b:I

    .line 828
    .line 829
    iget v2, v0, Lk4/g;->e:I

    .line 830
    .line 831
    if-eq v1, v2, :cond_33

    .line 832
    .line 833
    :cond_31
    const/4 v5, 0x0

    .line 834
    :goto_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    if-ge v5, v1, :cond_33

    .line 839
    .line 840
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-virtual {v0, v1}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    if-eqz v2, :cond_32

    .line 849
    .line 850
    iget v2, v2, Lk4/c;->b:I

    .line 851
    .line 852
    iget v3, v0, Lk4/g;->e:I

    .line 853
    .line 854
    if-ne v2, v3, :cond_32

    .line 855
    .line 856
    const/4 v2, 0x2

    .line 857
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-eqz v1, :cond_32

    .line 862
    .line 863
    goto :goto_24

    .line 864
    :cond_32
    add-int/lit8 v5, v5, 0x1

    .line 865
    .line 866
    goto :goto_23

    .line 867
    :cond_33
    :goto_24
    return-void

    .line 868
    :cond_34
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    goto :goto_25

    .line 881
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    :goto_25
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 890
    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    .line 894
    .line 895
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    iget v4, v0, Lk4/g;->a:I

    .line 899
    .line 900
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    const-string v4, ", found: "

    .line 904
    .line 905
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    const-string v4, " Pager id: "

    .line 912
    .line 913
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    const-string v1, " Pager class: "

    .line 920
    .line 921
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    const-string v1, " Problematic adapter: "

    .line 932
    .line 933
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    iget-object v1, v0, Lk4/g;->d:Lk4/a;

    .line 937
    .line 938
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    goto :goto_27

    .line 953
    :goto_26
    throw v2

    .line 954
    :goto_27
    goto :goto_26
.end method

.method public final k(IIII)V
    .locals 1

    .line 1
    if-lez p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 20
    .line 21
    invoke-virtual {p0}, Lk4/g;->getCurrentItem()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-direct {p0}, Lk4/g;->getClientWidth()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    mul-int p2, p2, p3

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sub-int/2addr p1, v0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr p1, v0

    .line 45
    add-int/2addr p1, p3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    sub-int/2addr p2, p3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    sub-int/2addr p2, p3

    .line 56
    add-int/2addr p2, p4

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    int-to-float p3, p3

    .line 62
    int-to-float p2, p2

    .line 63
    div-float/2addr p3, p2

    .line 64
    int-to-float p1, p1

    .line 65
    mul-float p3, p3, p1

    .line 66
    .line 67
    float-to-int p1, p3

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget p2, p0, Lk4/g;->e:I

    .line 77
    .line 78
    invoke-virtual {p0, p2}, Lk4/g;->f(I)Lk4/c;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    iget p2, p2, Lk4/c;->e:F

    .line 85
    .line 86
    iget p3, p0, Lk4/g;->q:F

    .line 87
    .line 88
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 p2, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    sub-int/2addr p1, p3

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    sub-int/2addr p1, p3

    .line 104
    int-to-float p1, p1

    .line 105
    mul-float p2, p2, p1

    .line 106
    .line 107
    float-to-int p1, p2

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eq p1, p2, :cond_3

    .line 113
    .line 114
    const/4 p2, 0x0

    .line 115
    invoke-virtual {p0, p2}, Lk4/g;->b(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_1
    return-void
.end method

.method public final l(IZZ)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lk4/g;->f(I)Lk4/c;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lk4/g;->getClientWidth()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-float v3, v3

    .line 14
    iget v4, p0, Lk4/g;->p:F

    .line 15
    .line 16
    iget v1, v1, Lk4/c;->e:F

    .line 17
    .line 18
    iget v5, p0, Lk4/g;->q:F

    .line 19
    .line 20
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    mul-float v1, v1, v3

    .line 29
    .line 30
    float-to-int v1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-eqz p2, :cond_6

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, v2}, Lk4/g;->setScrollingCacheEnabled(Z)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_1
    iget-object p2, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    iget-boolean p2, p0, Lk4/g;->i:Z

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object p2, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object p2, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    :goto_1
    iget-object v3, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v2}, Lk4/g;->setScrollingCacheEnabled(Z)V

    .line 79
    .line 80
    .line 81
    :goto_2
    move v4, p2

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    goto :goto_2

    .line 88
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    sub-int v6, v1, v4

    .line 93
    .line 94
    rsub-int/lit8 v7, v5, 0x0

    .line 95
    .line 96
    if-nez v6, :cond_4

    .line 97
    .line 98
    if-nez v7, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lk4/g;->b(Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lk4/g;->i()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Lk4/g;->setScrollState(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_4
    const/4 p2, 0x1

    .line 111
    invoke-direct {p0, p2}, Lk4/g;->setScrollingCacheEnabled(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lk4/g;->setScrollState(I)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lk4/g;->getClientWidth()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    div-int/lit8 v0, p2, 0x2

    .line 122
    .line 123
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    int-to-float v1, v1

    .line 128
    const/high16 v3, 0x3f800000    # 1.0f

    .line 129
    .line 130
    mul-float v1, v1, v3

    .line 131
    .line 132
    int-to-float p2, p2

    .line 133
    div-float/2addr v1, p2

    .line 134
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    int-to-float v0, v0

    .line 139
    const/high16 v8, 0x3f000000    # 0.5f

    .line 140
    .line 141
    sub-float/2addr v1, v8

    .line 142
    const v8, 0x3ef1463b

    .line 143
    .line 144
    .line 145
    mul-float v1, v1, v8

    .line 146
    .line 147
    float-to-double v8, v1

    .line 148
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 149
    .line 150
    .line 151
    move-result-wide v8

    .line 152
    double-to-float v1, v8

    .line 153
    mul-float v1, v1, v0

    .line 154
    .line 155
    add-float/2addr v1, v0

    .line 156
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-lez v0, :cond_5

    .line 161
    .line 162
    int-to-float p2, v0

    .line 163
    div-float/2addr v1, p2

    .line 164
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 169
    .line 170
    mul-float p2, p2, v0

    .line 171
    .line 172
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    mul-int/lit8 p2, p2, 0x4

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_5
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    mul-float p2, p2, v3

    .line 185
    .line 186
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    int-to-float v0, v0

    .line 191
    iget v1, p0, Lk4/g;->k:I

    .line 192
    .line 193
    int-to-float v1, v1

    .line 194
    add-float/2addr p2, v1

    .line 195
    div-float/2addr v0, p2

    .line 196
    add-float/2addr v0, v3

    .line 197
    const/high16 p2, 0x42c80000    # 100.0f

    .line 198
    .line 199
    mul-float v0, v0, p2

    .line 200
    .line 201
    float-to-int p2, v0

    .line 202
    :goto_4
    const/16 v0, 0x258

    .line 203
    .line 204
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    iput-boolean v2, p0, Lk4/g;->i:Z

    .line 209
    .line 210
    iget-object v3, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 211
    .line 212
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 213
    .line 214
    .line 215
    sget-object p2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 216
    .line 217
    invoke-static {p0}, Lx0/j0;->k(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    if-eqz p3, :cond_8

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Lk4/g;->d(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_6
    if-eqz p3, :cond_7

    .line 227
    .line 228
    invoke-virtual {p0, p1}, Lk4/g;->d(I)V

    .line 229
    .line 230
    .line 231
    :cond_7
    invoke-virtual {p0, v2}, Lk4/g;->b(Z)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v1}, Lk4/g;->h(I)Z

    .line 238
    .line 239
    .line 240
    :cond_8
    :goto_6
    return-void
.end method

.method public final m(IZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-virtual {v0}, Lk4/a;->c()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    iget p3, p0, Lk4/g;->e:I

    .line 18
    .line 19
    if-ne p3, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lk4/g;->setScrollingCacheEnabled(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_1
    const/4 p3, 0x1

    .line 32
    if-gez p1, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v2, p0, Lk4/g;->d:Lk4/a;

    .line 37
    .line 38
    invoke-virtual {v2}, Lk4/a;->c()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lt p1, v2, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lk4/g;->d:Lk4/a;

    .line 45
    .line 46
    invoke-virtual {p1}, Lk4/a;->c()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p1, p3

    .line 51
    :cond_3
    :goto_0
    iget v2, p0, Lk4/g;->v:I

    .line 52
    .line 53
    iget v3, p0, Lk4/g;->e:I

    .line 54
    .line 55
    add-int v4, v3, v2

    .line 56
    .line 57
    if-gt p1, v4, :cond_4

    .line 58
    .line 59
    sub-int/2addr v3, v2

    .line 60
    if-ge p1, v3, :cond_5

    .line 61
    .line 62
    :cond_4
    const/4 v2, 0x0

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ge v2, v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lk4/c;

    .line 74
    .line 75
    iput-boolean p3, v3, Lk4/c;->c:Z

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    iget v0, p0, Lk4/g;->e:I

    .line 81
    .line 82
    if-eq v0, p1, :cond_6

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    :cond_6
    iget-boolean p3, p0, Lk4/g;->z:Z

    .line 86
    .line 87
    if-eqz p3, :cond_8

    .line 88
    .line 89
    iput p1, p0, Lk4/g;->e:I

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lk4/g;->d(I)V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_8
    invoke-virtual {p0, p1}, Lk4/g;->j(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, p2, v1}, Lk4/g;->l(IZZ)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Lk4/g;->setScrollingCacheEnabled(Z)V

    .line 108
    .line 109
    .line 110
    :goto_3
    return-void
.end method

.method public final n(Ls9/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/g;->F:Ls9/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :goto_0
    iput-object p1, p0, Lk4/g;->F:Ls9/a;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lk4/g;->H:I

    .line 16
    .line 17
    iput p1, p0, Lk4/g;->G:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lk4/g;->i()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget v0, p0, Lk4/g;->H:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lk4/g;->I:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lk4/g;->I:Ljava/util/ArrayList;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_1
    if-ge v1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lk4/g;->I:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lk4/g;->I:Ljava/util/ArrayList;

    .line 40
    .line 41
    sget-object v1, Lk4/g;->P:La5/a;

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lk4/g;->z:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/g;->K:Landroidx/activity/h;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lk4/g;->h:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lk4/g;->k:I

    .line 7
    .line 8
    if-lez v1, :cond_4

    .line 9
    .line 10
    iget-object v1, v0, Lk4/g;->l:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    iget-object v1, v0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_4

    .line 21
    .line 22
    iget-object v2, v0, Lk4/g;->d:Lk4/a;

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, v0, Lk4/g;->k:I

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    int-to-float v5, v3

    .line 38
    div-float/2addr v4, v5

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Lk4/c;

    .line 45
    .line 46
    iget v8, v7, Lk4/c;->e:F

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    iget v10, v7, Lk4/c;->b:I

    .line 53
    .line 54
    add-int/lit8 v11, v9, -0x1

    .line 55
    .line 56
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    check-cast v11, Lk4/c;

    .line 61
    .line 62
    iget v11, v11, Lk4/c;->b:I

    .line 63
    .line 64
    :goto_0
    if-ge v10, v11, :cond_4

    .line 65
    .line 66
    :goto_1
    iget v12, v7, Lk4/c;->b:I

    .line 67
    .line 68
    if-le v10, v12, :cond_0

    .line 69
    .line 70
    if-ge v6, v9, :cond_0

    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lk4/c;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    if-ne v10, v12, :cond_1

    .line 82
    .line 83
    iget v8, v7, Lk4/c;->e:F

    .line 84
    .line 85
    iget v12, v7, Lk4/c;->d:F

    .line 86
    .line 87
    add-float v13, v8, v12

    .line 88
    .line 89
    mul-float v13, v13, v5

    .line 90
    .line 91
    add-float/2addr v8, v12

    .line 92
    add-float/2addr v8, v4

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    iget-object v12, v0, Lk4/g;->d:Lk4/a;

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const/high16 v12, 0x3f800000    # 1.0f

    .line 100
    .line 101
    add-float v13, v8, v12

    .line 102
    .line 103
    mul-float v13, v13, v5

    .line 104
    .line 105
    add-float/2addr v12, v4

    .line 106
    add-float/2addr v12, v8

    .line 107
    move v8, v12

    .line 108
    :goto_2
    iget v12, v0, Lk4/g;->k:I

    .line 109
    .line 110
    int-to-float v12, v12

    .line 111
    add-float/2addr v12, v13

    .line 112
    int-to-float v14, v2

    .line 113
    cmpl-float v12, v12, v14

    .line 114
    .line 115
    if-lez v12, :cond_2

    .line 116
    .line 117
    iget-object v12, v0, Lk4/g;->l:Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    iget v15, v0, Lk4/g;->m:I

    .line 124
    .line 125
    move-object/from16 v16, v1

    .line 126
    .line 127
    iget v1, v0, Lk4/g;->k:I

    .line 128
    .line 129
    int-to-float v1, v1

    .line 130
    add-float/2addr v1, v13

    .line 131
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    move/from16 v17, v4

    .line 136
    .line 137
    iget v4, v0, Lk4/g;->n:I

    .line 138
    .line 139
    invoke-virtual {v12, v14, v15, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lk4/g;->l:Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    move-object/from16 v4, p1

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_2
    move-object/from16 v16, v1

    .line 151
    .line 152
    move/from16 v17, v4

    .line 153
    .line 154
    move-object/from16 v4, p1

    .line 155
    .line 156
    :goto_3
    add-int v1, v2, v3

    .line 157
    .line 158
    int-to-float v1, v1

    .line 159
    cmpl-float v1, v13, v1

    .line 160
    .line 161
    if-lez v1, :cond_3

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    move-object/from16 v1, v16

    .line 167
    .line 168
    move/from16 v4, v17

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    :goto_4
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    .line 35
    if-ge v10, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lk4/d;

    .line 52
    .line 53
    iget-boolean v14, v12, Lk4/d;->a:Z

    .line 54
    .line 55
    if-eqz v14, :cond_6

    .line 56
    .line 57
    iget v12, v12, Lk4/d;->b:I

    .line 58
    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 60
    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    .line 72
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    :goto_1
    move/from16 v17, v14

    .line 87
    .line 88
    move v14, v4

    .line 89
    move/from16 v4, v17

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    add-int/2addr v14, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    sub-int v14, v2, v14

    .line 103
    .line 104
    div-int/lit8 v14, v14, 0x2

    .line 105
    .line 106
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    goto :goto_1

    .line 111
    :goto_2
    const/16 v15, 0x10

    .line 112
    .line 113
    if-eq v12, v15, :cond_5

    .line 114
    .line 115
    const/16 v15, 0x30

    .line 116
    .line 117
    if-eq v12, v15, :cond_4

    .line 118
    .line 119
    const/16 v15, 0x50

    .line 120
    .line 121
    if-eq v12, v15, :cond_3

    .line 122
    .line 123
    move v12, v5

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    sub-int v12, v3, v7

    .line 126
    .line 127
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    sub-int/2addr v12, v15

    .line 132
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    add-int/2addr v7, v15

    .line 137
    :goto_3
    move/from16 v17, v12

    .line 138
    .line 139
    move v12, v5

    .line 140
    move/from16 v5, v17

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    add-int/2addr v12, v5

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    sub-int v12, v3, v12

    .line 154
    .line 155
    div-int/lit8 v12, v12, 0x2

    .line 156
    .line 157
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    goto :goto_3

    .line 162
    :goto_4
    add-int/2addr v4, v8

    .line 163
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    add-int/2addr v15, v4

    .line 168
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    add-int v9, v16, v5

    .line 173
    .line 174
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v11, v11, 0x1

    .line 178
    .line 179
    move v5, v12

    .line 180
    move v4, v14

    .line 181
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_7
    sub-int/2addr v2, v4

    .line 186
    sub-int/2addr v2, v6

    .line 187
    const/4 v6, 0x0

    .line 188
    :goto_5
    if-ge v6, v1, :cond_a

    .line 189
    .line 190
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eq v9, v12, :cond_9

    .line 199
    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Lk4/d;

    .line 205
    .line 206
    iget-boolean v10, v9, Lk4/d;->a:Z

    .line 207
    .line 208
    if-nez v10, :cond_9

    .line 209
    .line 210
    invoke-virtual {v0, v8}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    if-eqz v10, :cond_9

    .line 215
    .line 216
    int-to-float v13, v2

    .line 217
    iget v10, v10, Lk4/c;->e:F

    .line 218
    .line 219
    mul-float v10, v10, v13

    .line 220
    .line 221
    float-to-int v10, v10

    .line 222
    add-int/2addr v10, v4

    .line 223
    iget-boolean v14, v9, Lk4/d;->d:Z

    .line 224
    .line 225
    if-eqz v14, :cond_8

    .line 226
    .line 227
    const/4 v14, 0x0

    .line 228
    iput-boolean v14, v9, Lk4/d;->d:Z

    .line 229
    .line 230
    iget v9, v9, Lk4/d;->c:F

    .line 231
    .line 232
    mul-float v13, v13, v9

    .line 233
    .line 234
    float-to-int v9, v13

    .line 235
    const/high16 v13, 0x40000000    # 2.0f

    .line 236
    .line 237
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    sub-int v14, v3, v5

    .line 242
    .line 243
    sub-int/2addr v14, v7

    .line 244
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 249
    .line 250
    .line 251
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    add-int/2addr v9, v10

    .line 256
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    add-int/2addr v13, v5

    .line 261
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    .line 262
    .line 263
    .line 264
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_a
    iput v5, v0, Lk4/g;->m:I

    .line 268
    .line 269
    sub-int/2addr v3, v7

    .line 270
    iput v3, v0, Lk4/g;->n:I

    .line 271
    .line 272
    iput v11, v0, Lk4/g;->B:I

    .line 273
    .line 274
    iget-boolean v1, v0, Lk4/g;->z:Z

    .line 275
    .line 276
    if-eqz v1, :cond_b

    .line 277
    .line 278
    iget v1, v0, Lk4/g;->e:I

    .line 279
    .line 280
    const/4 v2, 0x0

    .line 281
    invoke-virtual {v0, v1, v2, v2}, Lk4/g;->l(IZZ)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_b
    const/4 v2, 0x0

    .line 286
    :goto_6
    iput-boolean v2, v0, Lk4/g;->z:Z

    .line 287
    .line 288
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    div-int/lit8 p2, p1, 0xa

    .line 18
    .line 19
    iget v1, p0, Lk4/g;->w:I

    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    sub-int/2addr p1, p2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    sub-int/2addr p1, p2

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int/2addr p2, v1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr p2, v1

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x0

    .line 53
    :goto_0
    const/16 v3, 0x8

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    const/high16 v5, 0x40000000    # 2.0f

    .line 57
    .line 58
    if-ge v2, v1, :cond_c

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eq v7, v3, :cond_b

    .line 69
    .line 70
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lk4/d;

    .line 75
    .line 76
    if-eqz v3, :cond_b

    .line 77
    .line 78
    iget-boolean v7, v3, Lk4/d;->a:Z

    .line 79
    .line 80
    if-eqz v7, :cond_b

    .line 81
    .line 82
    iget v7, v3, Lk4/d;->b:I

    .line 83
    .line 84
    and-int/lit8 v8, v7, 0x7

    .line 85
    .line 86
    and-int/lit8 v7, v7, 0x70

    .line 87
    .line 88
    const/16 v9, 0x30

    .line 89
    .line 90
    if-eq v7, v9, :cond_1

    .line 91
    .line 92
    const/16 v9, 0x50

    .line 93
    .line 94
    if-ne v7, v9, :cond_0

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    const/4 v7, 0x0

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 100
    :goto_2
    const/4 v9, 0x3

    .line 101
    if-eq v8, v9, :cond_3

    .line 102
    .line 103
    const/4 v9, 0x5

    .line 104
    if-ne v8, v9, :cond_2

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_2
    const/4 v4, 0x0

    .line 108
    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    .line 109
    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    const/high16 v8, 0x40000000    # 2.0f

    .line 113
    .line 114
    :cond_4
    const/high16 v9, -0x80000000

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    if-eqz v4, :cond_4

    .line 118
    .line 119
    const/high16 v9, 0x40000000    # 2.0f

    .line 120
    .line 121
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    .line 123
    const/4 v11, -0x1

    .line 124
    const/4 v12, -0x2

    .line 125
    if-eq v10, v12, :cond_7

    .line 126
    .line 127
    if-eq v10, v11, :cond_6

    .line 128
    .line 129
    :goto_5
    const/high16 v8, 0x40000000    # 2.0f

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_6
    move v10, p1

    .line 133
    goto :goto_5

    .line 134
    :cond_7
    move v10, p1

    .line 135
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    .line 137
    if-eq v3, v12, :cond_9

    .line 138
    .line 139
    if-eq v3, v11, :cond_8

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_8
    move v3, p2

    .line 143
    goto :goto_7

    .line 144
    :cond_9
    move v3, p2

    .line 145
    move v5, v9

    .line 146
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 155
    .line 156
    .line 157
    if-eqz v7, :cond_a

    .line 158
    .line 159
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    sub-int/2addr p2, v3

    .line 164
    goto :goto_8

    .line 165
    :cond_a
    if-eqz v4, :cond_b

    .line 166
    .line 167
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    sub-int/2addr p1, v3

    .line 172
    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 176
    .line 177
    .line 178
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    iput p2, p0, Lk4/g;->r:I

    .line 183
    .line 184
    iput-boolean v4, p0, Lk4/g;->s:Z

    .line 185
    .line 186
    invoke-virtual {p0}, Lk4/g;->i()V

    .line 187
    .line 188
    .line 189
    iput-boolean v0, p0, Lk4/g;->s:Z

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    :goto_9
    if-ge v0, p2, :cond_f

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eq v2, v3, :cond_e

    .line 206
    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Lk4/d;

    .line 212
    .line 213
    if-eqz v2, :cond_d

    .line 214
    .line 215
    iget-boolean v4, v2, Lk4/d;->a:Z

    .line 216
    .line 217
    if-nez v4, :cond_e

    .line 218
    .line 219
    :cond_d
    int-to-float v4, p1

    .line 220
    iget v2, v2, Lk4/d;->c:F

    .line 221
    .line 222
    mul-float v4, v4, v2

    .line 223
    .line 224
    float-to-int v2, v4

    .line 225
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    iget v4, p0, Lk4/g;->r:I

    .line 230
    .line 231
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 232
    .line 233
    .line 234
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_f
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v0

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    const/4 v4, -0x1

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lk4/g;->e(Landroid/view/View;)Lk4/c;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iget v6, v6, Lk4/c;->b:I

    .line 38
    .line 39
    iget v7, p0, Lk4/g;->e:I

    .line 40
    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    add-int/2addr v0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lk4/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lk4/f;

    .line 10
    .line 11
    iget-object v0, p1, Le1/b;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget p1, p1, Lk4/f;->c:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, p1, v0, v1}, Lk4/g;->m(IZZ)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v0, p1, Lk4/f;->c:I

    .line 29
    .line 30
    iput v0, p0, Lk4/g;->f:I

    .line 31
    .line 32
    iget-object p1, p1, Lk4/f;->d:Landroid/os/Parcelable;

    .line 33
    .line 34
    iput-object p1, p0, Lk4/g;->g:Landroid/os/Parcelable;

    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lk4/f;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lk4/f;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lk4/g;->e:I

    .line 11
    .line 12
    iput v0, v1, Lk4/f;->c:I

    .line 13
    .line 14
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, v1, Lk4/f;->d:Landroid/os/Parcelable;

    .line 23
    .line 24
    :cond_0
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget p2, p0, Lk4/g;->k:I

    .line 7
    .line 8
    invoke-virtual {p0, p1, p3, p2, p2}, Lk4/g;->k(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk4/g;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public setAdapter(Lk4/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lk4/a;->e(Lk4/g;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lk4/g;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v0, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lk4/c;

    .line 28
    .line 29
    iget-object v4, p0, Lk4/g;->d:Lk4/a;

    .line 30
    .line 31
    iget v3, v3, Lk4/c;->b:I

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Lk4/a;->a(I)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lk4/a;->b()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-ge v0, v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lk4/d;

    .line 63
    .line 64
    iget-boolean v3, v3, Lk4/d;->a:Z

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, -0x1

    .line 72
    .line 73
    :cond_1
    add-int/2addr v0, v1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iput v2, p0, Lk4/g;->e:I

    .line 76
    .line 77
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p1

    .line 84
    :cond_3
    :goto_2
    iput-object p1, p0, Lk4/g;->d:Lk4/a;

    .line 85
    .line 86
    iput v2, p0, Lk4/g;->a:I

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    iget-object v0, p0, Lk4/g;->j:Lc1/b;

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    new-instance v0, Lc1/b;

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    invoke-direct {v0, v3, p0}, Lc1/b;-><init>(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lk4/g;->j:Lc1/b;

    .line 101
    .line 102
    :cond_4
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 103
    .line 104
    invoke-virtual {v0}, Lk4/a;->d()V

    .line 105
    .line 106
    .line 107
    iget-boolean v0, p0, Lk4/g;->z:Z

    .line 108
    .line 109
    iput-boolean v1, p0, Lk4/g;->z:Z

    .line 110
    .line 111
    iget-object v3, p0, Lk4/g;->d:Lk4/a;

    .line 112
    .line 113
    invoke-virtual {v3}, Lk4/a;->c()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    iput v3, p0, Lk4/g;->a:I

    .line 118
    .line 119
    iget v3, p0, Lk4/g;->f:I

    .line 120
    .line 121
    if-ltz v3, :cond_5

    .line 122
    .line 123
    iget-object v0, p0, Lk4/g;->d:Lk4/a;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget v0, p0, Lk4/g;->f:I

    .line 129
    .line 130
    invoke-virtual {p0, v0, v2, v1}, Lk4/g;->m(IZZ)V

    .line 131
    .line 132
    .line 133
    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lk4/g;->f:I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    if-nez v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0}, Lk4/g;->i()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_3
    iget-object v0, p0, Lk4/g;->E:Ljava/util/ArrayList;

    .line 147
    .line 148
    if-eqz v0, :cond_9

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_9

    .line 155
    .line 156
    iget-object v0, p0, Lk4/g;->E:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    :goto_4
    if-ge v2, v0, :cond_9

    .line 163
    .line 164
    iget-object v1, p0, Lk4/g;->E:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lp7/c;

    .line 171
    .line 172
    iget-object v3, v1, Lp7/c;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 173
    .line 174
    iget-object v4, v3, Lcom/google/android/material/tabs/TabLayout;->R:Lk4/g;

    .line 175
    .line 176
    if-ne v4, p0, :cond_8

    .line 177
    .line 178
    iget-boolean v1, v1, Lp7/c;->a:Z

    .line 179
    .line 180
    invoke-virtual {v3, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->k(Lk4/a;Z)V

    .line 181
    .line 182
    .line 183
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk4/g;->z:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lk4/g;->m(IZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    :cond_0
    iget v0, p0, Lk4/g;->v:I

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    iput p1, p0, Lk4/g;->v:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lk4/g;->i()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lk4/e;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lk4/g;->D:Lk4/e;

    .line 2
    .line 3
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lk4/g;->k:I

    .line 2
    .line 3
    iput p1, p0, Lk4/g;->k:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v1, p1, v0}, Lk4/g;->k(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk4/g;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk4/g;->l:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollState(I)V
    .locals 7

    .line 1
    iget v0, p0, Lk4/g;->L:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lk4/g;->L:I

    .line 7
    .line 8
    iget-object v0, p0, Lk4/g;->F:Ls9/a;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_1
    if-ge v3, v2, :cond_3

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v4, p0, Lk4/g;->G:I

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    const/4 v4, 0x0

    .line 31
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget-object v0, p0, Lk4/g;->D:Lk4/e;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    check-cast v0, Lp7/i;

    .line 47
    .line 48
    iget v2, v0, Lp7/i;->c:I

    .line 49
    .line 50
    iput v2, v0, Lp7/i;->b:I

    .line 51
    .line 52
    iput p1, v0, Lp7/i;->c:I

    .line 53
    .line 54
    iget-object v2, v0, Lp7/i;->a:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    iget v0, v0, Lp7/i;->c:I

    .line 65
    .line 66
    iput v0, v2, Lcom/google/android/material/tabs/TabLayout;->M0:I

    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lk4/g;->C:Ljava/util/ArrayList;

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_3
    if-ge v1, v0, :cond_6

    .line 77
    .line 78
    iget-object v2, p0, Lk4/g;->C:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lk4/e;

    .line 85
    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    check-cast v2, Lp7/i;

    .line 89
    .line 90
    iget v3, v2, Lp7/i;->c:I

    .line 91
    .line 92
    iput v3, v2, Lp7/i;->b:I

    .line 93
    .line 94
    iput p1, v2, Lp7/i;->c:I

    .line 95
    .line 96
    iget-object v3, v2, Lp7/i;->a:Ljava/lang/ref/WeakReference;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    iget v2, v2, Lp7/i;->c:I

    .line 107
    .line 108
    iput v2, v3, Lcom/google/android/material/tabs/TabLayout;->M0:I

    .line 109
    .line 110
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lk4/g;->l:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method
