.class public final Lu4/j;
.super Lu4/i;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Lx4/q;

.field public final c:Lu4/e;


# direct methods
.method public constructor <init>(Lx4/q;ILa2/w0;Ly4/b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lu4/i;-><init>(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iput-object p1, p0, Lu4/j;->b:Lx4/q;

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lu4/j;->c:Lu4/e;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    and-int/lit8 p2, p2, 0x8

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p2, 0x0

    .line 21
    :goto_0
    new-instance v0, Lu4/e;

    .line 22
    .line 23
    invoke-direct {v0, p1, p3, p2, p4}, Lu4/e;-><init>(Lx4/q;La2/w0;ZLy4/b;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lu4/j;->c:Lu4/e;

    .line 27
    .line 28
    :goto_1
    return-void

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string p2, "method == null"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/j;->b:Lx4/q;

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
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p1, p1, Lu4/f;->i:Lu4/v;

    .line 4
    .line 5
    iget-object v2, p0, Lu4/j;->b:Lx4/q;

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Lu4/v;->l(Lx4/q;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sub-int p3, p1, p3

    .line 12
    .line 13
    iget-object v3, p0, Lu4/j;->c:Lu4/e;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v3}, Lu4/x;->f()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    :goto_0
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v4, 0x0

    .line 28
    :goto_1
    iget v5, p0, Lu4/i;->a:I

    .line 29
    .line 30
    and-int/lit16 v6, v5, 0x500

    .line 31
    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 v6, 0x0

    .line 37
    :goto_2
    if-ne v4, v6, :cond_4

    .line 38
    .line 39
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-virtual {v2}, Lx4/p;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v4, 0x2

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p4, v4, v1

    .line 57
    .line 58
    aput-object v2, v4, v0

    .line 59
    .line 60
    const-string p4, "  [%x] %s"

    .line 61
    .line 62
    invoke-static {p4, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-virtual {p2, v1, p4}, Lb5/b;->b(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p3}, Lcom/bumptech/glide/c;->l0(I)I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    invoke-static {p1}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "    method_idx:   "

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2, p4, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Lcom/bumptech/glide/c;->l0(I)I

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "    access_flags: "

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const v1, 0x31dff

    .line 98
    .line 99
    .line 100
    const/4 v2, 0x3

    .line 101
    invoke-static {v5, v1, v2}, Landroid/support/v4/media/session/b;->r(III)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p2, p4, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3}, Lcom/bumptech/glide/c;->l0(I)I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    invoke-static {v3}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "    code_off:     "

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p2, p4, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {p2, p3}, Lb5/b;->m(I)I

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v5}, Lb5/b;->m(I)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v3}, Lb5/b;->m(I)I

    .line 139
    .line 140
    .line 141
    return p1

    .line 142
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 143
    .line 144
    const-string p2, "code vs. access_flags mismatch"

    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lu4/j;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/j;->b:Lx4/q;

    .line 4
    .line 5
    iget-object p1, p1, Lu4/j;->b:Lx4/q;

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
    instance-of v0, p1, Lu4/j;

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
    check-cast p1, Lu4/j;

    .line 8
    .line 9
    iget-object v0, p0, Lu4/j;->b:Lx4/q;

    .line 10
    .line 11
    iget-object p1, p1, Lu4/j;->b:Lx4/q;

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

.method public final toString()Ljava/lang/String;
    .locals 3

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
    const-class v1, Lu4/j;

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
    iget-object v2, p0, Lu4/j;->b:Lx4/q;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lu4/j;->c:Lu4/e;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_0
    const/16 v1, 0x7d

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
