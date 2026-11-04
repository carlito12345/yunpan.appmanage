.class public final Lu4/h;
.super Lu4/i;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Lx4/h;


# direct methods
.method public constructor <init>(Lx4/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lu4/i;-><init>(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lu4/h;->b:Lx4/h;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p2, "field == null"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/h;->b:Lx4/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/p;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b(Lu4/f;Lb5/b;II)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object p1, p1, Lu4/f;->h:Lu4/l;

    .line 4
    .line 5
    iget-object v2, p0, Lu4/h;->b:Lx4/h;

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Lu4/l;->l(Lx4/h;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sub-int p3, p1, p3

    .line 12
    .line 13
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, p0, Lu4/i;->a:I

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-virtual {v2}, Lx4/p;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-array v3, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object p4, v3, v0

    .line 32
    .line 33
    const/4 p4, 0x1

    .line 34
    aput-object v2, v3, p4

    .line 35
    .line 36
    const-string p4, "  [%x] %s"

    .line 37
    .line 38
    invoke-static {p4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-virtual {p2, v0, p4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Lcom/bumptech/glide/c;->l0(I)I

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    invoke-static {p1}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "    field_idx:    "

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, p4, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lcom/bumptech/glide/c;->l0(I)I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "    access_flags: "

    .line 69
    .line 70
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/16 v2, 0x50df

    .line 74
    .line 75
    invoke-static {v4, v2, v1}, Landroid/support/v4/media/session/b;->r(III)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p2, p4, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {p2, p3}, Lb5/b;->m(I)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v4}, Lb5/b;->m(I)I

    .line 93
    .line 94
    .line 95
    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lu4/h;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/h;->b:Lx4/h;

    .line 4
    .line 5
    iget-object p1, p1, Lu4/h;->b:Lx4/h;

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lu4/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lu4/h;

    .line 8
    .line 9
    iget-object v0, p0, Lu4/h;->b:Lx4/h;

    .line 10
    .line 11
    iget-object p1, p1, Lu4/h;->b:Lx4/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lx4/a;->b(Lx4/a;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/h;->b:Lx4/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/p;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lu4/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x7b

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lu4/i;->a:I

    .line 23
    .line 24
    invoke-static {v1}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lu4/h;->b:Lx4/h;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x7d

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
