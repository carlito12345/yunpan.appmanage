.class public final Lq4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq4/j;

.field public final b:Lq4/j;

.field public final c:Ljava/lang/String;

.field public final d:Lq4/k;

.field public final e:Lx4/q;


# direct methods
.method public constructor <init>(Lq4/j;Lq4/j;Ljava/lang/String;Lq4/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lq4/i;->a:Lq4/j;

    .line 11
    .line 12
    iput-object p2, p0, Lq4/i;->b:Lq4/j;

    .line 13
    .line 14
    iput-object p3, p0, Lq4/i;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lq4/i;->d:Lq4/k;

    .line 17
    .line 18
    new-instance p2, Lx4/r;

    .line 19
    .line 20
    new-instance p4, Lx4/t;

    .line 21
    .line 22
    invoke-direct {p4, p3}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p3, Lx4/t;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lq4/i;->a(Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p3, v0}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p4, p3}, Lx4/r;-><init>(Lx4/t;Lx4/t;)V

    .line 36
    .line 37
    .line 38
    new-instance p3, Lx4/q;

    .line 39
    .line 40
    iget-object p1, p1, Lq4/j;->c:Lx4/u;

    .line 41
    .line 42
    invoke-direct {p3, p1, p2}, Lx4/q;-><init>(Lx4/u;Lx4/r;)V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Lq4/i;->e:Lx4/q;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    throw p1
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lq4/i;->a:Lq4/j;

    .line 11
    .line 12
    iget-object p1, p1, Lq4/j;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lq4/i;->d:Lq4/k;

    .line 18
    .line 19
    iget-object p1, p1, Lq4/k;->a:[Lq4/j;

    .line 20
    .line 21
    array-length v1, p1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_1

    .line 24
    .line 25
    aget-object v3, p1, v2

    .line 26
    .line 27
    iget-object v3, v3, Lq4/j;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p1, ")"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lq4/i;->b:Lq4/j;

    .line 41
    .line 42
    iget-object p1, p1, Lq4/j;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lq4/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lq4/i;

    .line 6
    .line 7
    iget-object v0, p1, Lq4/i;->a:Lq4/j;

    .line 8
    .line 9
    iget-object v1, p0, Lq4/i;->a:Lq4/j;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lq4/j;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lq4/i;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lq4/i;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p1, Lq4/i;->d:Lq4/k;

    .line 28
    .line 29
    iget-object v1, p0, Lq4/i;->d:Lq4/k;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lq4/k;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Lq4/i;->b:Lq4/j;

    .line 38
    .line 39
    iget-object v0, p0, Lq4/i;->b:Lq4/j;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lq4/j;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lq4/i;->a:Lq4/j;

    .line 2
    .line 3
    iget-object v0, v0, Lq4/j;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v1, 0x20f

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->c(IILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lq4/i;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->c(IILjava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lq4/i;->d:Lq4/k;

    .line 20
    .line 21
    iget-object v1, v1, Lq4/k;->a:[Lq4/j;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x1f

    .line 29
    .line 30
    iget-object v0, p0, Lq4/i;->b:Lq4/j;

    .line 31
    .line 32
    iget-object v0, v0, Lq4/j;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lq4/i;->a:Lq4/j;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lq4/i;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "("

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lq4/i;->d:Lq4/k;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ")"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
