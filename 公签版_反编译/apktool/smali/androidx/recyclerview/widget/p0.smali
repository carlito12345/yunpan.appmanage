.class public abstract Landroidx/recyclerview/widget/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/recyclerview/widget/o0;

.field public static final c:Landroidx/recyclerview/widget/o0;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/o0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/o0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/recyclerview/widget/p0;->b:Landroidx/recyclerview/widget/o0;

    .line 8
    .line 9
    new-instance v0, Landroidx/recyclerview/widget/o0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/o0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/recyclerview/widget/p0;->c:Landroidx/recyclerview/widget/o0;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/p0;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public static a(II)I
    .locals 3

    .line 1
    const v0, 0x303030

    .line 2
    .line 3
    .line 4
    and-int v1, p0, v0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    xor-int/lit8 v2, v1, -0x1

    .line 10
    .line 11
    and-int/2addr p0, v2

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    shr-int/lit8 p1, v1, 0x2

    .line 15
    .line 16
    :goto_0
    or-int/2addr p0, p1

    .line 17
    return p0

    .line 18
    :cond_1
    shr-int/lit8 p1, v1, 0x1

    .line 19
    .line 20
    const v1, -0x303031

    .line 21
    .line 22
    .line 23
    and-int/2addr v1, p1

    .line 24
    or-int/2addr p0, v1

    .line 25
    and-int/2addr p1, v0

    .line 26
    shr-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    goto :goto_0
.end method

.method public static b(II)I
    .locals 3

    .line 1
    const v0, 0xc0c0c

    and-int v1, p0, v0

    if-nez v1, :cond_0

    return p0

    :cond_0
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p0, v2

    if-nez p1, :cond_1

    shl-int/lit8 p1, v1, 0x2

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_1
    shl-int/lit8 p1, v1, 0x1

    const v1, -0xc0c0d

    and-int/2addr v1, p1

    or-int/2addr p0, v1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public final c(Landroidx/recyclerview/widget/RecyclerView;IIJ)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p0;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x7f070266

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/p0;->a:I

    .line 18
    .line 19
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/p0;->a:I

    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v2, p3

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    float-to-int v2, v2

    .line 31
    int-to-float v0, v0

    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    mul-float v0, v0, v3

    .line 35
    .line 36
    int-to-float p2, p2

    .line 37
    div-float/2addr v0, p2

    .line 38
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    mul-int v2, v2, p1

    .line 43
    .line 44
    int-to-float p1, v2

    .line 45
    sget-object v0, Landroidx/recyclerview/widget/p0;->c:Landroidx/recyclerview/widget/o0;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/o0;->getInterpolation(F)F

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    mul-float p2, p2, p1

    .line 52
    .line 53
    float-to-int p1, p2

    .line 54
    const-wide/16 v4, 0x7d0

    .line 55
    .line 56
    cmp-long p2, p4, v4

    .line 57
    .line 58
    if-lez p2, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    long-to-float p2, p4

    .line 62
    const/high16 p4, 0x44fa0000    # 2000.0f

    .line 63
    .line 64
    div-float v3, p2, p4

    .line 65
    .line 66
    :goto_0
    int-to-float p1, p1

    .line 67
    sget-object p2, Landroidx/recyclerview/widget/p0;->b:Landroidx/recyclerview/widget/o0;

    .line 68
    .line 69
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/o0;->getInterpolation(F)F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    mul-float p2, p2, p1

    .line 74
    .line 75
    float-to-int p1, p2

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    if-lez p3, :cond_2

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    :cond_2
    return v1

    .line 82
    :cond_3
    return p1
.end method
