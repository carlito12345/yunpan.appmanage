.class public final Lsh/g;
.super Lvh/b;
.source "SourceFile"

# interfaces
.implements Lwh/j;
.implements Lwh/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Lsh/g;

.field public static final f:Lsh/g;

.field public static final g:[Lsh/g;


# instance fields
.field public final a:B

.field public final b:B

.field public final c:B

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v0, v0, [Lsh/g;

    .line 4
    .line 5
    sput-object v0, Lsh/g;->g:[Lsh/g;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    sget-object v2, Lsh/g;->g:[Lsh/g;

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v1, v3, :cond_0

    .line 13
    .line 14
    new-instance v3, Lsh/g;

    .line 15
    .line 16
    invoke-direct {v3, v1, v0, v0, v0}, Lsh/g;-><init>(IIII)V

    .line 17
    .line 18
    .line 19
    aput-object v3, v2, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    aget-object v0, v2, v0

    .line 25
    .line 26
    const/16 v1, 0xc

    .line 27
    .line 28
    aget-object v1, v2, v1

    .line 29
    .line 30
    sput-object v0, Lsh/g;->e:Lsh/g;

    .line 31
    .line 32
    new-instance v0, Lsh/g;

    .line 33
    .line 34
    const/16 v1, 0x17

    .line 35
    .line 36
    const v2, 0x3b9ac9ff

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x3b

    .line 40
    .line 41
    invoke-direct {v0, v1, v3, v3, v2}, Lsh/g;-><init>(IIII)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lsh/g;->f:Lsh/g;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    int-to-byte p1, p1

    .line 5
    iput-byte p1, p0, Lsh/g;->a:B

    .line 6
    .line 7
    int-to-byte p1, p2

    .line 8
    iput-byte p1, p0, Lsh/g;->b:B

    .line 9
    .line 10
    int-to-byte p1, p3

    .line 11
    iput-byte p1, p0, Lsh/g;->c:B

    .line 12
    .line 13
    iput p4, p0, Lsh/g;->d:I

    .line 14
    .line 15
    return-void
.end method

.method public static n(IIII)Lsh/g;
    .locals 1

    .line 1
    or-int v0, p1, p2

    .line 2
    .line 3
    or-int/2addr v0, p3

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lsh/g;->g:[Lsh/g;

    .line 7
    .line 8
    aget-object p0, p1, p0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lsh/g;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lsh/g;-><init>(IIII)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static p(J)Lsh/g;
    .locals 8

    .line 1
    sget-object v0, Lwh/a;->d:Lwh/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lwh/a;->h(J)V

    .line 4
    .line 5
    .line 6
    const-wide v0, 0x34630b8a000L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    div-long v2, p0, v0

    .line 12
    .line 13
    long-to-int v3, v2

    .line 14
    int-to-long v4, v3

    .line 15
    mul-long v4, v4, v0

    .line 16
    .line 17
    sub-long/2addr p0, v4

    .line 18
    const-wide v0, 0xdf8475800L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-long v4, p0, v0

    .line 24
    .line 25
    long-to-int v2, v4

    .line 26
    int-to-long v4, v2

    .line 27
    mul-long v4, v4, v0

    .line 28
    .line 29
    sub-long/2addr p0, v4

    .line 30
    const-wide/32 v0, 0x3b9aca00

    .line 31
    .line 32
    .line 33
    div-long v4, p0, v0

    .line 34
    .line 35
    long-to-int v5, v4

    .line 36
    int-to-long v6, v5

    .line 37
    mul-long v6, v6, v0

    .line 38
    .line 39
    sub-long/2addr p0, v6

    .line 40
    long-to-int p1, p0

    .line 41
    invoke-static {v3, v2, v5, p1}, Lsh/g;->n(IIII)Lsh/g;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
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

.method public static v(Ljava/io/ObjectInput;)Lsh/g;
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-gez v2, :cond_1

    .line 18
    .line 19
    xor-int/lit8 p0, v2, -0x1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move v1, p0

    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-gez v3, :cond_2

    .line 30
    .line 31
    xor-int/lit8 p0, v3, -0x1

    .line 32
    .line 33
    move v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    move p0, v3

    .line 40
    move v6, v2

    .line 41
    move v2, v1

    .line 42
    move v1, v6

    .line 43
    :goto_1
    sget-object v3, Lwh/a;->n:Lwh/a;

    .line 44
    .line 45
    int-to-long v4, v0

    .line 46
    invoke-virtual {v3, v4, v5}, Lwh/a;->h(J)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Lwh/a;->k:Lwh/a;

    .line 50
    .line 51
    int-to-long v4, v1

    .line 52
    invoke-virtual {v3, v4, v5}, Lwh/a;->h(J)V

    .line 53
    .line 54
    .line 55
    sget-object v3, Lwh/a;->i:Lwh/a;

    .line 56
    .line 57
    int-to-long v4, p0

    .line 58
    invoke-virtual {v3, v4, v5}, Lwh/a;->h(J)V

    .line 59
    .line 60
    .line 61
    sget-object v3, Lwh/a;->c:Lwh/a;

    .line 62
    .line 63
    int-to-long v4, v2

    .line 64
    invoke-virtual {v3, v4, v5}, Lwh/a;->h(J)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1, p0, v2}, Lsh/g;->n(IIII)Lsh/g;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lsh/l;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p0}, Lsh/l;-><init>(BLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/io/DataOutput;)V
    .locals 4

    .line 1
    iget-byte v0, p0, Lsh/g;->c:B

    .line 2
    .line 3
    iget-byte v1, p0, Lsh/g;->a:B

    .line 4
    .line 5
    iget-byte v2, p0, Lsh/g;->b:B

    .line 6
    .line 7
    iget v3, p0, Lsh/g;->d:I

    .line 8
    .line 9
    if-nez v3, :cond_2

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    xor-int/lit8 v0, v1, -0x1

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 22
    .line 23
    .line 24
    xor-int/lit8 v0, v2, -0x1

    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 34
    .line 35
    .line 36
    xor-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final bridge synthetic a(JLwh/m;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/g;->y(JLwh/m;)Lsh/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Lwh/m;)J
    .locals 4

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lwh/a;->d:Lwh/a;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lsh/g;->w()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    sget-object v0, Lwh/a;->f:Lwh/a;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lsh/g;->w()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    div-long/2addr v0, v2

    .line 25
    return-wide v0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lsh/g;->o(Lwh/m;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-long v0, p1

    .line 31
    return-wide v0

    .line 32
    :cond_2
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    return-wide v0
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lwh/b;->b:Lwh/b;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 14
    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 18
    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 22
    .line 23
    if-eq p1, v0, :cond_3

    .line 24
    .line 25
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 26
    .line 27
    if-eq p1, v0, :cond_3

    .line 28
    .line 29
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p1, p0}, Lwh/o;->b(Lwh/k;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lsh/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lsh/g;->m(Lsh/g;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d(Lwh/m;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lwh/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lwh/a;->i()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
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
    instance-of v1, p1, Lsh/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lsh/g;

    .line 11
    .line 12
    iget-byte v1, p1, Lsh/g;->a:B

    .line 13
    .line 14
    iget-byte v3, p0, Lsh/g;->a:B

    .line 15
    .line 16
    if-ne v3, v1, :cond_1

    .line 17
    .line 18
    iget-byte v1, p0, Lsh/g;->b:B

    .line 19
    .line 20
    iget-byte v3, p1, Lsh/g;->b:B

    .line 21
    .line 22
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    iget-byte v1, p0, Lsh/g;->c:B

    .line 25
    .line 26
    iget-byte v3, p1, Lsh/g;->c:B

    .line 27
    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    iget v1, p0, Lsh/g;->d:I

    .line 31
    .line 32
    iget p1, p1, Lsh/g;->d:I

    .line 33
    .line 34
    if-ne v1, p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 39
    :cond_2
    return v2
.end method

.method public final g(Lwh/j;)Lwh/j;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->d:Lwh/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lsh/g;->w()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
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
    check-cast p1, Lsh/g;

    .line 6
    .line 7
    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsh/g;->w()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    ushr-long v2, v0, v2

    .line 8
    .line 9
    xor-long/2addr v0, v2

    .line 10
    long-to-int v1, v0

    .line 11
    return v1
.end method

.method public final i(Lwh/m;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lsh/g;->o(Lwh/m;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lvh/b;->i(Lwh/m;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final bridge synthetic j(JLwh/b;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/g;->q(JLwh/b;)Lsh/g;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/g;->q(JLwh/b;)Lsh/g;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p3}, Lsh/g;->q(JLwh/b;)Lsh/g;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/g;->q(JLwh/b;)Lsh/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final m(Lsh/g;)I
    .locals 5

    .line 1
    iget-byte v0, p1, Lsh/g;->a:B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    iget-byte v4, p0, Lsh/g;->a:B

    .line 7
    .line 8
    if-ge v4, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-le v4, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_8

    .line 18
    .line 19
    iget-byte v0, p0, Lsh/g;->b:B

    .line 20
    .line 21
    iget-byte v4, p1, Lsh/g;->b:B

    .line 22
    .line 23
    if-ge v0, v4, :cond_2

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    if-le v0, v4, :cond_3

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    const/4 v0, 0x0

    .line 32
    :goto_1
    if-nez v0, :cond_8

    .line 33
    .line 34
    iget-byte v0, p0, Lsh/g;->c:B

    .line 35
    .line 36
    iget-byte v4, p1, Lsh/g;->c:B

    .line 37
    .line 38
    if-ge v0, v4, :cond_4

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_4
    if-le v0, v4, :cond_5

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_5
    const/4 v0, 0x0

    .line 47
    :goto_2
    if-nez v0, :cond_8

    .line 48
    .line 49
    iget v0, p0, Lsh/g;->d:I

    .line 50
    .line 51
    iget p1, p1, Lsh/g;->d:I

    .line 52
    .line 53
    if-ge v0, p1, :cond_6

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    goto :goto_3

    .line 57
    :cond_6
    if-le v0, p1, :cond_7

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_7
    :goto_3
    move v0, v1

    .line 61
    :cond_8
    return v0
.end method

.method public final o(Lwh/m;)I
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lwh/a;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Field too large for an int: "

    .line 9
    .line 10
    iget-byte v2, p0, Lsh/g;->b:B

    .line 11
    .line 12
    iget v3, p0, Lsh/g;->d:I

    .line 13
    .line 14
    const/16 v4, 0xc

    .line 15
    .line 16
    iget-byte v5, p0, Lsh/g;->a:B

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance v0, Lwh/q;

    .line 22
    .line 23
    const-string v1, "Unsupported field: "

    .line 24
    .line 25
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :pswitch_0
    div-int/2addr v5, v4

    .line 34
    return v5

    .line 35
    :pswitch_1
    if-nez v5, :cond_0

    .line 36
    .line 37
    const/16 v5, 0x18

    .line 38
    .line 39
    :cond_0
    :pswitch_2
    return v5

    .line 40
    :pswitch_3
    rem-int/2addr v5, v4

    .line 41
    rem-int/lit8 p1, v5, 0xc

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v4, v5

    .line 47
    :goto_0
    return v4

    .line 48
    :pswitch_4
    rem-int/2addr v5, v4

    .line 49
    return v5

    .line 50
    :pswitch_5
    mul-int/lit8 v5, v5, 0x3c

    .line 51
    .line 52
    add-int/2addr v5, v2

    .line 53
    return v5

    .line 54
    :pswitch_6
    return v2

    .line 55
    :pswitch_7
    invoke-virtual {p0}, Lsh/g;->x()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :pswitch_8
    iget-byte p1, p0, Lsh/g;->c:B

    .line 61
    .line 62
    return p1

    .line 63
    :pswitch_9
    invoke-virtual {p0}, Lsh/g;->w()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    const-wide/32 v2, 0xf4240

    .line 68
    .line 69
    .line 70
    div-long/2addr v0, v2

    .line 71
    long-to-int p1, v0

    .line 72
    return p1

    .line 73
    :pswitch_a
    const p1, 0xf4240

    .line 74
    .line 75
    .line 76
    div-int/2addr v3, p1

    .line 77
    return v3

    .line 78
    :pswitch_b
    new-instance v0, Lsh/a;

    .line 79
    .line 80
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :pswitch_c
    div-int/lit16 v3, v3, 0x3e8

    .line 89
    .line 90
    return v3

    .line 91
    :pswitch_d
    new-instance v0, Lsh/a;

    .line 92
    .line 93
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :pswitch_e
    return v3

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(JLwh/b;)Lsh/g;
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
    const-wide/16 v0, 0x2

    .line 33
    .line 34
    rem-long/2addr p1, v0

    .line 35
    const-wide/16 v0, 0xc

    .line 36
    .line 37
    mul-long p1, p1, v0

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lsh/g;->r(J)Lsh/g;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lsh/g;->r(J)Lsh/g;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lsh/g;->s(J)Lsh/g;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lsh/g;->u(J)Lsh/g;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 60
    .line 61
    .line 62
    rem-long/2addr p1, v0

    .line 63
    const-wide/32 v0, 0xf4240

    .line 64
    .line 65
    .line 66
    mul-long p1, p1, v0

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lsh/g;->t(J)Lsh/g;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    rem-long/2addr p1, v0

    .line 79
    const-wide/16 v0, 0x3e8

    .line 80
    .line 81
    mul-long p1, p1, v0

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Lsh/g;->t(J)Lsh/g;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lsh/g;->t(J)Lsh/g;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lsh/g;->j(JLwh/b;)Lwh/j;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lsh/g;

    .line 101
    .line 102
    return-object p1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(J)Lsh/g;
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
    const-wide/16 v0, 0x18

    .line 9
    .line 10
    rem-long/2addr p1, v0

    .line 11
    long-to-int p2, p1

    .line 12
    iget-byte p1, p0, Lsh/g;->a:B

    .line 13
    .line 14
    add-int/2addr p2, p1

    .line 15
    add-int/lit8 p2, p2, 0x18

    .line 16
    .line 17
    rem-int/lit8 p2, p2, 0x18

    .line 18
    .line 19
    iget-byte p1, p0, Lsh/g;->c:B

    .line 20
    .line 21
    iget v0, p0, Lsh/g;->d:I

    .line 22
    .line 23
    iget-byte v1, p0, Lsh/g;->b:B

    .line 24
    .line 25
    invoke-static {p2, v1, p1, v0}, Lsh/g;->n(IIII)Lsh/g;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public final s(J)Lsh/g;
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
    iget-byte v0, p0, Lsh/g;->a:B

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x3c

    .line 11
    .line 12
    iget-byte v1, p0, Lsh/g;->b:B

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    const-wide/16 v1, 0x5a0

    .line 16
    .line 17
    rem-long/2addr p1, v1

    .line 18
    long-to-int p2, p1

    .line 19
    add-int/2addr p2, v0

    .line 20
    add-int/lit16 p2, p2, 0x5a0

    .line 21
    .line 22
    rem-int/lit16 p2, p2, 0x5a0

    .line 23
    .line 24
    if-ne v0, p2, :cond_1

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    div-int/lit8 p1, p2, 0x3c

    .line 28
    .line 29
    rem-int/lit8 p2, p2, 0x3c

    .line 30
    .line 31
    iget-byte v0, p0, Lsh/g;->c:B

    .line 32
    .line 33
    iget v1, p0, Lsh/g;->d:I

    .line 34
    .line 35
    invoke-static {p1, p2, v0, v1}, Lsh/g;->n(IIII)Lsh/g;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final t(J)Lsh/g;
    .locals 8

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
    invoke-virtual {p0}, Lsh/g;->w()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide v2, 0x4e94914f0000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    rem-long/2addr p1, v2

    .line 18
    add-long/2addr p1, v0

    .line 19
    add-long/2addr p1, v2

    .line 20
    rem-long/2addr p1, v2

    .line 21
    cmp-long v2, v0, p1

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const-wide v0, 0x34630b8a000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    div-long v0, p1, v0

    .line 32
    .line 33
    long-to-int v1, v0

    .line 34
    const-wide v2, 0xdf8475800L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    div-long v2, p1, v2

    .line 40
    .line 41
    const-wide/16 v4, 0x3c

    .line 42
    .line 43
    rem-long/2addr v2, v4

    .line 44
    long-to-int v0, v2

    .line 45
    const-wide/32 v2, 0x3b9aca00

    .line 46
    .line 47
    .line 48
    div-long v6, p1, v2

    .line 49
    .line 50
    rem-long/2addr v6, v4

    .line 51
    long-to-int v4, v6

    .line 52
    rem-long/2addr p1, v2

    .line 53
    long-to-int p2, p1

    .line 54
    invoke-static {v1, v0, v4, p2}, Lsh/g;->n(IIII)Lsh/g;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lsh/g;->a:B

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    const-string v3, "0"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v3, ""

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ":"

    .line 26
    .line 27
    const-string v3, ":0"

    .line 28
    .line 29
    iget-byte v4, p0, Lsh/g;->b:B

    .line 30
    .line 31
    if-ge v4, v2, :cond_1

    .line 32
    .line 33
    move-object v5, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v5, v1

    .line 36
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-byte v4, p0, Lsh/g;->c:B

    .line 43
    .line 44
    iget v5, p0, Lsh/g;->d:I

    .line 45
    .line 46
    if-gtz v4, :cond_2

    .line 47
    .line 48
    if-lez v5, :cond_6

    .line 49
    .line 50
    :cond_2
    if-ge v4, v2, :cond_3

    .line 51
    .line 52
    move-object v1, v3

    .line 53
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    if-lez v5, :cond_6

    .line 60
    .line 61
    const/16 v1, 0x2e

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const v1, 0xf4240

    .line 67
    .line 68
    .line 69
    rem-int v2, v5, v1

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    div-int/2addr v5, v1

    .line 75
    add-int/lit16 v5, v5, 0x3e8

    .line 76
    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    rem-int/lit16 v2, v5, 0x3e8

    .line 90
    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    div-int/lit16 v5, v5, 0x3e8

    .line 94
    .line 95
    add-int/2addr v5, v1

    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    const v1, 0x3b9aca00

    .line 109
    .line 110
    .line 111
    add-int/2addr v5, v1

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method

.method public final u(J)Lsh/g;
    .locals 4

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
    iget-byte v0, p0, Lsh/g;->a:B

    .line 9
    .line 10
    mul-int/lit16 v0, v0, 0xe10

    .line 11
    .line 12
    iget-byte v1, p0, Lsh/g;->b:B

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x3c

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    iget-byte v0, p0, Lsh/g;->c:B

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    const-wide/32 v2, 0x15180

    .line 21
    .line 22
    .line 23
    rem-long/2addr p1, v2

    .line 24
    long-to-int p2, p1

    .line 25
    add-int/2addr p2, v1

    .line 26
    const p1, 0x15180

    .line 27
    .line 28
    .line 29
    add-int/2addr p2, p1

    .line 30
    rem-int/2addr p2, p1

    .line 31
    if-ne v1, p2, :cond_1

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    div-int/lit16 p1, p2, 0xe10

    .line 35
    .line 36
    div-int/lit8 v0, p2, 0x3c

    .line 37
    .line 38
    rem-int/lit8 v0, v0, 0x3c

    .line 39
    .line 40
    rem-int/lit8 p2, p2, 0x3c

    .line 41
    .line 42
    iget v1, p0, Lsh/g;->d:I

    .line 43
    .line 44
    invoke-static {p1, v0, p2, v1}, Lsh/g;->n(IIII)Lsh/g;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public final w()J
    .locals 6

    .line 1
    iget-byte v0, p0, Lsh/g;->a:B

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide v2, 0x34630b8a000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    mul-long v0, v0, v2

    .line 10
    .line 11
    iget-byte v2, p0, Lsh/g;->b:B

    .line 12
    .line 13
    int-to-long v2, v2

    .line 14
    const-wide v4, 0xdf8475800L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    mul-long v2, v2, v4

    .line 20
    .line 21
    add-long/2addr v2, v0

    .line 22
    iget-byte v0, p0, Lsh/g;->c:B

    .line 23
    .line 24
    int-to-long v0, v0

    .line 25
    const-wide/32 v4, 0x3b9aca00

    .line 26
    .line 27
    .line 28
    mul-long v0, v0, v4

    .line 29
    .line 30
    add-long/2addr v0, v2

    .line 31
    iget v2, p0, Lsh/g;->d:I

    .line 32
    .line 33
    int-to-long v2, v2

    .line 34
    add-long/2addr v0, v2

    .line 35
    return-wide v0
.end method

.method public final x()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lsh/g;->a:B

    .line 2
    .line 3
    mul-int/lit16 v0, v0, 0xe10

    .line 4
    .line 5
    iget-byte v1, p0, Lsh/g;->b:B

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0x3c

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    iget-byte v0, p0, Lsh/g;->c:B

    .line 11
    .line 12
    add-int/2addr v1, v0

    .line 13
    return v1
.end method

.method public final y(JLwh/m;)Lsh/g;
    .locals 9

    .line 1
    instance-of v0, p3, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_6

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
    iget-byte v1, p0, Lsh/g;->b:B

    .line 16
    .line 17
    iget-byte v2, p0, Lsh/g;->c:B

    .line 18
    .line 19
    iget v3, p0, Lsh/g;->d:I

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    const-wide/16 v6, 0xc

    .line 24
    .line 25
    iget-byte v8, p0, Lsh/g;->a:B

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    new-instance p1, Lwh/q;

    .line 31
    .line 32
    const-string p2, "Unsupported field: "

    .line 33
    .line 34
    invoke-static {p2, p3}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :pswitch_0
    div-int/lit8 v8, v8, 0xc

    .line 43
    .line 44
    int-to-long v0, v8

    .line 45
    sub-long/2addr p1, v0

    .line 46
    mul-long p1, p1, v6

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lsh/g;->r(J)Lsh/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :pswitch_1
    const-wide/16 v6, 0x18

    .line 54
    .line 55
    cmp-long p3, p1, v6

    .line 56
    .line 57
    if-nez p3, :cond_0

    .line 58
    .line 59
    move-wide p1, v4

    .line 60
    :cond_0
    long-to-int p2, p1

    .line 61
    if-ne v8, p2, :cond_1

    .line 62
    .line 63
    move-object p1, p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object p1, Lwh/a;->n:Lwh/a;

    .line 66
    .line 67
    int-to-long v4, p2

    .line 68
    invoke-virtual {p1, v4, v5}, Lwh/a;->h(J)V

    .line 69
    .line 70
    .line 71
    invoke-static {p2, v1, v2, v3}, Lsh/g;->n(IIII)Lsh/g;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_0
    return-object p1

    .line 76
    :pswitch_2
    long-to-int p2, p1

    .line 77
    if-ne v8, p2, :cond_2

    .line 78
    .line 79
    move-object p1, p0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    sget-object p1, Lwh/a;->n:Lwh/a;

    .line 82
    .line 83
    int-to-long v4, p2

    .line 84
    invoke-virtual {p1, v4, v5}, Lwh/a;->h(J)V

    .line 85
    .line 86
    .line 87
    invoke-static {p2, v1, v2, v3}, Lsh/g;->n(IIII)Lsh/g;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_1
    return-object p1

    .line 92
    :pswitch_3
    cmp-long p3, p1, v6

    .line 93
    .line 94
    if-nez p3, :cond_3

    .line 95
    .line 96
    move-wide p1, v4

    .line 97
    :cond_3
    rem-int/lit8 v8, v8, 0xc

    .line 98
    .line 99
    int-to-long v0, v8

    .line 100
    sub-long/2addr p1, v0

    .line 101
    invoke-virtual {p0, p1, p2}, Lsh/g;->r(J)Lsh/g;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :pswitch_4
    rem-int/lit8 v8, v8, 0xc

    .line 107
    .line 108
    int-to-long v0, v8

    .line 109
    sub-long/2addr p1, v0

    .line 110
    invoke-virtual {p0, p1, p2}, Lsh/g;->r(J)Lsh/g;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :pswitch_5
    mul-int/lit8 v8, v8, 0x3c

    .line 116
    .line 117
    add-int/2addr v8, v1

    .line 118
    int-to-long v0, v8

    .line 119
    sub-long/2addr p1, v0

    .line 120
    invoke-virtual {p0, p1, p2}, Lsh/g;->s(J)Lsh/g;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    return-object p1

    .line 125
    :pswitch_6
    long-to-int p2, p1

    .line 126
    if-ne v1, p2, :cond_4

    .line 127
    .line 128
    move-object p1, p0

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    sget-object p1, Lwh/a;->k:Lwh/a;

    .line 131
    .line 132
    int-to-long v0, p2

    .line 133
    invoke-virtual {p1, v0, v1}, Lwh/a;->h(J)V

    .line 134
    .line 135
    .line 136
    invoke-static {v8, p2, v2, v3}, Lsh/g;->n(IIII)Lsh/g;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :goto_2
    return-object p1

    .line 141
    :pswitch_7
    invoke-virtual {p0}, Lsh/g;->x()I

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    int-to-long v0, p3

    .line 146
    sub-long/2addr p1, v0

    .line 147
    invoke-virtual {p0, p1, p2}, Lsh/g;->u(J)Lsh/g;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :pswitch_8
    long-to-int p2, p1

    .line 153
    if-ne v2, p2, :cond_5

    .line 154
    .line 155
    move-object p1, p0

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    sget-object p1, Lwh/a;->i:Lwh/a;

    .line 158
    .line 159
    int-to-long v4, p2

    .line 160
    invoke-virtual {p1, v4, v5}, Lwh/a;->h(J)V

    .line 161
    .line 162
    .line 163
    invoke-static {v8, v1, p2, v3}, Lsh/g;->n(IIII)Lsh/g;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :goto_3
    return-object p1

    .line 168
    :pswitch_9
    const-wide/32 v0, 0xf4240

    .line 169
    .line 170
    .line 171
    mul-long p1, p1, v0

    .line 172
    .line 173
    invoke-static {p1, p2}, Lsh/g;->p(J)Lsh/g;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    return-object p1

    .line 178
    :pswitch_a
    long-to-int p2, p1

    .line 179
    const p1, 0xf4240

    .line 180
    .line 181
    .line 182
    mul-int p2, p2, p1

    .line 183
    .line 184
    invoke-virtual {p0, p2}, Lsh/g;->z(I)Lsh/g;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1

    .line 189
    :pswitch_b
    const-wide/16 v0, 0x3e8

    .line 190
    .line 191
    mul-long p1, p1, v0

    .line 192
    .line 193
    invoke-static {p1, p2}, Lsh/g;->p(J)Lsh/g;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :pswitch_c
    long-to-int p2, p1

    .line 199
    mul-int/lit16 p2, p2, 0x3e8

    .line 200
    .line 201
    invoke-virtual {p0, p2}, Lsh/g;->z(I)Lsh/g;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1

    .line 206
    :pswitch_d
    invoke-static {p1, p2}, Lsh/g;->p(J)Lsh/g;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    return-object p1

    .line 211
    :pswitch_e
    long-to-int p2, p1

    .line 212
    invoke-virtual {p0, p2}, Lsh/g;->z(I)Lsh/g;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    return-object p1

    .line 217
    :cond_6
    invoke-interface {p3, p0, p1, p2}, Lwh/m;->g(Lwh/j;J)Lwh/j;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Lsh/g;

    .line 222
    .line 223
    return-object p1

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z(I)Lsh/g;
    .locals 3

    .line 1
    iget v0, p0, Lsh/g;->d:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lwh/a;->c:Lwh/a;

    .line 7
    .line 8
    int-to-long v1, p1

    .line 9
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 10
    .line 11
    .line 12
    iget-byte v0, p0, Lsh/g;->c:B

    .line 13
    .line 14
    iget-byte v1, p0, Lsh/g;->a:B

    .line 15
    .line 16
    iget-byte v2, p0, Lsh/g;->b:B

    .line 17
    .line 18
    invoke-static {v1, v2, v0, p1}, Lsh/g;->n(IIII)Lsh/g;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
