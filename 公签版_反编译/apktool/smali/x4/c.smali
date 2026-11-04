.class public final Lx4/c;
.super Lx4/a;
.source "SourceFile"


# instance fields
.field public final a:Lx4/b;


# direct methods
.method public constructor <init>(Lx4/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lx4/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lb5/f;->a:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lx4/c;->a:Lx4/b;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Lb5/g;

    .line 12
    .line 13
    const-string v0, "mutable instance"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lb5/g;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "{"

    .line 2
    .line 3
    const-string v1, "}"

    .line 4
    .line 5
    iget-object v2, p0, Lx4/c;->a:Lx4/b;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v0, v1, v3}, Lb5/c;->f(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final c(Lx4/a;)I
    .locals 1

    .line 1
    check-cast p1, Lx4/c;

    .line 2
    .line 3
    iget-object p1, p1, Lx4/c;->a:Lx4/b;

    .line 4
    .line 5
    iget-object v0, p0, Lx4/c;->a:Lx4/b;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lx4/b;->g(Lx4/b;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lx4/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lx4/c;

    .line 8
    .line 9
    iget-object p1, p1, Lx4/c;->a:Lx4/b;

    .line 10
    .line 11
    iget-object v0, p0, Lx4/c;->a:Lx4/b;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lb5/c;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/c;->a:Lx4/b;

    .line 2
    .line 3
    iget-object v0, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "array{"

    .line 2
    .line 3
    const-string v1, "}"

    .line 4
    .line 5
    iget-object v2, p0, Lx4/c;->a:Lx4/b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v0, v1, v3}, Lb5/c;->f(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
