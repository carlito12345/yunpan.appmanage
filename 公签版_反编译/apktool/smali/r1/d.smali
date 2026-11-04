.class public final Lr1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr1/d;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lr1/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lr1/d;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lr1/d;->d:Lr1/d;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x4

    .line 13
    invoke-static {v1, v2, v0, v3, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->m(IIIII)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x6

    .line 21
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lr1/d;->a:I

    .line 5
    .line 6
    iput p2, p0, Lr1/d;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/media/AudioAttributes;
    .locals 3

    .line 1
    iget-object v0, p0, Lr1/d;->c:Landroid/media/AudioAttributes;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lr1/d;->a:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lr1/d;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1d

    .line 30
    .line 31
    if-lt v1, v2, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Lh4/e0;->A(Landroid/media/AudioAttributes$Builder;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lh4/e0;->n(Landroid/media/AudioAttributes$Builder;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/16 v2, 0x20

    .line 40
    .line 41
    if-lt v1, v2, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Lj2/b;->k(Landroid/media/AudioAttributes$Builder;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lj2/b;->e(Landroid/media/AudioAttributes$Builder;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lr1/d;->c:Landroid/media/AudioAttributes;

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lr1/d;->c:Landroid/media/AudioAttributes;

    .line 56
    .line 57
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lr1/d;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lr1/d;

    .line 18
    .line 19
    iget v2, p0, Lr1/d;->a:I

    .line 20
    .line 21
    iget v3, p1, Lr1/d;->a:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lr1/d;->b:I

    .line 26
    .line 27
    iget p1, p1, Lr1/d;->b:I

    .line 28
    .line 29
    if-ne v2, p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 34
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Lr1/d;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit16 v0, v0, 0x3c1

    .line 7
    .line 8
    iget v1, p0, Lr1/d;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    mul-int/lit16 v0, v0, 0x745f

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    return v0
.end method
