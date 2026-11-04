.class public final Lu4/g;
.super Lu4/x;
.source "SourceFile"


# instance fields
.field public final e:Lx4/c;

.field public f:[B


# direct methods
.method public constructor <init>(Lx4/c;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lu4/x;-><init>(II)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lu4/g;->e:Lx4/c;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lu4/g;->f:[B

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/g;->e:Lx4/c;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkf/d;->k(Lu4/f;Lx4/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->q:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Lu4/x;)I
    .locals 1

    .line 1
    check-cast p1, Lu4/g;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/g;->e:Lx4/c;

    .line 4
    .line 5
    iget-object p1, p1, Lu4/g;->e:Lx4/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lx4/a;->b(Lx4/a;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/g;->e:Lx4/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/c;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final i(Lu4/w;I)V
    .locals 2

    .line 1
    new-instance p2, Lb5/b;

    .line 2
    .line 3
    invoke-direct {p2}, Lb5/b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkf/d;

    .line 7
    .line 8
    iget-object p1, p1, Lu4/a0;->b:Lu4/f;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lkf/d;-><init>(Lu4/f;Lb5/b;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lu4/g;->e:Lx4/c;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Lkf/d;->S(Lx4/c;Z)V

    .line 17
    .line 18
    .line 19
    iget p1, p2, Lb5/b;->c:I

    .line 20
    .line 21
    new-array v0, p1, [B

    .line 22
    .line 23
    iget-object p2, p2, Lb5/b;->b:[B

    .line 24
    .line 25
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lu4/g;->f:[B

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lu4/x;->j(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final k(Lu4/f;Lb5/b;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lu4/x;->g()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " encoded array"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p2, v1, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lkf/d;

    .line 33
    .line 34
    invoke-direct {v0, p1, p2}, Lkf/d;-><init>(Lu4/f;Lb5/b;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lu4/g;->e:Lx4/c;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-virtual {v0, p1, p2}, Lkf/d;->S(Lx4/c;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lu4/g;->f:[B

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lb5/b;->h([B)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
