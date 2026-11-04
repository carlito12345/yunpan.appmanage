.class public final Lq0/k;
.super Lq0/j;
.source "SourceFile"


# static fields
.field public static h:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lq0/j;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget-object p1, Lq0/k;->h:Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    const-class p1, Landroid/graphics/drawable/Drawable;

    const-string v0, "isProjected"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lq0/k;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>(Lq0/l;Landroid/content/res/Resources;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Lq0/j;-><init>(Lq0/l;Landroid/content/res/Resources;)V

    .line 5
    sget-object p1, Lq0/k;->h:Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    .line 6
    :try_start_0
    const-class p1, Landroid/graphics/drawable/Drawable;

    const-string p2, "isProjected"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lq0/k;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    instance-of v1, v0, Landroid/graphics/drawable/DrawableContainer;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    instance-of v1, v0, Landroid/graphics/drawable/InsetDrawable;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lm0/o;->s(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v2, 0x1

    .line 29
    :cond_1
    return v2
.end method

.method public final getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {v0}, Lm0/o;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lm0/o;->o(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isProjected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lq0/k;->h:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return v0

    .line 21
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final setHotspot(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lm0/o;->k(Landroid/graphics/drawable/Drawable;FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lm0/o;->m(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setState([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lq0/j;->setState([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final setTint(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq0/k;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lq0/j;->setTint(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lm0/o;->l(Landroid/graphics/drawable/Drawable;I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq0/k;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lq0/j;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lm0/o;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq0/k;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lq0/j;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lq0/j;->f:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lm0/o;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
