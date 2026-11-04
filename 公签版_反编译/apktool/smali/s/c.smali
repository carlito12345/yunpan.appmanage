.class public final Ls/c;
.super Ls1/g;
.source "SourceFile"


# instance fields
.field public final b:Landroid/animation/ObjectAnimator;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ls1/g;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    const/4 v3, 0x1

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 20
    .line 21
    :goto_1
    new-instance v0, Ls/d;

    .line 22
    .line 23
    invoke-direct {v0, p1, p2}, Ls/d;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 24
    .line 25
    .line 26
    const-string p2, "currentIndex"

    .line 27
    .line 28
    filled-new-array {v2, v1}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v1, 0x12

    .line 39
    .line 40
    if-lt p2, v1, :cond_2

    .line 41
    .line 42
    invoke-static {p1, v3}, Lt/b;->a(Landroid/animation/ObjectAnimator;Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget p2, v0, Ls/d;->c:I

    .line 46
    .line 47
    int-to-long v1, p2

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    .line 53
    .line 54
    iput-boolean p3, p0, Ls/c;->c:Z

    .line 55
    .line 56
    iput-object p1, p0, Ls/c;->b:Landroid/animation/ObjectAnimator;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final S()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/c;->b:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/c;->b:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c0()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/c;->b:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/c;->c:Z

    .line 2
    .line 3
    return v0
.end method
