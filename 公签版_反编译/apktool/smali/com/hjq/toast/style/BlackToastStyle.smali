.class public Lcom/hjq/toast/style/BlackToastStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/toast/config/IToastStyle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hjq/toast/config/IToastStyle<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x102000b

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTextGravity(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTextColor(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTextSize(Landroid/content/Context;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getHorizontalPadding(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getVerticalPadding(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    const/4 v2, -0x2

    .line 50
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x15

    .line 64
    .line 65
    if-lt v3, v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTranslationZ(Landroid/content/Context;)F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-static {v0, p1}, Ltb/b;->w(Landroid/widget/TextView;F)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-object v0
.end method

.method public getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, -0x4d000000

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x1

    .line 20
    const/high16 v2, 0x41200000    # 10.0f

    .line 21
    .line 22
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final synthetic getGravity()I
    .locals 1

    .line 1
    invoke-static {p0}, Lt8/b;->a(Lcom/hjq/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method

.method public final synthetic getHorizontalMargin()F
    .locals 1

    .line 1
    invoke-static {p0}, Lt8/b;->b(Lcom/hjq/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method public getHorizontalPadding(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const/high16 v1, 0x41c00000    # 24.0f

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method public getTextColor(Landroid/content/Context;)I
    .locals 0

    const p1, -0x11000001

    return p1
.end method

.method public getTextGravity(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x11

    return p1
.end method

.method public getTextSize(Landroid/content/Context;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x2

    .line 10
    const/high16 v1, 0x41600000    # 14.0f

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getTranslationZ(Landroid/content/Context;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const/high16 v1, 0x40400000    # 3.0f

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final synthetic getVerticalMargin()F
    .locals 1

    .line 1
    invoke-static {p0}, Lt8/b;->c(Lcom/hjq/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method public getVerticalPadding(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const/high16 v1, 0x41800000    # 16.0f

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method public final synthetic getXOffset()I
    .locals 1

    .line 1
    invoke-static {p0}, Lt8/b;->d(Lcom/hjq/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method

.method public final synthetic getYOffset()I
    .locals 1

    .line 1
    invoke-static {p0}, Lt8/b;->e(Lcom/hjq/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method
