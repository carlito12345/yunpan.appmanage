.class public Lph/s;
.super Lv3/f;
.source "SourceFile"


# instance fields
.field public f:Z


# direct methods
.method public constructor <init>(Lph/q;Loh/a;Lph/g;)V
    .locals 6

    .line 1
    const/16 v1, 0x19

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lph/s;->f:Z

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    instance-of p2, p1, Lph/l;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    move-object p2, p1

    .line 21
    check-cast p2, Lph/l;

    .line 22
    .line 23
    iget-object p2, p2, Lph/l;->d:Lqh/f0;

    .line 24
    .line 25
    const/16 p3, 0x40

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Lqh/f0;->b(I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lph/s;->f:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object p1, p1, Lph/q;->a:Lph/l;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    return-void
.end method

.method public static Y(Lph/q;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lph/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lph/x;

    .line 6
    .line 7
    invoke-virtual {p0}, Lph/p;->A()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Loh/f;->f(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method


# virtual methods
.method public Z(Lph/q;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lph/l;

    .line 6
    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    check-cast p1, Lph/l;

    .line 10
    .line 11
    iget-object v1, p1, Lph/l;->d:Lqh/f0;

    .line 12
    .line 13
    iget v2, v1, Lqh/f0;->d:I

    .line 14
    .line 15
    and-int/lit8 v2, v2, 0x4

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v1}, Lqh/f0;->c()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_5

    .line 25
    .line 26
    iget-object v1, p1, Lph/q;->a:Lph/l;

    .line 27
    .line 28
    instance-of v1, v1, Lph/h;

    .line 29
    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    invoke-virtual {p1}, Lph/l;->I()Lph/l;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    const/4 v2, 0x5

    .line 38
    if-ge v1, v2, :cond_5

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object v2, p1, Lph/l;->d:Lqh/f0;

    .line 43
    .line 44
    iget v3, v2, Lqh/f0;->d:I

    .line 45
    .line 46
    and-int/lit8 v3, v3, 0x4

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v2}, Lqh/f0;->c()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {p1}, Lph/q;->m()Lph/l;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 66
    :cond_5
    return v0
.end method

.method public a0(Lph/q;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    iget-object v1, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lph/q;

    .line 7
    .line 8
    if-eq p1, v1, :cond_7

    .line 9
    .line 10
    iget-boolean v1, p0, Lph/s;->f:Z

    .line 11
    .line 12
    if-nez v1, :cond_7

    .line 13
    .line 14
    invoke-static {p1}, Lph/s;->Y(Lph/q;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lph/s;->Z(Lph/q;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    invoke-virtual {p1}, Lph/q;->v()Lph/q;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-static {v1}, Lph/s;->Y(Lph/q;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lph/q;->v()Lph/q;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, v1}, Lph/s;->Z(Lph/q;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    iget-object p1, p1, Lph/q;->a:Lph/l;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lph/s;->Z(Lph/q;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_7

    .line 58
    .line 59
    iget-object v3, p1, Lph/l;->d:Lqh/f0;

    .line 60
    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Lqh/f0;->b(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_7

    .line 68
    .line 69
    invoke-virtual {p1}, Lph/q;->i()Lph/q;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v3, 0x0

    .line 74
    :goto_1
    const/4 v4, 0x5

    .line 75
    if-ge v3, v4, :cond_7

    .line 76
    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    instance-of v4, p1, Lph/x;

    .line 80
    .line 81
    if-nez v4, :cond_6

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    instance-of p1, v1, Lph/x;

    .line 86
    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lph/s;->Z(Lph/q;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    instance-of p1, v1, Lph/l;

    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    :cond_4
    const/4 v0, 0x1

    .line 100
    :cond_5
    return v0

    .line 101
    :cond_6
    invoke-virtual {p1}, Lph/q;->n()Lph/q;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    :goto_2
    return v0
.end method

.method public final n(Lph/l;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lph/s;->a0(Lph/q;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lv3/f;->B(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Loh/a;

    .line 13
    .line 14
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lph/g;

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Lph/l;->s(Loh/a;Lph/g;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lph/l;->d:Lqh/f0;

    .line 22
    .line 23
    const/16 p2, 0x40

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lqh/f0;->b(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lph/s;->f:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final o(Lph/p;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lph/s;->a0(Lph/q;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lv3/f;->B(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Loh/a;

    .line 13
    .line 14
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lph/g;

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Lph/q;->s(Loh/a;Lph/g;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final q(Lph/l;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lph/q;->i()Lph/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v0}, Lph/s;->Y(Lph/q;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lph/q;->n()Lph/q;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lph/s;->a0(Lph/q;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lv3/f;->B(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p2, p0, Lv3/f;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Loh/a;

    .line 28
    .line 29
    iget-object v0, p0, Lv3/f;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lph/g;

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lph/l;->J(Loh/a;Lph/g;)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Lph/s;->f:Z

    .line 37
    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    iget-object p2, p1, Lph/l;->d:Lqh/f0;

    .line 41
    .line 42
    const/16 v0, 0x40

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lqh/f0;->b(I)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    :cond_2
    iget-object p1, p1, Lph/q;->a:Lph/l;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p2, p1, Lph/l;->d:Lqh/f0;

    .line 55
    .line 56
    iget p2, p2, Lqh/f0;->d:I

    .line 57
    .line 58
    and-int/2addr p2, v0

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lph/s;->f:Z

    .line 64
    .line 65
    :cond_4
    return-void
.end method

.method public final r(Lph/x;II)V
    .locals 3

    .line 1
    iget-boolean p2, p0, Lph/s;->f:Z

    .line 2
    .line 3
    if-nez p2, :cond_6

    .line 4
    .line 5
    iget-object p2, p1, Lph/q;->a:Lph/l;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lph/s;->Z(Lph/q;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x4

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lph/q;->v()Lph/q;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lph/q;->n()Lph/q;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, p2, Lph/l;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lph/s;->Z(Lph/q;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    :cond_1
    if-eqz p2, :cond_2

    .line 34
    .line 35
    instance-of v2, p2, Lph/x;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lph/s;->a0(Lph/q;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    :cond_2
    const/16 v0, 0xc

    .line 46
    .line 47
    :cond_3
    if-eqz v1, :cond_4

    .line 48
    .line 49
    instance-of p2, v1, Lph/x;

    .line 50
    .line 51
    if-nez p2, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lph/s;->a0(Lph/q;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_5

    .line 58
    .line 59
    :cond_4
    or-int/lit8 p2, v0, 0x10

    .line 60
    .line 61
    move v0, p2

    .line 62
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lph/p;->A()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Loh/f;->f(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_7

    .line 71
    .line 72
    iget-object p2, p1, Lph/q;->a:Lph/l;

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lph/s;->Z(Lph/q;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_7

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lph/s;->a0(Lph/q;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0, p3}, Lv3/f;->B(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/4 v0, 0x0

    .line 91
    :cond_7
    :goto_1
    invoke-super {p0, p1, v0, p3}, Lv3/f;->r(Lph/x;II)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
