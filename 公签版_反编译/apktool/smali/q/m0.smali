.class public final Lq/m0;
.super Lqf/c;
.source "SourceFile"

# interfaces
.implements Lw/c;


# static fields
.field public static final A:Landroid/view/animation/DecelerateInterpolator;

.field public static final z:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Lw/m1;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public final h:Landroid/view/View;

.field public i:Z

.field public j:Lq/l0;

.field public k:Lq/l0;

.field public l:Lkf/d;

.field public m:Z

.field public final n:Ljava/util/ArrayList;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lu/k;

.field public u:Z

.field public v:Z

.field public final w:Lq/k0;

.field public final x:Lq/k0;

.field public final y:Ll5/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq/m0;->z:Landroid/view/animation/AccelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lq/m0;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqf/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/m0;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lq/m0;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lq/m0;->p:Z

    .line 6
    iput-boolean v0, p0, Lq/m0;->s:Z

    .line 7
    new-instance v0, Lq/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq/k0;-><init>(Lq/m0;I)V

    iput-object v0, p0, Lq/m0;->w:Lq/k0;

    .line 8
    new-instance v0, Lq/k0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq/k0;-><init>(Lq/m0;I)V

    iput-object v0, p0, Lq/m0;->x:Lq/k0;

    .line 9
    new-instance v0, Ll5/y;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lq/m0;->y:Ll5/y;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lq/m0;->m0(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lq/m0;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lqf/c;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/m0;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lq/m0;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lq/m0;->p:Z

    .line 19
    iput-boolean v0, p0, Lq/m0;->s:Z

    .line 20
    new-instance v0, Lq/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq/k0;-><init>(Lq/m0;I)V

    iput-object v0, p0, Lq/m0;->w:Lq/k0;

    .line 21
    new-instance v0, Lq/k0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq/k0;-><init>(Lq/m0;I)V

    iput-object v0, p0, Lq/m0;->x:Lq/k0;

    .line 22
    new-instance v0, Ll5/y;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lq/m0;->y:Ll5/y;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq/m0;->m0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final k0(Z)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v1, p0, Lq/m0;->r:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lq/m0;->r:Z

    .line 10
    .line 11
    iget-object v2, p0, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lq/m0;->p0(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v1, p0, Lq/m0;->r:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iput-boolean v0, p0, Lq/m0;->r:Z

    .line 27
    .line 28
    iget-object v1, p0, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Lq/m0;->p0(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    iget-object v1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    invoke-static {v1}, Lx0/b1;->m(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    if-eqz v1, :cond_7

    .line 48
    .line 49
    const-wide/16 v4, 0xc8

    .line 50
    .line 51
    const-wide/16 v6, 0x64

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 56
    .line 57
    check-cast p1, Lw/n3;

    .line 58
    .line 59
    iget-object v1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 60
    .line 61
    invoke-static {v1}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Lx0/l1;->a(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v6, v7}, Lx0/l1;->c(J)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lu/j;

    .line 73
    .line 74
    invoke-direct {v2, p1, v3}, Lu/j;-><init>(Lw/n3;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lx0/l1;->d(Lx0/m1;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lx0/l1;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 88
    .line 89
    check-cast p1, Lw/n3;

    .line 90
    .line 91
    iget-object v1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 92
    .line 93
    invoke-static {v1}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/high16 v3, 0x3f800000    # 1.0f

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lx0/l1;->a(F)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v4, v5}, Lx0/l1;->c(J)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Lu/j;

    .line 106
    .line 107
    invoke-direct {v3, p1, v0}, Lu/j;-><init>(Lw/n3;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Lx0/l1;->d(Lx0/m1;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 114
    .line 115
    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lx0/l1;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    move-object v8, v1

    .line 120
    move-object v1, p1

    .line 121
    move-object p1, v8

    .line 122
    :goto_1
    new-instance v0, Lu/k;

    .line 123
    .line 124
    invoke-direct {v0}, Lu/k;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Lu/k;->a:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v1, v1, Lx0/l1;->a:Ljava/lang/ref/WeakReference;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Landroid/view/View;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    const-wide/16 v3, 0x0

    .line 152
    .line 153
    :goto_2
    iget-object v1, p1, Lx0/l1;->a:Ljava/lang/ref/WeakReference;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroid/view/View;

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 168
    .line 169
    .line 170
    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lu/k;->b()V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    if-eqz p1, :cond_8

    .line 178
    .line 179
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 180
    .line 181
    check-cast p1, Lw/n3;

    .line 182
    .line 183
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 184
    .line 185
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_8
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 195
    .line 196
    check-cast p1, Lw/n3;

    .line 197
    .line 198
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 204
    .line 205
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    :goto_3
    return-void
.end method

.method public final l0()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lq/m0;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lq/m0;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f04000d

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v2, p0, Lq/m0;->b:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lq/m0;->c:Landroid/content/Context;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lq/m0;->b:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v0, p0, Lq/m0;->c:Landroid/content/Context;

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lq/m0;->c:Landroid/content/Context;

    .line 42
    .line 43
    return-object v0
.end method

.method public final m0(Landroid/view/View;)V
    .locals 6

    .line 1
    const v0, 0x7f0b00c8

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lw/c;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const v0, 0x7f0b0040

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lw/m1;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lw/m1;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    if-eqz v1, :cond_8

    .line 34
    .line 35
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lw/m1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Lq/m0;->f:Lw/m1;

    .line 42
    .line 43
    const v0, 0x7f0b0048

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    .line 52
    iput-object v0, p0, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    .line 54
    const v0, 0x7f0b0042

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    .line 63
    iput-object p1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 64
    .line 65
    iget-object v0, p0, Lq/m0;->f:Lw/m1;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    iget-object v1, p0, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    check-cast v0, Lw/n3;

    .line 76
    .line 77
    iget-object p1, v0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lq/m0;->b:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v0, p0, Lq/m0;->f:Lw/m1;

    .line 86
    .line 87
    check-cast v0, Lw/n3;

    .line 88
    .line 89
    iget v0, v0, Lw/n3;->b:I

    .line 90
    .line 91
    and-int/lit8 v0, v0, 0x4

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const/4 v0, 0x0

    .line 100
    :goto_1
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iput-boolean v1, p0, Lq/m0;->i:Z

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 109
    .line 110
    const/16 v4, 0xe

    .line 111
    .line 112
    iget-object v0, p0, Lq/m0;->f:Lw/m1;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/high16 v0, 0x7f050000

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lq/m0;->o0(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lq/m0;->b:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v0, Lp/a;->a:[I

    .line 133
    .line 134
    const v3, 0x7f040008

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    iget-object v0, p0, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 149
    .line 150
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 151
    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    iput-boolean v1, p0, Lq/m0;->v:Z

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_5
    :goto_2
    const/16 v0, 0xc

    .line 169
    .line 170
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    int-to-float v0, v0

    .line 177
    iget-object v1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 178
    .line 179
    sget-object v2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 180
    .line 181
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .line 183
    const/16 v3, 0x15

    .line 184
    .line 185
    if-lt v2, v3, :cond_6

    .line 186
    .line 187
    invoke-static {v1, v0}, Lx0/p0;->s(Landroid/view/View;F)V

    .line 188
    .line 189
    .line 190
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    const-class v0, Lq/m0;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, " can only be used with a compatible window decor layout"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    goto :goto_3

    .line 225
    :cond_9
    const-string v0, "null"

    .line 226
    .line 227
    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p1
.end method

.method public final n0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lq/m0;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x4

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lq/m0;->f:Lw/m1;

    .line 12
    .line 13
    check-cast v1, Lw/n3;

    .line 14
    .line 15
    iget v2, v1, Lw/n3;->b:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p0, Lq/m0;->i:Z

    .line 19
    .line 20
    and-int/2addr p1, v0

    .line 21
    and-int/lit8 v0, v2, -0x5

    .line 22
    .line 23
    or-int/2addr p1, v0

    .line 24
    invoke-virtual {v1, p1}, Lw/n3;->a(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final o0(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 5
    .line 6
    check-cast p1, Lw/n3;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lw/s2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lw/s2;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 23
    .line 24
    check-cast p1, Lw/n3;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lq/m0;->f:Lw/m1;

    .line 35
    .line 36
    check-cast p1, Lw/n3;

    .line 37
    .line 38
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final p0(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lq/m0;->q:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lq/m0;->r:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lq/m0;->h:Landroid/view/View;

    .line 15
    .line 16
    const-wide/16 v4, 0xfa

    .line 17
    .line 18
    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iget-object v7, p0, Lq/m0;->y:Ll5/y;

    .line 21
    .line 22
    if-eqz v0, :cond_c

    .line 23
    .line 24
    iget-boolean v0, p0, Lq/m0;->s:Z

    .line 25
    .line 26
    if-nez v0, :cond_16

    .line 27
    .line 28
    iput-boolean v2, p0, Lq/m0;->s:Z

    .line 29
    .line 30
    iget-object v0, p0, Lq/m0;->t:Lu/k;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lu/k;->a()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lq/m0;->o:I

    .line 43
    .line 44
    iget-object v8, p0, Lq/m0;->x:Lq/k0;

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    if-nez v0, :cond_a

    .line 48
    .line 49
    iget-boolean v0, p0, Lq/m0;->u:Z

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    if-eqz p1, :cond_a

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 56
    .line 57
    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    neg-int v0, v0

    .line 67
    int-to-float v0, v0

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    filled-new-array {v3, v3}, [I

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v3, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 75
    .line 76
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 77
    .line 78
    .line 79
    aget p1, p1, v2

    .line 80
    .line 81
    int-to-float p1, p1

    .line 82
    sub-float/2addr v0, p1

    .line 83
    :cond_4
    iget-object p1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lu/k;

    .line 89
    .line 90
    invoke-direct {p1}, Lu/k;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 94
    .line 95
    invoke-static {v2}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2, v9}, Lx0/l1;->f(F)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v7}, Lx0/l1;->e(Ll5/y;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v3, p1, Lu/k;->e:Z

    .line 106
    .line 107
    iget-object v6, p1, Lu/k;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    if-nez v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-boolean v2, p0, Lq/m0;->p:Z

    .line 115
    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, v9}, Lx0/l1;->f(F)V

    .line 128
    .line 129
    .line 130
    iget-boolean v1, p1, Lu/k;->e:Z

    .line 131
    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_6
    sget-object v0, Lq/m0;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 138
    .line 139
    iget-boolean v1, p1, Lu/k;->e:Z

    .line 140
    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    iput-object v0, p1, Lu/k;->c:Landroid/view/animation/Interpolator;

    .line 144
    .line 145
    :cond_7
    if-nez v1, :cond_8

    .line 146
    .line 147
    iput-wide v4, p1, Lu/k;->b:J

    .line 148
    .line 149
    :cond_8
    if-nez v1, :cond_9

    .line 150
    .line 151
    iput-object v8, p1, Lu/k;->d:Lcom/bumptech/glide/d;

    .line 152
    .line 153
    :cond_9
    iput-object p1, p0, Lq/m0;->t:Lu/k;

    .line 154
    .line 155
    invoke-virtual {p1}, Lu/k;->b()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_a
    iget-object p1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 160
    .line 161
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 165
    .line 166
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    .line 168
    .line 169
    iget-boolean p1, p0, Lq/m0;->p:Z

    .line 170
    .line 171
    if-eqz p1, :cond_b

    .line 172
    .line 173
    if-eqz v1, :cond_b

    .line 174
    .line 175
    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 176
    .line 177
    .line 178
    :cond_b
    invoke-virtual {v8}, Lq/k0;->c()V

    .line 179
    .line 180
    .line 181
    :goto_1
    iget-object p1, p0, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 182
    .line 183
    if-eqz p1, :cond_16

    .line 184
    .line 185
    invoke-static {p1}, Lx0/b1;->v(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :cond_c
    iget-boolean v0, p0, Lq/m0;->s:Z

    .line 191
    .line 192
    if-eqz v0, :cond_16

    .line 193
    .line 194
    iput-boolean v3, p0, Lq/m0;->s:Z

    .line 195
    .line 196
    iget-object v0, p0, Lq/m0;->t:Lu/k;

    .line 197
    .line 198
    if-eqz v0, :cond_d

    .line 199
    .line 200
    invoke-virtual {v0}, Lu/k;->a()V

    .line 201
    .line 202
    .line 203
    :cond_d
    iget v0, p0, Lq/m0;->o:I

    .line 204
    .line 205
    iget-object v8, p0, Lq/m0;->w:Lq/k0;

    .line 206
    .line 207
    if-nez v0, :cond_15

    .line 208
    .line 209
    iget-boolean v0, p0, Lq/m0;->u:Z

    .line 210
    .line 211
    if-nez v0, :cond_e

    .line 212
    .line 213
    if-eqz p1, :cond_15

    .line 214
    .line 215
    :cond_e
    iget-object v0, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 216
    .line 217
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lu/k;

    .line 226
    .line 227
    invoke-direct {v0}, Lu/k;-><init>()V

    .line 228
    .line 229
    .line 230
    iget-object v6, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 231
    .line 232
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    neg-int v6, v6

    .line 237
    int-to-float v6, v6

    .line 238
    if-eqz p1, :cond_f

    .line 239
    .line 240
    filled-new-array {v3, v3}, [I

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object v3, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 245
    .line 246
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 247
    .line 248
    .line 249
    aget p1, p1, v2

    .line 250
    .line 251
    int-to-float p1, p1

    .line 252
    sub-float/2addr v6, p1

    .line 253
    :cond_f
    iget-object p1, p0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 254
    .line 255
    invoke-static {p1}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p1, v6}, Lx0/l1;->f(F)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v7}, Lx0/l1;->e(Ll5/y;)V

    .line 263
    .line 264
    .line 265
    iget-boolean v2, v0, Lu/k;->e:Z

    .line 266
    .line 267
    iget-object v3, v0, Lu/k;->a:Ljava/util/ArrayList;

    .line 268
    .line 269
    if-nez v2, :cond_10

    .line 270
    .line 271
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    :cond_10
    iget-boolean p1, p0, Lq/m0;->p:Z

    .line 275
    .line 276
    if-eqz p1, :cond_11

    .line 277
    .line 278
    if-eqz v1, :cond_11

    .line 279
    .line 280
    invoke-static {v1}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p1, v6}, Lx0/l1;->f(F)V

    .line 285
    .line 286
    .line 287
    iget-boolean v1, v0, Lu/k;->e:Z

    .line 288
    .line 289
    if-nez v1, :cond_11

    .line 290
    .line 291
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    :cond_11
    sget-object p1, Lq/m0;->z:Landroid/view/animation/AccelerateInterpolator;

    .line 295
    .line 296
    iget-boolean v1, v0, Lu/k;->e:Z

    .line 297
    .line 298
    if-nez v1, :cond_12

    .line 299
    .line 300
    iput-object p1, v0, Lu/k;->c:Landroid/view/animation/Interpolator;

    .line 301
    .line 302
    :cond_12
    if-nez v1, :cond_13

    .line 303
    .line 304
    iput-wide v4, v0, Lu/k;->b:J

    .line 305
    .line 306
    :cond_13
    if-nez v1, :cond_14

    .line 307
    .line 308
    iput-object v8, v0, Lu/k;->d:Lcom/bumptech/glide/d;

    .line 309
    .line 310
    :cond_14
    iput-object v0, p0, Lq/m0;->t:Lu/k;

    .line 311
    .line 312
    invoke-virtual {v0}, Lu/k;->b()V

    .line 313
    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_15
    invoke-virtual {v8}, Lq/k0;->c()V

    .line 317
    .line 318
    .line 319
    :cond_16
    :goto_2
    return-void
.end method
