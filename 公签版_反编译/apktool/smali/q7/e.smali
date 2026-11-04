.class public final Lq7/e;
.super Lm7/f;
.source "SourceFile"


# instance fields
.field public final q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lm7/j;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm7/f;-><init>(Lm7/j;)V

    .line 2
    iput-object p2, p0, Lq7/e;->q:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lq7/e;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lm7/f;-><init>(Lm7/f;)V

    .line 4
    iget-object p1, p1, Lq7/e;->q:Landroid/graphics/RectF;

    iput-object p1, p0, Lq7/e;->q:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lq7/g;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lq7/g;-><init>(Lq7/e;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lq7/f;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lq7/f;-><init>(Lq7/e;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Lm7/g;->invalidateSelf()V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
