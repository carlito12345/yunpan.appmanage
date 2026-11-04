.class public final La4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, La4/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, La4/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p6, p0, La4/a;->c:Z

    .line 9
    .line 10
    iput p1, p0, La4/a;->d:I

    .line 11
    .line 12
    iput-object p5, p0, La4/a;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput p2, p0, La4/a;->f:I

    .line 15
    .line 16
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    const-string p2, "US"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "this as java.lang.String).toUpperCase(locale)"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "INT"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    const-string p2, "CHAR"

    .line 43
    .line 44
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_5

    .line 49
    .line 50
    const-string p2, "CLOB"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_5

    .line 57
    .line 58
    const-string p2, "TEXT"

    .line 59
    .line 60
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string p2, "BLOB"

    .line 68
    .line 69
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    const/4 p1, 0x5

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const-string p2, "REAL"

    .line 78
    .line 79
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p2, :cond_4

    .line 84
    .line 85
    const-string p2, "FLOA"

    .line 86
    .line 87
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_4

    .line 92
    .line 93
    const-string p2, "DOUB"

    .line 94
    .line 95
    invoke-static {p1, p2}, Lbf/h;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const/4 p1, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :goto_0
    const/4 p1, 0x4

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    :goto_1
    const/4 p1, 0x2

    .line 107
    :goto_2
    iput p1, p0, La4/a;->g:I

    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, La4/a;

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
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x14

    .line 14
    .line 15
    iget v4, p0, La4/a;->d:I

    .line 16
    .line 17
    if-lt v1, v3, :cond_2

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, La4/a;

    .line 21
    .line 22
    iget v1, v1, La4/a;->d:I

    .line 23
    .line 24
    if-eq v4, v1, :cond_5

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    if-lez v4, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/4 v1, 0x0

    .line 32
    :goto_0
    move-object v3, p1

    .line 33
    check-cast v3, La4/a;

    .line 34
    .line 35
    iget v3, v3, La4/a;->d:I

    .line 36
    .line 37
    if-lez v3, :cond_4

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_4
    const/4 v3, 0x0

    .line 42
    :goto_1
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    check-cast p1, La4/a;

    .line 46
    .line 47
    iget-object v1, p1, La4/a;->a:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p0, La4/a;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-boolean v1, p0, La4/a;->c:Z

    .line 59
    .line 60
    iget-boolean v3, p1, La4/a;->c:Z

    .line 61
    .line 62
    if-eq v1, v3, :cond_7

    .line 63
    .line 64
    return v2

    .line 65
    :cond_7
    iget v1, p1, La4/a;->f:I

    .line 66
    .line 67
    iget-object v3, p1, La4/a;->e:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    iget-object v5, p0, La4/a;->e:Ljava/lang/String;

    .line 71
    .line 72
    iget v6, p0, La4/a;->f:I

    .line 73
    .line 74
    if-ne v6, v0, :cond_8

    .line 75
    .line 76
    if-ne v1, v4, :cond_8

    .line 77
    .line 78
    if-eqz v5, :cond_8

    .line 79
    .line 80
    invoke-static {v5, v3}, Ld/b;->o(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_8

    .line 85
    .line 86
    return v2

    .line 87
    :cond_8
    if-ne v6, v4, :cond_9

    .line 88
    .line 89
    if-ne v1, v0, :cond_9

    .line 90
    .line 91
    if-eqz v3, :cond_9

    .line 92
    .line 93
    invoke-static {v3, v5}, Ld/b;->o(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_9

    .line 98
    .line 99
    return v2

    .line 100
    :cond_9
    if-eqz v6, :cond_b

    .line 101
    .line 102
    if-ne v6, v1, :cond_b

    .line 103
    .line 104
    if-eqz v5, :cond_a

    .line 105
    .line 106
    invoke-static {v5, v3}, Ld/b;->o(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_b

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_a
    if-eqz v3, :cond_b

    .line 114
    .line 115
    :goto_2
    return v2

    .line 116
    :cond_b
    iget v1, p0, La4/a;->g:I

    .line 117
    .line 118
    iget p1, p1, La4/a;->g:I

    .line 119
    .line 120
    if-ne v1, p1, :cond_c

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_c
    const/4 v0, 0x0

    .line 124
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, La4/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, La4/a;->g:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v1, p0, La4/a;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x4cf

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x4d5

    .line 22
    .line 23
    :goto_0
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget v1, p0, La4/a;->d:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Column{name=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La4/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', type=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La4/a;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', affinity=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, La4/a;->g:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', notNull="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, La4/a;->c:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", primaryKeyPosition="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, La4/a;->d:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", defaultValue=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, La4/a;->e:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    const-string v1, "undefined"

    .line 63
    .line 64
    :cond_0
    const-string v2, "\'}"

    .line 65
    .line 66
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method
