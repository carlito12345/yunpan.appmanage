.class public final Ls4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ls4/c;


# direct methods
.method public constructor <init>(IILs4/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_2

    .line 5
    .line 6
    if-le p2, p1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p3, Lb5/f;->a:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Ls4/d;->a:I

    .line 13
    .line 14
    iput p2, p0, Ls4/d;->b:I

    .line 15
    .line 16
    iput-object p3, p0, Ls4/d;->c:Ls4/c;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p2, "handlers.isMutable()"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "end <= start"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "start < 0"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method


# virtual methods
.method public final a(Ls4/d;)I
    .locals 4

    .line 1
    iget v0, p1, Ls4/d;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget v2, p0, Ls4/d;->a:I

    .line 5
    .line 6
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v3, 0x1

    .line 10
    if-le v2, v0, :cond_1

    .line 11
    .line 12
    return v3

    .line 13
    :cond_1
    iget v0, p0, Ls4/d;->b:I

    .line 14
    .line 15
    iget v2, p1, Ls4/d;->b:I

    .line 16
    .line 17
    if-ge v0, v2, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    if-le v0, v2, :cond_3

    .line 21
    .line 22
    return v3

    .line 23
    :cond_3
    iget-object v0, p0, Ls4/d;->c:Ls4/c;

    .line 24
    .line 25
    iget-object p1, p1, Ls4/d;->c:Ls4/c;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ls4/c;->g(Ls4/c;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ls4/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ls4/d;->a(Ls4/d;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ls4/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ls4/d;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ls4/d;->a(Ls4/d;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ls4/d;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Ls4/d;->b:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Ls4/d;->c:Ls4/c;

    .line 11
    .line 12
    iget-object v1, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    return v1
.end method
