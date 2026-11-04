.class public Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ld0/g;

.field public b:F

.field public final c:Ljava/util/ArrayList;

.field public final d:Ld0/a;

.field public e:Z


# direct methods
.method public constructor <init>(Lv3/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld0/b;->a:Ld0/g;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ld0/b;->b:F

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ld0/b;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Ld0/b;->e:Z

    .line 19
    .line 20
    new-instance v0, Ld0/a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Ld0/a;-><init>(Ld0/b;Lv3/f;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ld0/c;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ld0/c;->j(I)Ld0/g;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ld0/a;->g(Ld0/g;F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ld0/c;->j(I)Ld0/g;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/high16 p2, -0x40800000    # -1.0f

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Ld0/a;->g(Ld0/g;F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final b(Ld0/g;Ld0/g;Ld0/g;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Ld0/b;->b:F

    .line 11
    .line 12
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Ld0/a;->g(Ld0/g;F)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 24
    .line 25
    invoke-virtual {p1, p2, p4}, Ld0/a;->g(Ld0/g;F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 29
    .line 30
    invoke-virtual {p1, p3, p4}, Ld0/a;->g(Ld0/g;F)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p4}, Ld0/a;->g(Ld0/g;F)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 40
    .line 41
    invoke-virtual {p1, p2, v1}, Ld0/a;->g(Ld0/g;F)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 45
    .line 46
    invoke-virtual {p1, p3, v1}, Ld0/a;->g(Ld0/g;F)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final c(Ld0/g;Ld0/g;Ld0/g;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Ld0/b;->b:F

    .line 11
    .line 12
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Ld0/a;->g(Ld0/g;F)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 24
    .line 25
    invoke-virtual {p1, p2, p4}, Ld0/a;->g(Ld0/g;F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 29
    .line 30
    invoke-virtual {p1, p3, v1}, Ld0/a;->g(Ld0/g;F)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p4}, Ld0/a;->g(Ld0/g;F)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 40
    .line 41
    invoke-virtual {p1, p2, v1}, Ld0/a;->g(Ld0/g;F)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 45
    .line 46
    invoke-virtual {p1, p3, p4}, Ld0/a;->g(Ld0/g;F)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public d([Z)Ld0/g;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ld0/b;->f([ZLd0/g;)Ld0/g;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/b;->a:Ld0/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Ld0/b;->b:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Ld0/a;->d()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final f([ZLd0/g;)Ld0/g;
    .locals 9

    .line 1
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld0/a;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v3, v0, :cond_3

    .line 12
    .line 13
    iget-object v5, p0, Ld0/b;->d:Ld0/a;

    .line 14
    .line 15
    invoke-virtual {v5, v3}, Ld0/a;->f(I)F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    cmpg-float v6, v5, v1

    .line 20
    .line 21
    if-gez v6, :cond_2

    .line 22
    .line 23
    iget-object v6, p0, Ld0/b;->d:Ld0/a;

    .line 24
    .line 25
    invoke-virtual {v6, v3}, Ld0/a;->e(I)Ld0/g;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget v7, v6, Ld0/g;->b:I

    .line 32
    .line 33
    aget-boolean v7, p1, v7

    .line 34
    .line 35
    if-nez v7, :cond_2

    .line 36
    .line 37
    :cond_0
    if-eq v6, p2, :cond_2

    .line 38
    .line 39
    iget v7, v6, Ld0/g;->l:I

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    if-eq v7, v8, :cond_1

    .line 43
    .line 44
    const/4 v8, 0x4

    .line 45
    if-ne v7, v8, :cond_2

    .line 46
    .line 47
    :cond_1
    cmpg-float v7, v5, v4

    .line 48
    .line 49
    if-gez v7, :cond_2

    .line 50
    .line 51
    move v4, v5

    .line 52
    move-object v2, v6

    .line 53
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object v2
.end method

.method public final g(Ld0/g;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld0/b;->a:Ld0/g;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Ld0/b;->d:Ld0/a;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Ld0/a;->g(Ld0/g;F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ld0/b;->a:Ld0/g;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    iput v2, v0, Ld0/g;->c:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Ld0/b;->a:Ld0/g;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, p1, v2}, Ld0/a;->h(Ld0/g;Z)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-float v0, v0, v1

    .line 28
    .line 29
    iput-object p1, p0, Ld0/b;->a:Ld0/g;

    .line 30
    .line 31
    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    cmpl-float p1, v0, p1

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget p1, p0, Ld0/b;->b:F

    .line 39
    .line 40
    div-float/2addr p1, v0

    .line 41
    iput p1, p0, Ld0/b;->b:F

    .line 42
    .line 43
    iget-object p1, p0, Ld0/b;->d:Ld0/a;

    .line 44
    .line 45
    iget v1, p1, Ld0/a;->h:I

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_0
    const/4 v3, -0x1

    .line 49
    if-eq v1, v3, :cond_2

    .line 50
    .line 51
    iget v3, p1, Ld0/a;->a:I

    .line 52
    .line 53
    if-ge v2, v3, :cond_2

    .line 54
    .line 55
    iget-object v3, p1, Ld0/a;->g:[F

    .line 56
    .line 57
    aget v4, v3, v1

    .line 58
    .line 59
    div-float/2addr v4, v0

    .line 60
    aput v4, v3, v1

    .line 61
    .line 62
    iget-object v3, p1, Ld0/a;->f:[I

    .line 63
    .line 64
    aget v1, v3, v1

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method public final h(Ld0/c;Ld0/g;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-boolean v0, p2, Ld0/g;->f:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ld0/a;->c(Ld0/g;)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Ld0/b;->b:F

    .line 15
    .line 16
    iget v2, p2, Ld0/g;->e:F

    .line 17
    .line 18
    mul-float v2, v2, v0

    .line 19
    .line 20
    add-float/2addr v2, v1

    .line 21
    iput v2, p0, Ld0/b;->b:F

    .line 22
    .line 23
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 24
    .line 25
    invoke-virtual {v0, p2, p3}, Ld0/a;->h(Ld0/g;Z)F

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ld0/g;->b(Ld0/b;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Ld0/b;->d:Ld0/a;

    .line 34
    .line 35
    invoke-virtual {p2}, Ld0/a;->d()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Ld0/b;->e:Z

    .line 43
    .line 44
    iput-boolean p2, p1, Ld0/c;->a:Z

    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public i(Ld0/c;Ld0/b;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld0/b;->d:Ld0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p2, Ld0/b;->a:Ld0/g;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ld0/a;->c(Ld0/g;)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p2, Ld0/b;->a:Ld0/g;

    .line 13
    .line 14
    invoke-virtual {v0, v2, p3}, Ld0/a;->h(Ld0/g;Z)F

    .line 15
    .line 16
    .line 17
    iget-object v2, p2, Ld0/b;->d:Ld0/a;

    .line 18
    .line 19
    invoke-virtual {v2}, Ld0/a;->d()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ld0/a;->e(I)Ld0/g;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v2, v5}, Ld0/a;->c(Ld0/g;)F

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    mul-float v6, v6, v1

    .line 35
    .line 36
    invoke-virtual {v0, v5, v6, p3}, Ld0/a;->a(Ld0/g;FZ)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Ld0/b;->b:F

    .line 43
    .line 44
    iget v2, p2, Ld0/b;->b:F

    .line 45
    .line 46
    mul-float v2, v2, v1

    .line 47
    .line 48
    add-float/2addr v2, v0

    .line 49
    iput v2, p0, Ld0/b;->b:F

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    iget-object p2, p2, Ld0/b;->a:Ld0/g;

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ld0/g;->b(Ld0/b;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p2, p0, Ld0/b;->a:Ld0/g;

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    iget-object p2, p0, Ld0/b;->d:Ld0/a;

    .line 63
    .line 64
    invoke-virtual {p2}, Ld0/a;->d()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p0, Ld0/b;->e:Z

    .line 72
    .line 73
    iput-boolean p2, p1, Ld0/c;->a:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Ld0/b;->a:Ld0/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Ld0/b;->a:Ld0/g;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    const-string v1, " = "

    .line 25
    .line 26
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Ld0/b;->b:F

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    cmpl-float v1, v1, v4

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Ld0/b;->b:F

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    :goto_1
    iget-object v5, p0, Ld0/b;->d:Ld0/a;

    .line 56
    .line 57
    invoke-virtual {v5}, Ld0/a;->d()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :goto_2
    if-ge v3, v5, :cond_8

    .line 62
    .line 63
    iget-object v6, p0, Ld0/b;->d:Ld0/a;

    .line 64
    .line 65
    invoke-virtual {v6, v3}, Ld0/a;->e(I)Ld0/g;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-nez v6, :cond_2

    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_2
    iget-object v7, p0, Ld0/b;->d:Ld0/a;

    .line 73
    .line 74
    invoke-virtual {v7, v3}, Ld0/a;->f(I)F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    cmpl-float v8, v7, v4

    .line 79
    .line 80
    if-nez v8, :cond_3

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_3
    invoke-virtual {v6}, Ld0/g;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const/high16 v8, -0x40800000    # -1.0f

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    cmpg-float v1, v7, v4

    .line 92
    .line 93
    if-gez v1, :cond_6

    .line 94
    .line 95
    const-string v1, "- "

    .line 96
    .line 97
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_3
    mul-float v7, v7, v8

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    cmpl-float v1, v7, v4

    .line 105
    .line 106
    if-lez v1, :cond_5

    .line 107
    .line 108
    const-string v1, " + "

    .line 109
    .line 110
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    const-string v1, " - "

    .line 116
    .line 117
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    .line 124
    cmpl-float v1, v7, v1

    .line 125
    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    invoke-static {v0, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_5

    .line 133
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v0, " "

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :goto_5
    const/4 v1, 0x1

    .line 157
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_8
    if-nez v1, :cond_9

    .line 161
    .line 162
    const-string v1, "0.0"

    .line 163
    .line 164
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :cond_9
    return-object v0
.end method
