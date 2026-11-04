.class public final Landroidx/media3/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Lv3/d;

.field public c:F

.field public d:F

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Lv3/k0;

.field public i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 9
    .line 10
    sget-object p2, Lv3/d;->g:Lv3/d;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->b:Lv3/d;

    .line 13
    .line 14
    const p2, 0x3d5a511a    # 0.0533f

    .line 15
    .line 16
    .line 17
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->c:F

    .line 18
    .line 19
    const p2, 0x3da3d70a    # 0.08f

    .line 20
    .line 21
    .line 22
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->d:F

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->e:Z

    .line 26
    .line 27
    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 28
    .line 29
    new-instance v0, Lv3/c;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lv3/c;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->h:Lv3/k0;

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->g:I

    .line 42
    .line 43
    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_6

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lt1/b;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v4, Lt1/a;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Lt1/a;-><init>(Lt1/b;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v3, p0, Landroidx/media3/ui/SubtitleView;->e:Z

    .line 50
    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    iput-boolean v1, v4, Lt1/a;->n:Z

    .line 54
    .line 55
    iget-object v3, v4, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 56
    .line 57
    instance-of v5, v3, Landroid/text/Spanned;

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    instance-of v5, v3, Landroid/text/Spannable;

    .line 62
    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    invoke-static {v3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iput-object v3, v4, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    iput-object v3, v4, Lt1/a;->b:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    :cond_1
    iget-object v3, v4, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    check-cast v3, Landroid/text/Spannable;

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const-class v6, Ljava/lang/Object;

    .line 86
    .line 87
    invoke-interface {v3, v1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    array-length v6, v5

    .line 92
    const/4 v7, 0x0

    .line 93
    :goto_1
    if-ge v7, v6, :cond_3

    .line 94
    .line 95
    aget-object v8, v5, v7

    .line 96
    .line 97
    instance-of v9, v8, Lt1/f;

    .line 98
    .line 99
    if-nez v9, :cond_2

    .line 100
    .line 101
    invoke-interface {v3, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-static {v4}, Lcom/bumptech/glide/d;->Z(Lt1/a;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-boolean v3, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 112
    .line 113
    if-nez v3, :cond_5

    .line 114
    .line 115
    invoke-static {v4}, Lcom/bumptech/glide/d;->Z(Lt1/a;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lt1/a;->a()Lt1/b;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "captioning"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->d(Ljava/lang/Object;)Landroid/view/accessibility/CaptioningManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->x(Landroid/view/accessibility/CaptioningManager;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-static {v0}, Lm0/h;->a(Landroid/view/accessibility/CaptioningManager;)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_1
    return v1
.end method

.method private getUserCaptionStyle()Lv3/d;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lv3/d;->g:Lv3/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "captioning"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->d(Ljava/lang/Object;)Landroid/view/accessibility/CaptioningManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->x(Landroid/view/accessibility/CaptioningManager;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_6

    .line 31
    .line 32
    invoke-static {v0}, Lm0/h;->k(Landroid/view/accessibility/CaptioningManager;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v8, Lv3/d;

    .line 37
    .line 38
    invoke-static {v0}, Lua/t7;->x(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, -0x1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Lm0/h;->w(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    move v3, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v3, -0x1

    .line 52
    :goto_0
    invoke-static {v0}, Lua/t7;->A(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Lm0/h;->A(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    move v4, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/high16 v1, -0x1000000

    .line 65
    .line 66
    const/high16 v4, -0x1000000

    .line 67
    .line 68
    :goto_1
    invoke-static {v0}, Lua/t7;->B(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v5, 0x0

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-static {v0}, Lua/t7;->d(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    move v6, v1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 v6, 0x0

    .line 82
    :goto_2
    invoke-static {v0}, Lua/t7;->C(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-static {v0}, Lm0/h;->D(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    move v5, v1

    .line 93
    :cond_4
    invoke-static {v0}, Lua/t7;->D(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    invoke-static {v0}, Lm0/h;->e(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    move v7, v1

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    const/4 v7, -0x1

    .line 106
    :goto_3
    invoke-static {v0}, Lm0/h;->i(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/graphics/Typeface;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v1, v8

    .line 111
    move v2, v3

    .line 112
    move v3, v4

    .line 113
    move v4, v6

    .line 114
    move v6, v7

    .line 115
    move-object v7, v0

    .line 116
    invoke-direct/range {v1 .. v7}, Lv3/d;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 117
    .line 118
    .line 119
    move-object v1, v8

    .line 120
    :cond_6
    return-object v1
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lv3/k0;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroid/view/View;

    .line 7
    .line 8
    instance-of v1, v0, Lv3/q0;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lv3/q0;

    .line 13
    .line 14
    iget-object v0, v0, Lv3/q0;->b:Lv3/o0;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->i:Landroid/view/View;

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lv3/k0;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->h:Lv3/k0;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionStyle()Lv3/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setStyle(Lv3/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const v0, 0x3d5a511a    # 0.0533f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionFontScale()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    mul-float v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->h:Lv3/k0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->b:Lv3/d;

    .line 8
    .line 9
    iget v3, p0, Landroidx/media3/ui/SubtitleView;->c:F

    .line 10
    .line 11
    iget v4, p0, Landroidx/media3/ui/SubtitleView;->d:F

    .line 12
    .line 13
    invoke-interface {v0, v1, v2, v3, v4}, Lv3/k0;->a(Ljava/util/List;Lv3/d;FF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->e:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->d:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt1/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->c:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStyle(Lv3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->b:Lv3/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setViewType(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/ui/SubtitleView;->g:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lv3/q0;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lv3/q0;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_2
    new-instance v0, Lv3/c;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Lv3/c;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->g:I

    .line 44
    .line 45
    return-void
.end method
