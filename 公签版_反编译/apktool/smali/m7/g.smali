.class public Lm7/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lq0/h;
.implements Lm7/u;


# static fields
.field public static final y:Landroid/graphics/Paint;


# instance fields
.field public a:Lm7/f;

.field public final b:[Lm7/s;

.field public final c:[Lm7/s;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:Lm7/j;

.field public final n:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:Ll7/a;

.field public final r:Ll5/y;

.field public final s:Lm7/l;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public v:Landroid/graphics/PorterDuffColorFilter;

.field public final w:Landroid/graphics/RectF;

.field public final x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lm7/g;->y:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lm7/j;

    invoke-direct {v0}, Lm7/j;-><init>()V

    invoke-direct {p0, v0}, Lm7/g;-><init>(Lm7/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lm7/j;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lff/b;

    move-result-object p1

    .line 3
    new-instance p2, Lm7/j;

    invoke-direct {p2, p1}, Lm7/j;-><init>(Lff/b;)V

    .line 4
    invoke-direct {p0, p2}, Lm7/g;-><init>(Lm7/j;)V

    return-void
.end method

.method public constructor <init>(Lm7/f;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 7
    new-array v1, v0, [Lm7/s;

    iput-object v1, p0, Lm7/g;->b:[Lm7/s;

    .line 8
    new-array v0, v0, [Lm7/s;

    iput-object v0, p0, Lm7/g;->c:[Lm7/s;

    .line 9
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lm7/g;->d:Ljava/util/BitSet;

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lm7/g;->f:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm7/g;->g:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm7/g;->h:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm7/g;->i:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm7/g;->j:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lm7/g;->k:Landroid/graphics/Region;

    .line 16
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lm7/g;->l:Landroid/graphics/Region;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lm7/g;->n:Landroid/graphics/Paint;

    .line 18
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lm7/g;->p:Landroid/graphics/Paint;

    .line 19
    new-instance v3, Ll7/a;

    invoke-direct {v3}, Ll7/a;-><init>()V

    iput-object v3, p0, Lm7/g;->q:Ll7/a;

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 21
    sget-object v3, Lm7/k;->a:Lm7/l;

    goto :goto_0

    .line 22
    :cond_0
    new-instance v3, Lm7/l;

    invoke-direct {v3}, Lm7/l;-><init>()V

    :goto_0
    iput-object v3, p0, Lm7/g;->s:Lm7/l;

    .line 23
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lm7/g;->w:Landroid/graphics/RectF;

    .line 24
    iput-boolean v1, p0, Lm7/g;->x:Z

    .line 25
    iput-object p1, p0, Lm7/g;->a:Lm7/f;

    .line 26
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-virtual {p0}, Lm7/g;->m()Z

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lm7/g;->l([I)Z

    .line 30
    new-instance p1, Ll5/y;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lm7/g;->r:Ll5/y;

    return-void
.end method

.method public constructor <init>(Lm7/j;)V
    .locals 1

    .line 5
    new-instance v0, Lm7/f;

    invoke-direct {v0, p1}, Lm7/f;-><init>(Lm7/j;)V

    invoke-direct {p0, v0}, Lm7/g;-><init>(Lm7/f;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget-object v2, v0, Lm7/f;->a:Lm7/j;

    .line 4
    .line 5
    iget v3, v0, Lm7/f;->i:F

    .line 6
    .line 7
    iget-object v5, p0, Lm7/g;->r:Ll5/y;

    .line 8
    .line 9
    iget-object v1, p0, Lm7/g;->s:Lm7/l;

    .line 10
    .line 11
    move-object v4, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Lm7/l;->b(Lm7/j;FLandroid/graphics/RectF;Ll5/y;Landroid/graphics/Path;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 17
    .line 18
    iget v0, v0, Lm7/f;->h:F

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float v0, v0, v1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lm7/g;->f:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lm7/g;->a:Lm7/f;

    .line 32
    .line 33
    iget v1, v1, Lm7/f;->h:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v2, v3

    .line 42
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    div-float/2addr p1, v3

    .line 47
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lm7/g;->w:Landroid/graphics/RectF;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final c(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget v1, v0, Lm7/f;->m:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    iget v3, v0, Lm7/f;->l:F

    .line 8
    .line 9
    add-float/2addr v1, v3

    .line 10
    iget-object v0, v0, Lm7/f;->b:Lf7/a;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-boolean v3, v0, Lf7/a;->a:Z

    .line 15
    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    const/16 v3, 0xff

    .line 19
    .line 20
    invoke-static {p1, v3}, Lp0/a;->d(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget v5, v0, Lf7/a;->d:I

    .line 25
    .line 26
    if-ne v4, v5, :cond_3

    .line 27
    .line 28
    iget v4, v0, Lf7/a;->e:F

    .line 29
    .line 30
    cmpg-float v5, v4, v2

    .line 31
    .line 32
    if-lez v5, :cond_1

    .line 33
    .line 34
    cmpg-float v5, v1, v2

    .line 35
    .line 36
    if-gtz v5, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    div-float/2addr v1, v4

    .line 40
    float-to-double v4, v1

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    double-to-float v1, v4

    .line 46
    const/high16 v4, 0x40900000    # 4.5f

    .line 47
    .line 48
    mul-float v1, v1, v4

    .line 49
    .line 50
    const/high16 v4, 0x40000000    # 2.0f

    .line 51
    .line 52
    add-float/2addr v1, v4

    .line 53
    const/high16 v4, 0x42c80000    # 100.0f

    .line 54
    .line 55
    div-float/2addr v1, v4

    .line 56
    const/high16 v4, 0x3f800000    # 1.0f

    .line 57
    .line 58
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 64
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {p1, v3}, Lp0/a;->d(II)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget v3, v0, Lf7/a;->b:I

    .line 73
    .line 74
    invoke-static {p1, v1, v3}, Lcom/bumptech/glide/d;->K(IFI)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    cmpl-float v1, v1, v2

    .line 79
    .line 80
    if-lez v1, :cond_2

    .line 81
    .line 82
    iget v0, v0, Lf7/a;->c:I

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    sget v1, Lf7/a;->f:I

    .line 87
    .line 88
    invoke-static {v0, v1}, Lp0/a;->d(II)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0, p1}, Lp0/a;->b(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    :cond_2
    invoke-static {p1, v4}, Lp0/a;->d(II)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    :cond_3
    return p1
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lm7/g;->d:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 7
    .line 8
    iget v0, v0, Lm7/f;->o:I

    .line 9
    .line 10
    iget-object v1, p0, Lm7/g;->g:Landroid/graphics/Path;

    .line 11
    .line 12
    iget-object v2, p0, Lm7/g;->q:Ll7/a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v2, Ll7/a;->a:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    const/4 v4, 0x4

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    iget-object v4, p0, Lm7/g;->b:[Lm7/s;

    .line 27
    .line 28
    aget-object v4, v4, v3

    .line 29
    .line 30
    iget-object v5, p0, Lm7/g;->a:Lm7/f;

    .line 31
    .line 32
    iget v5, v5, Lm7/f;->n:I

    .line 33
    .line 34
    sget-object v6, Lm7/s;->b:Landroid/graphics/Matrix;

    .line 35
    .line 36
    invoke-virtual {v4, v6, v2, v5, p1}, Lm7/s;->a(Landroid/graphics/Matrix;Ll7/a;ILandroid/graphics/Canvas;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lm7/g;->c:[Lm7/s;

    .line 40
    .line 41
    aget-object v4, v4, v3

    .line 42
    .line 43
    iget-object v5, p0, Lm7/g;->a:Lm7/f;

    .line 44
    .line 45
    iget v5, v5, Lm7/f;->n:I

    .line 46
    .line 47
    invoke-virtual {v4, v6, v2, v5, p1}, Lm7/s;->a(Landroid/graphics/Matrix;Ll7/a;ILandroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-boolean v2, p0, Lm7/g;->x:Z

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lm7/g;->a:Lm7/f;

    .line 58
    .line 59
    iget v2, v2, Lm7/f;->o:I

    .line 60
    .line 61
    int-to-double v2, v2

    .line 62
    int-to-double v4, v0

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 72
    .line 73
    .line 74
    mul-double v6, v6, v2

    .line 75
    .line 76
    double-to-int v0, v6

    .line 77
    iget-object v2, p0, Lm7/g;->a:Lm7/f;

    .line 78
    .line 79
    iget v2, v2, Lm7/f;->o:I

    .line 80
    .line 81
    int-to-double v2, v2

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 91
    .line 92
    .line 93
    mul-double v4, v4, v2

    .line 94
    .line 95
    double-to-int v2, v4

    .line 96
    neg-int v3, v0

    .line 97
    int-to-float v3, v3

    .line 98
    neg-int v4, v2

    .line 99
    int-to-float v4, v4

    .line 100
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    .line 102
    .line 103
    sget-object v3, Lm7/g;->y:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    int-to-float v0, v0

    .line 109
    int-to-float v1, v2

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v8, v6, Lm7/g;->n:Landroid/graphics/Paint;

    .line 6
    .line 7
    iget-object v0, v6, Lm7/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 8
    .line 9
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    iget-object v0, v6, Lm7/g;->a:Lm7/f;

    .line 17
    .line 18
    iget v0, v0, Lm7/f;->k:I

    .line 19
    .line 20
    ushr-int/lit8 v1, v0, 0x7

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int v0, v0, v9

    .line 24
    .line 25
    ushr-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    .line 29
    .line 30
    iget-object v10, v6, Lm7/g;->p:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object v0, v6, Lm7/g;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 33
    .line 34
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35
    .line 36
    .line 37
    iget-object v0, v6, Lm7/g;->a:Lm7/f;

    .line 38
    .line 39
    iget v0, v0, Lm7/f;->j:F

    .line 40
    .line 41
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    iget-object v0, v6, Lm7/g;->a:Lm7/f;

    .line 49
    .line 50
    iget v0, v0, Lm7/f;->k:I

    .line 51
    .line 52
    ushr-int/lit8 v1, v0, 0x7

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    mul-int v0, v0, v11

    .line 56
    .line 57
    ushr-int/lit8 v0, v0, 0x8

    .line 58
    .line 59
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, v6, Lm7/g;->e:Z

    .line 63
    .line 64
    iget-object v3, v6, Lm7/g;->g:Landroid/graphics/Path;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Lm7/g;->h()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v2, 0x0

    .line 74
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    div-float/2addr v0, v4

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    neg-float v0, v0

    .line 86
    iget-object v5, v6, Lm7/g;->a:Lm7/f;

    .line 87
    .line 88
    iget-object v5, v5, Lm7/f;->a:Lm7/j;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v12, Lff/b;

    .line 94
    .line 95
    invoke-direct {v12, v5}, Lff/b;-><init>(Lm7/j;)V

    .line 96
    .line 97
    .line 98
    iget-object v13, v5, Lm7/j;->e:Lm7/c;

    .line 99
    .line 100
    instance-of v14, v13, Lm7/h;

    .line 101
    .line 102
    if-eqz v14, :cond_1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    new-instance v14, Lm7/b;

    .line 106
    .line 107
    invoke-direct {v14, v0, v13}, Lm7/b;-><init>(FLm7/c;)V

    .line 108
    .line 109
    .line 110
    move-object v13, v14

    .line 111
    :goto_1
    iput-object v13, v12, Lff/b;->e:Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v13, v5, Lm7/j;->f:Lm7/c;

    .line 114
    .line 115
    instance-of v14, v13, Lm7/h;

    .line 116
    .line 117
    if-eqz v14, :cond_2

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    new-instance v14, Lm7/b;

    .line 121
    .line 122
    invoke-direct {v14, v0, v13}, Lm7/b;-><init>(FLm7/c;)V

    .line 123
    .line 124
    .line 125
    move-object v13, v14

    .line 126
    :goto_2
    iput-object v13, v12, Lff/b;->f:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v13, v5, Lm7/j;->h:Lm7/c;

    .line 129
    .line 130
    instance-of v14, v13, Lm7/h;

    .line 131
    .line 132
    if-eqz v14, :cond_3

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    new-instance v14, Lm7/b;

    .line 136
    .line 137
    invoke-direct {v14, v0, v13}, Lm7/b;-><init>(FLm7/c;)V

    .line 138
    .line 139
    .line 140
    move-object v13, v14

    .line 141
    :goto_3
    iput-object v13, v12, Lff/b;->h:Ljava/lang/Object;

    .line 142
    .line 143
    iget-object v5, v5, Lm7/j;->g:Lm7/c;

    .line 144
    .line 145
    instance-of v13, v5, Lm7/h;

    .line 146
    .line 147
    if-eqz v13, :cond_4

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    new-instance v13, Lm7/b;

    .line 151
    .line 152
    invoke-direct {v13, v0, v5}, Lm7/b;-><init>(FLm7/c;)V

    .line 153
    .line 154
    .line 155
    move-object v5, v13

    .line 156
    :goto_4
    iput-object v5, v12, Lff/b;->g:Ljava/lang/Object;

    .line 157
    .line 158
    new-instance v14, Lm7/j;

    .line 159
    .line 160
    invoke-direct {v14, v12}, Lm7/j;-><init>(Lff/b;)V

    .line 161
    .line 162
    .line 163
    iput-object v14, v6, Lm7/g;->m:Lm7/j;

    .line 164
    .line 165
    iget-object v0, v6, Lm7/g;->a:Lm7/f;

    .line 166
    .line 167
    iget v15, v0, Lm7/f;->i:F

    .line 168
    .line 169
    iget-object v0, v6, Lm7/g;->j:Landroid/graphics/RectF;

    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lm7/g;->h()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_5

    .line 183
    .line 184
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    div-float/2addr v2, v4

    .line 189
    :cond_5
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v6, Lm7/g;->h:Landroid/graphics/Path;

    .line 193
    .line 194
    const/16 v17, 0x0

    .line 195
    .line 196
    iget-object v13, v6, Lm7/g;->s:Lm7/l;

    .line 197
    .line 198
    move-object/from16 v16, v0

    .line 199
    .line 200
    move-object/from16 v18, v2

    .line 201
    .line 202
    invoke-virtual/range {v13 .. v18}, Lm7/l;->b(Lm7/j;FLandroid/graphics/RectF;Ll5/y;Landroid/graphics/Path;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v6, v0, v3}, Lm7/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 210
    .line 211
    .line 212
    iput-boolean v1, v6, Lm7/g;->e:Z

    .line 213
    .line 214
    :cond_6
    iget-object v0, v6, Lm7/g;->a:Lm7/f;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iget v0, v0, Lm7/f;->n:I

    .line 220
    .line 221
    if-lez v0, :cond_b

    .line 222
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 224
    .line 225
    const/16 v2, 0x15

    .line 226
    .line 227
    if-lt v0, v2, :cond_7

    .line 228
    .line 229
    iget-object v4, v6, Lm7/g;->a:Lm7/f;

    .line 230
    .line 231
    iget-object v4, v4, Lm7/f;->a:Lm7/j;

    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v4, v5}, Lm7/j;->d(Landroid/graphics/RectF;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_b

    .line 242
    .line 243
    invoke-static {v3}, Ld2/a;->s(Landroid/graphics/Path;)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-nez v4, :cond_b

    .line 248
    .line 249
    const/16 v4, 0x1d

    .line 250
    .line 251
    if-ge v0, v4, :cond_b

    .line 252
    .line 253
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 254
    .line 255
    .line 256
    iget-object v4, v6, Lm7/g;->a:Lm7/f;

    .line 257
    .line 258
    iget v4, v4, Lm7/f;->o:I

    .line 259
    .line 260
    int-to-double v4, v4

    .line 261
    int-to-double v12, v1

    .line 262
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    .line 263
    .line 264
    .line 265
    move-result-wide v14

    .line 266
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 267
    .line 268
    .line 269
    move-result-wide v14

    .line 270
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 271
    .line 272
    .line 273
    mul-double v14, v14, v4

    .line 274
    .line 275
    double-to-int v1, v14

    .line 276
    iget-object v4, v6, Lm7/g;->a:Lm7/f;

    .line 277
    .line 278
    iget v4, v4, Lm7/f;->o:I

    .line 279
    .line 280
    int-to-double v4, v4

    .line 281
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    .line 282
    .line 283
    .line 284
    move-result-wide v12

    .line 285
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 286
    .line 287
    .line 288
    move-result-wide v12

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 290
    .line 291
    .line 292
    mul-double v12, v12, v4

    .line 293
    .line 294
    double-to-int v4, v12

    .line 295
    iget-boolean v5, v6, Lm7/g;->x:Z

    .line 296
    .line 297
    if-ge v0, v2, :cond_8

    .line 298
    .line 299
    if-eqz v5, :cond_8

    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v2, v6, Lm7/g;->a:Lm7/f;

    .line 306
    .line 307
    iget v2, v2, Lm7/f;->n:I

    .line 308
    .line 309
    neg-int v2, v2

    .line 310
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 314
    .line 315
    .line 316
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    .line 317
    .line 318
    invoke-virtual {v7, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 319
    .line 320
    .line 321
    :cond_8
    int-to-float v0, v1

    .line 322
    int-to-float v1, v4

    .line 323
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    .line 325
    .line 326
    if-nez v5, :cond_9

    .line 327
    .line 328
    invoke-virtual/range {p0 .. p1}, Lm7/g;->d(Landroid/graphics/Canvas;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_5

    .line 335
    .line 336
    :cond_9
    iget-object v0, v6, Lm7/g;->w:Landroid/graphics/RectF;

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    int-to-float v2, v2

    .line 351
    sub-float/2addr v1, v2

    .line 352
    float-to-int v1, v1

    .line 353
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    int-to-float v4, v4

    .line 366
    sub-float/2addr v2, v4

    .line 367
    float-to-int v2, v2

    .line 368
    if-ltz v1, :cond_a

    .line 369
    .line 370
    if-ltz v2, :cond_a

    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    float-to-int v4, v4

    .line 377
    iget-object v5, v6, Lm7/g;->a:Lm7/f;

    .line 378
    .line 379
    iget v5, v5, Lm7/f;->n:I

    .line 380
    .line 381
    const/4 v12, 0x2

    .line 382
    invoke-static {v5, v12, v4, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->b(IIII)I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    float-to-int v0, v0

    .line 391
    iget-object v5, v6, Lm7/g;->a:Lm7/f;

    .line 392
    .line 393
    iget v5, v5, Lm7/f;->n:I

    .line 394
    .line 395
    invoke-static {v5, v12, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->b(IIII)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 400
    .line 401
    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    new-instance v4, Landroid/graphics/Canvas;

    .line 406
    .line 407
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 415
    .line 416
    iget-object v12, v6, Lm7/g;->a:Lm7/f;

    .line 417
    .line 418
    iget v12, v12, Lm7/f;->n:I

    .line 419
    .line 420
    sub-int/2addr v5, v12

    .line 421
    sub-int/2addr v5, v1

    .line 422
    int-to-float v1, v5

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 428
    .line 429
    iget-object v12, v6, Lm7/g;->a:Lm7/f;

    .line 430
    .line 431
    iget v12, v12, Lm7/f;->n:I

    .line 432
    .line 433
    sub-int/2addr v5, v12

    .line 434
    sub-int/2addr v5, v2

    .line 435
    int-to-float v2, v5

    .line 436
    neg-float v5, v1

    .line 437
    neg-float v12, v2

    .line 438
    invoke-virtual {v4, v5, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6, v4}, Lm7/g;->d(Landroid/graphics/Canvas;)V

    .line 442
    .line 443
    .line 444
    const/4 v4, 0x0

    .line 445
    invoke-virtual {v7, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 452
    .line 453
    .line 454
    goto :goto_5

    .line 455
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 456
    .line 457
    const-string v1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 458
    .line 459
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v0

    .line 463
    :cond_b
    :goto_5
    iget-object v0, v6, Lm7/g;->a:Lm7/f;

    .line 464
    .line 465
    iget-object v1, v0, Lm7/f;->p:Landroid/graphics/Paint$Style;

    .line 466
    .line 467
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 468
    .line 469
    if-eq v1, v2, :cond_c

    .line 470
    .line 471
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 472
    .line 473
    if-ne v1, v2, :cond_d

    .line 474
    .line 475
    :cond_c
    iget-object v4, v0, Lm7/f;->a:Lm7/j;

    .line 476
    .line 477
    invoke-virtual/range {p0 .. p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    move-object/from16 v0, p0

    .line 482
    .line 483
    move-object/from16 v1, p1

    .line 484
    .line 485
    move-object v2, v8

    .line 486
    invoke-virtual/range {v0 .. v5}, Lm7/g;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lm7/j;Landroid/graphics/RectF;)V

    .line 487
    .line 488
    .line 489
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lm7/g;->h()Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_e

    .line 494
    .line 495
    invoke-virtual/range {p0 .. p1}, Lm7/g;->f(Landroid/graphics/Canvas;)V

    .line 496
    .line 497
    .line 498
    :cond_e
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 502
    .line 503
    .line 504
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lm7/j;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, Lm7/j;->d(Landroid/graphics/RectF;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p3, p4, Lm7/j;->f:Lm7/c;

    .line 8
    .line 9
    invoke-interface {p3, p5}, Lm7/c;->a(Landroid/graphics/RectF;)F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iget-object p4, p0, Lm7/g;->a:Lm7/f;

    .line 14
    .line 15
    iget p4, p4, Lm7/f;->i:F

    .line 16
    .line 17
    mul-float p3, p3, p4

    .line 18
    .line 19
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lm7/g;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v3, p0, Lm7/g;->h:Landroid/graphics/Path;

    .line 4
    .line 5
    iget-object v4, p0, Lm7/g;->m:Lm7/j;

    .line 6
    .line 7
    iget-object v5, p0, Lm7/g;->j:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-virtual {p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lm7/g;->h()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 32
    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, Lm7/g;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lm7/j;Landroid/graphics/RectF;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/g;->i:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget v0, v0, Lm7/f;->k:I

    .line 4
    .line 5
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 7
    .line 8
    iget-object v0, v0, Lm7/f;->a:Lm7/j;

    .line 9
    .line 10
    invoke-virtual {p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lm7/j;->d(Landroid/graphics/RectF;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 21
    .line 22
    iget-object v0, v0, Lm7/f;->a:Lm7/j;

    .line 23
    .line 24
    iget-object v0, v0, Lm7/j;->e:Lm7/c;

    .line 25
    .line 26
    invoke-virtual {p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lm7/c;->a(Landroid/graphics/RectF;)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lm7/g;->a:Lm7/f;

    .line 35
    .line 36
    iget v1, v1, Lm7/f;->i:F

    .line 37
    .line 38
    mul-float v0, v0, v1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p1, v1, v0}, Landroidx/fragment/app/o1;->q(Landroid/graphics/Outline;Landroid/graphics/Rect;F)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lm7/g;->g:Landroid/graphics/Path;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lm7/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 55
    .line 56
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 v2, 0x1e

    .line 60
    .line 61
    if-lt v0, v2, :cond_1

    .line 62
    .line 63
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/video/b0;->s(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 v2, 0x1d

    .line 68
    .line 69
    if-lt v0, v2, :cond_2

    .line 70
    .line 71
    :try_start_0
    invoke-static {p1, v1}, Ld2/a;->o(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/16 v2, 0x15

    .line 76
    .line 77
    if-lt v0, v2, :cond_3

    .line 78
    .line 79
    invoke-static {v1}, Ld2/a;->s(Landroid/graphics/Path;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-static {p1, v1}, Ld2/a;->o(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 86
    .line 87
    .line 88
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget-object v0, v0, Lm7/f;->g:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lm7/g;->k:Landroid/graphics/Region;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lm7/g;->g()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lm7/g;->g:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, Lm7/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lm7/g;->l:Landroid/graphics/Region;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 22
    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget-object v0, v0, Lm7/f;->p:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lm7/g;->p:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    new-instance v1, Lf7/a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lf7/a;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lm7/f;->b:Lf7/a;

    .line 9
    .line 10
    invoke-virtual {p0}, Lm7/g;->n()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm7/g;->e:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 8
    .line 9
    iget-object v0, v0, Lm7/f;->e:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 25
    .line 26
    iget-object v0, v0, Lm7/f;->d:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 37
    .line 38
    iget-object v0, v0, Lm7/f;->c:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0
.end method

.method public final j(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget v1, v0, Lm7/f;->m:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Lm7/f;->m:F

    .line 10
    .line 11
    invoke-virtual {p0}, Lm7/g;->n()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget-object v1, v0, Lm7/f;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lm7/f;->c:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lm7/g;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final l([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget-object v0, v0, Lm7/f;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lm7/g;->n:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lm7/g;->a:Lm7/f;

    .line 15
    .line 16
    iget-object v3, v3, Lm7/f;->c:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lm7/g;->a:Lm7/f;

    .line 31
    .line 32
    iget-object v2, v2, Lm7/f;->d:Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lm7/g;->p:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lm7/g;->a:Lm7/f;

    .line 43
    .line 44
    iget-object v4, v4, Lm7/f;->d:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eq v3, p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v1, v0

    .line 57
    :goto_1
    return v1
.end method

.method public final m()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lm7/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    .line 3
    iget-object v1, p0, Lm7/g;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    iget-object v2, p0, Lm7/g;->a:Lm7/f;

    .line 6
    .line 7
    iget-object v3, v2, Lm7/f;->e:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v2, v2, Lm7/f;->f:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iget-object v4, p0, Lm7/g;->n:Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, v3}, Lm7/g;->c(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 33
    .line 34
    invoke-direct {v4, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Lm7/g;->c(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eq v3, v2, :cond_2

    .line 47
    .line 48
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 49
    .line 50
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 51
    .line 52
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    move-object v4, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    goto :goto_1

    .line 59
    :goto_2
    iput-object v4, p0, Lm7/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 60
    .line 61
    iget-object v2, p0, Lm7/g;->a:Lm7/f;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lm7/g;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 68
    .line 69
    iget-object v2, p0, Lm7/g;->a:Lm7/f;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lm7/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 75
    .line 76
    invoke-static {v0, v2}, Lqf/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object v0, p0, Lm7/g;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 83
    .line 84
    invoke-static {v1, v0}, Lqf/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    const/4 v5, 0x0

    .line 92
    :cond_4
    :goto_3
    return v5
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lm7/f;

    .line 2
    .line 3
    iget-object v1, p0, Lm7/g;->a:Lm7/f;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lm7/f;-><init>(Lm7/f;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 9
    .line 10
    return-object p0
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget v1, v0, Lm7/f;->m:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    const/high16 v2, 0x3f400000    # 0.75f

    .line 8
    .line 9
    mul-float v2, v2, v1

    .line 10
    .line 11
    float-to-double v2, v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    double-to-int v2, v2

    .line 17
    iput v2, v0, Lm7/f;->n:I

    .line 18
    .line 19
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 20
    .line 21
    const/high16 v2, 0x3e800000    # 0.25f

    .line 22
    .line 23
    mul-float v1, v1, v2

    .line 24
    .line 25
    float-to-double v1, v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    double-to-int v1, v1

    .line 31
    iput v1, v0, Lm7/f;->o:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lm7/g;->m()Z

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm7/g;->e:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lm7/g;->l([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lm7/g;->m()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lm7/g;->invalidateSelf()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget v1, v0, Lm7/f;->k:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Lm7/f;->k:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setShapeAppearanceModel(Lm7/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iput-object p1, v0, Lm7/f;->a:Lm7/j;

    .line 4
    .line 5
    invoke-virtual {p0}, Lm7/g;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lm7/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iput-object p1, v0, Lm7/f;->e:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, Lm7/g;->m()Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/g;->a:Lm7/f;

    .line 2
    .line 3
    iget-object v1, v0, Lm7/f;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lm7/f;->f:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lm7/g;->m()Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
