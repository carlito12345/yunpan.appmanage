.class public final Lr1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lu7/g0;

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x4

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->m(IIIII)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lif/a;Ljava/util/List;Lu7/g0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr1/v;->a:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-static {p2}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lr1/v;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lr1/v;->c:Ljava/util/List;

    .line 13
    .line 14
    iput-object p5, p0, Lr1/v;->d:Lu7/g0;

    .line 15
    .line 16
    invoke-static {}, Lu7/g0;->j()Lu7/d0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p5}, Ljava/util/AbstractCollection;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-gtz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lu7/d0;->g()Lu7/y0;

    .line 27
    .line 28
    .line 29
    iput-wide p6, p0, Lr1/v;->e:J

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lr1/x;

    .line 38
    .line 39
    invoke-virtual {p1}, Lr1/x;->a()Lnh/b;

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lr1/v;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lr1/v;

    .line 12
    .line 13
    iget-object v1, p1, Lr1/v;->a:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v3, p0, Lr1/v;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lr1/v;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lr1/v;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lr1/v;->c:Ljava/util/List;

    .line 42
    .line 43
    iget-object v3, p1, Lr1/v;->c:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lr1/v;->d:Lu7/g0;

    .line 52
    .line 53
    iget-object v3, p1, Lr1/v;->d:Lu7/g0;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lu7/g0;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-wide v3, p0, Lr1/v;->e:J

    .line 62
    .line 63
    iget-wide v5, p1, Lr1/v;->e:J

    .line 64
    .line 65
    cmp-long p1, v3, v5

    .line 66
    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lr1/v;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lr1/v;->b:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit16 v0, v0, 0x745f

    .line 21
    .line 22
    iget-object v1, p0, Lr1/v;->c:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    mul-int/lit16 v1, v1, 0x3c1

    .line 30
    .line 31
    iget-object v0, p0, Lr1/v;->d:Lu7/g0;

    .line 32
    .line 33
    invoke-virtual {v0}, Lu7/g0;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    const-wide/16 v1, 0x1f

    .line 41
    .line 42
    int-to-long v3, v0

    .line 43
    mul-long v3, v3, v1

    .line 44
    .line 45
    iget-wide v0, p0, Lr1/v;->e:J

    .line 46
    .line 47
    add-long/2addr v3, v0

    .line 48
    long-to-int v0, v3

    .line 49
    return v0
.end method
