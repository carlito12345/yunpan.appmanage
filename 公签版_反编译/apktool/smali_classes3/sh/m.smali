.class public final Lsh/m;
.super Lvh/b;
.source "SourceFile"

# interfaces
.implements Lwh/j;
.implements Lwh/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Luh/m;

    .line 2
    .line 3
    invoke-direct {v0}, Luh/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwh/a;->D:Lwh/a;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Luh/m;->h(Lwh/m;III)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Luh/m;->k()Luh/a;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lsh/m;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static m(I)Lsh/m;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 2
    .line 3
    int-to-long v1, p0

    .line 4
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lsh/m;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lsh/m;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 2
    .line 3
    const-string v1, "Deserialization via serialization delegate"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lsh/l;

    .line 2
    .line 3
    const/16 v1, 0x43

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lsh/l;-><init>(BLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(JLwh/m;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/m;->p(JLwh/m;)Lsh/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Lwh/m;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iget v2, p0, Lsh/m;->a:I

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance v0, Lwh/q;

    .line 19
    .line 20
    const-string v1, "Unsupported field: "

    .line 21
    .line 22
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :pswitch_0
    if-ge v2, v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :cond_0
    int-to-long v0, v1

    .line 34
    return-wide v0

    .line 35
    :pswitch_1
    int-to-long v0, v2

    .line 36
    return-wide v0

    .line 37
    :pswitch_2
    if-ge v2, v1, :cond_1

    .line 38
    .line 39
    rsub-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    :cond_1
    int-to-long v0, v2

    .line 42
    return-wide v0

    .line 43
    :cond_2
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lth/e;->a:Lth/e;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lwh/b;->f:Lwh/b;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 16
    .line 17
    if-eq p1, v0, :cond_3

    .line 18
    .line 19
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 20
    .line 21
    if-eq p1, v0, :cond_3

    .line 22
    .line 23
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 24
    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 28
    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-super {p0, p1}, Lvh/b;->c(Lwh/o;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lsh/m;

    .line 2
    .line 3
    iget v0, p0, Lsh/m;->a:I

    .line 4
    .line 5
    iget p1, p1, Lsh/m;->a:I

    .line 6
    .line 7
    sub-int/2addr v0, p1

    .line 8
    return v0
.end method

.method public final d(Lwh/m;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lwh/a;->C:Lwh/a;

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lwh/a;->E:Lwh/a;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :cond_1
    :goto_0
    return v1

    .line 22
    :cond_2
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    const/4 v1, 0x0

    .line 32
    :goto_1
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lsh/m;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lsh/m;

    .line 11
    .line 12
    iget p1, p1, Lsh/m;->a:I

    .line 13
    .line 14
    iget v1, p0, Lsh/m;->a:I

    .line 15
    .line 16
    if-ne v1, p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method public final f(Lwh/m;)Lwh/r;
    .locals 4

    .line 1
    sget-object v0, Lwh/a;->C:Lwh/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget p1, p0, Lsh/m;->a:I

    .line 6
    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    const-wide/32 v2, 0x3b9aca00

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lwh/r;->c(JJ)Lwh/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    return-object p1

    .line 24
    :cond_1
    invoke-super {p0, p1}, Lvh/b;->f(Lwh/m;)Lwh/r;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final g(Lwh/j;)Lwh/j;
    .locals 3

    .line 1
    invoke-static {p1}, Lth/d;->a(Lwh/k;)Lth/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lth/e;->a:Lth/e;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lth/d;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 14
    .line 15
    iget v1, p0, Lsh/m;->a:I

    .line 16
    .line 17
    int-to-long v1, v1

    .line 18
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p1, Lsh/a;

    .line 24
    .line 25
    const-string v0, "Adjustment only supported on ISO date-time"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final h(Lsh/e;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lsh/e;->g(Lwh/j;)Lwh/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lsh/m;

    .line 6
    .line 7
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lsh/m;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final i(Lwh/m;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lsh/m;->f(Lwh/m;)Lwh/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lsh/m;->b(Lwh/m;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lwh/r;->a(JLwh/m;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final bridge synthetic j(JLwh/b;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/m;->n(JLwh/b;)Lsh/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final l(JLwh/b;)Lwh/j;
    .locals 3

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const-wide p1, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lsh/m;->n(JLwh/b;)Lsh/m;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p3}, Lsh/m;->n(JLwh/b;)Lsh/m;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lsh/m;->n(JLwh/b;)Lsh/m;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final n(JLwh/b;)Lsh/m;
    .locals 2

    .line 1
    instance-of v0, p3, Lwh/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Lwh/q;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Unsupported unit: "

    .line 17
    .line 18
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :pswitch_0
    sget-object p3, Lwh/a;->E:Lwh/a;

    .line 33
    .line 34
    invoke-virtual {p0, p3}, Lsh/m;->b(Lwh/m;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1, p1, p2}, Lif/a;->u0(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lsh/m;->p(JLwh/m;)Lsh/m;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :pswitch_1
    const/16 p3, 0x3e8

    .line 48
    .line 49
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    invoke-virtual {p0, p1, p2}, Lsh/m;->o(J)Lsh/m;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :pswitch_2
    const/16 p3, 0x64

    .line 59
    .line 60
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    invoke-virtual {p0, p1, p2}, Lsh/m;->o(J)Lsh/m;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_3
    const/16 p3, 0xa

    .line 70
    .line 71
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide p1

    .line 75
    invoke-virtual {p0, p1, p2}, Lsh/m;->o(J)Lsh/m;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lsh/m;->o(J)Lsh/m;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lsh/m;->j(JLwh/b;)Lwh/j;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lsh/m;

    .line 93
    .line 94
    return-object p1

    .line 95
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(J)Lsh/m;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 9
    .line 10
    iget v1, p0, Lsh/m;->a:I

    .line 11
    .line 12
    int-to-long v1, v1

    .line 13
    add-long/2addr v1, p1

    .line 14
    iget-object p1, v0, Lwh/a;->b:Lwh/r;

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2, v0}, Lwh/r;->a(JLwh/m;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Lsh/m;->m(I)Lsh/m;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final p(JLwh/m;)Lsh/m;
    .locals 5

    .line 1
    instance-of v0, p3, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lwh/a;->h(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lsh/m;->a:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance p1, Lwh/q;

    .line 22
    .line 23
    const-string p2, "Unsupported field: "

    .line 24
    .line 25
    invoke-static {p2, p3}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :pswitch_0
    sget-object p3, Lwh/a;->E:Lwh/a;

    .line 34
    .line 35
    invoke-virtual {p0, p3}, Lsh/m;->b(Lwh/m;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    cmp-long p3, v3, p1

    .line 40
    .line 41
    if-nez p3, :cond_0

    .line 42
    .line 43
    move-object p1, p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sub-int/2addr v2, v1

    .line 46
    invoke-static {v2}, Lsh/m;->m(I)Lsh/m;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    return-object p1

    .line 51
    :pswitch_1
    long-to-int p2, p1

    .line 52
    invoke-static {p2}, Lsh/m;->m(I)Lsh/m;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_2
    if-ge v1, v2, :cond_1

    .line 58
    .line 59
    const-wide/16 v0, 0x1

    .line 60
    .line 61
    sub-long p1, v0, p1

    .line 62
    .line 63
    :cond_1
    long-to-int p2, p1

    .line 64
    invoke-static {p2}, Lsh/m;->m(I)Lsh/m;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_2
    invoke-interface {p3, p0, p1, p2}, Lwh/m;->g(Lwh/j;J)Lwh/j;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lsh/m;

    .line 74
    .line 75
    return-object p1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lsh/m;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
