.class public Landroidx/leanback/transition/FadeAndShortSlide;
.super Landroid/transition/Visibility;
.source "SourceFile"


# static fields
.field public static final d:Landroid/view/animation/DecelerateInterpolator;

.field public static final e:Landroidx/leanback/transition/a;

.field public static final f:Landroidx/leanback/transition/a;

.field public static final g:Landroidx/leanback/transition/a;

.field public static final h:Landroidx/leanback/transition/a;

.field public static final i:Landroidx/leanback/transition/a;


# instance fields
.field public final a:Ld/b;

.field public b:Landroid/transition/Visibility;

.field public final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/leanback/transition/FadeAndShortSlide;->d:Landroid/view/animation/DecelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroidx/leanback/transition/a;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Landroidx/leanback/transition/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/leanback/transition/FadeAndShortSlide;->e:Landroidx/leanback/transition/a;

    .line 15
    .line 16
    new-instance v0, Landroidx/leanback/transition/a;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Landroidx/leanback/transition/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/leanback/transition/FadeAndShortSlide;->f:Landroidx/leanback/transition/a;

    .line 23
    .line 24
    new-instance v0, Landroidx/leanback/transition/a;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-direct {v0, v1}, Landroidx/leanback/transition/a;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroidx/leanback/transition/FadeAndShortSlide;->g:Landroidx/leanback/transition/a;

    .line 31
    .line 32
    new-instance v0, Landroidx/leanback/transition/a;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-direct {v0, v1}, Landroidx/leanback/transition/a;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/leanback/transition/FadeAndShortSlide;->h:Landroidx/leanback/transition/a;

    .line 39
    .line 40
    new-instance v0, Landroidx/leanback/transition/a;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    invoke-direct {v0, v1}, Landroidx/leanback/transition/a;-><init>(I)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Landroidx/leanback/transition/FadeAndShortSlide;->i:Landroidx/leanback/transition/a;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/transition/Fade;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 10
    .line 11
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    .line 13
    iput v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->c:F

    .line 14
    .line 15
    new-instance v0, Landroidx/leanback/transition/b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/leanback/transition/b;-><init>(Landroidx/leanback/transition/FadeAndShortSlide;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Ln1/a;->h:[I

    .line 21
    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x3

    .line 27
    const v1, 0x800003

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/16 v2, 0x30

    .line 35
    .line 36
    if-eq p2, v2, :cond_5

    .line 37
    .line 38
    const/16 v2, 0x50

    .line 39
    .line 40
    if-eq p2, v2, :cond_4

    .line 41
    .line 42
    const/16 v2, 0x70

    .line 43
    .line 44
    if-eq p2, v2, :cond_3

    .line 45
    .line 46
    if-eq p2, v1, :cond_2

    .line 47
    .line 48
    const v0, 0x800005

    .line 49
    .line 50
    .line 51
    if-eq p2, v0, :cond_1

    .line 52
    .line 53
    const v0, 0x800007

    .line 54
    .line 55
    .line 56
    if-ne p2, v0, :cond_0

    .line 57
    .line 58
    sget-object p2, Landroidx/leanback/transition/FadeAndShortSlide;->g:Landroidx/leanback/transition/a;

    .line 59
    .line 60
    iput-object p2, p0, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p2, "Invalid slide direction"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    sget-object p2, Landroidx/leanback/transition/FadeAndShortSlide;->f:Landroidx/leanback/transition/a;

    .line 72
    .line 73
    iput-object p2, p0, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object p2, Landroidx/leanback/transition/FadeAndShortSlide;->e:Landroidx/leanback/transition/a;

    .line 77
    .line 78
    iput-object p2, p0, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iput-object v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    sget-object p2, Landroidx/leanback/transition/FadeAndShortSlide;->h:Landroidx/leanback/transition/a;

    .line 85
    .line 86
    iput-object p2, p0, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    sget-object p2, Landroidx/leanback/transition/FadeAndShortSlide;->i:Landroidx/leanback/transition/a;

    .line 90
    .line 91
    iput-object p2, p0, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 92
    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->c:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-ltz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    div-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    int-to-float v0, p1

    .line 16
    :goto_0
    return v0
.end method

.method public final addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final b(Landroid/view/ViewGroup;)F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->c:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-ltz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    div-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    int-to-float v0, p1

    .line 16
    :goto_0
    return v0
.end method

.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, La2/p0;->g(Landroid/transition/TransitionValues;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, La2/p0;->k(Landroid/transition/TransitionValues;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "android:fadeAndShortSlideTransition:screenPosition"

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, La2/p0;->g(Landroid/transition/TransitionValues;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, La2/p0;->k(Landroid/transition/TransitionValues;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "android:fadeAndShortSlideTransition:screenPosition"

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final clone()Landroid/transition/Transition;
    .locals 2

    .line 2
    invoke-super {p0}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/leanback/transition/FadeAndShortSlide;

    .line 3
    iget-object v1, p0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    invoke-virtual {v1}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/Visibility;

    iput-object v1, v0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/transition/FadeAndShortSlide;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 14

    .line 1
    move-object v10, p0

    .line 2
    move-object v11, p1

    .line 3
    move-object/from16 v12, p2

    .line 4
    .line 5
    move-object/from16 v13, p4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez v13, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    if-ne v11, v12, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-static/range {p4 .. p4}, La2/p0;->k(Landroid/transition/TransitionValues;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "android:fadeAndShortSlideTransition:screenPosition"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aget v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aget v3, v0, v1

    .line 31
    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget-object v1, v10, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 37
    .line 38
    invoke-virtual {v1, p0, p1, v12, v0}, Ld/b;->E(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    iget-object v1, v10, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 47
    .line 48
    invoke-virtual {v1, p0, p1, v12, v0}, Ld/b;->F(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    sget-object v8, Landroidx/leanback/transition/FadeAndShortSlide;->d:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    .line 54
    move-object/from16 v0, p2

    .line 55
    .line 56
    move-object/from16 v1, p4

    .line 57
    .line 58
    move-object v9, p0

    .line 59
    invoke-static/range {v0 .. v9}, Lq4/a;->g(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/view/animation/DecelerateInterpolator;Landroidx/leanback/transition/FadeAndShortSlide;)Landroid/animation/ObjectAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, v10, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 64
    .line 65
    move-object/from16 v2, p3

    .line 66
    .line 67
    invoke-static {v1, p1, v12, v2, v13}, Landroidx/fragment/app/o1;->c(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_2
    if-nez v1, :cond_3

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 78
    .line 79
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 87
    .line 88
    .line 89
    return-object v2
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 14

    .line 1
    move-object v10, p0

    .line 2
    move-object v11, p1

    .line 3
    move-object/from16 v12, p2

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez v13, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    if-ne v11, v12, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-static/range {p3 .. p3}, La2/p0;->k(Landroid/transition/TransitionValues;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "android:fadeAndShortSlideTransition:screenPosition"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aget v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aget v3, v0, v1

    .line 31
    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v1, v10, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 37
    .line 38
    invoke-virtual {v1, p0, p1, v12, v0}, Ld/b;->E(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-object v1, v10, Landroidx/leanback/transition/FadeAndShortSlide;->a:Ld/b;

    .line 47
    .line 48
    invoke-virtual {v1, p0, p1, v12, v0}, Ld/b;->F(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    sget-object v8, Landroidx/leanback/transition/FadeAndShortSlide;->d:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    .line 54
    move-object/from16 v0, p2

    .line 55
    .line 56
    move-object/from16 v1, p3

    .line 57
    .line 58
    move-object v9, p0

    .line 59
    invoke-static/range {v0 .. v9}, Lq4/a;->g(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/view/animation/DecelerateInterpolator;Landroidx/leanback/transition/FadeAndShortSlide;)Landroid/animation/ObjectAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, v10, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 64
    .line 65
    move-object/from16 v2, p4

    .line 66
    .line 67
    invoke-static {v1, p1, v12, v13, v2}, Landroidx/fragment/app/o1;->B(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_2
    if-nez v1, :cond_3

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 78
    .line 79
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 87
    .line 88
    .line 89
    return-object v2
.end method

.method public final removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/transition/FadeAndShortSlide;->b:Landroid/transition/Visibility;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
