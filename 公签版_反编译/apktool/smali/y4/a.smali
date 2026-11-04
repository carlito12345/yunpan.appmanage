.class public final Ly4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final e:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ly4/c;

.field public final c:Ly4/b;

.field public d:Ly4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/16 v1, 0x2710

    .line 4
    .line 5
    const/high16 v2, 0x3f400000    # 0.75f

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ly4/c;Ly4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Ly4/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Ly4/a;->b:Ly4/c;

    .line 11
    .line 12
    iput-object p3, p0, Ly4/a;->c:Ly4/b;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Ly4/a;->d:Ly4/b;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string p2, "returnType == null"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string p2, "descriptor == null"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public static b(Ljava/lang/String;)Ly4/a;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ly4/a;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x28

    .line 23
    .line 24
    const-string v5, "bad descriptor"

    .line 25
    .line 26
    if-ne v3, v4, :cond_c

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    const/16 v6, 0x29

    .line 31
    .line 32
    if-ge v3, v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-ne v7, v6, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v6, 0x41

    .line 42
    .line 43
    if-lt v7, v6, :cond_2

    .line 44
    .line 45
    const/16 v6, 0x5a

    .line 46
    .line 47
    if-gt v7, v6, :cond_2

    .line 48
    .line 49
    add-int/2addr v4, v0

    .line 50
    :cond_2
    add-int/2addr v3, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v3, 0x0

    .line 53
    :goto_1
    if-eqz v3, :cond_b

    .line 54
    .line 55
    sub-int/2addr v1, v0

    .line 56
    if-eq v3, v1, :cond_b

    .line 57
    .line 58
    add-int/2addr v3, v0

    .line 59
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v3, -0x1

    .line 64
    if-ne v1, v3, :cond_a

    .line 65
    .line 66
    new-array v1, v4, [Ly4/c;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    const/4 v7, 0x0

    .line 70
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-ne v8, v6, :cond_6

    .line 75
    .line 76
    add-int/2addr v4, v0

    .line 77
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v4, Ly4/c;->f:Lj$/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    :try_start_0
    const-string v4, "V"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    sget-object v3, Ly4/c;->p:Ly4/c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    invoke-static {v3}, Ly4/c;->e(Ljava/lang/String;)Ly4/c;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :goto_3
    new-instance v4, Ly4/b;

    .line 99
    .line 100
    invoke-direct {v4, v7}, Ly4/b;-><init>(I)V

    .line 101
    .line 102
    .line 103
    :goto_4
    if-ge v2, v7, :cond_5

    .line 104
    .line 105
    aget-object v5, v1, v2

    .line 106
    .line 107
    invoke-virtual {v4, v2, v5}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    add-int/2addr v2, v0

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    new-instance v0, Ly4/a;

    .line 113
    .line 114
    invoke-direct {v0, p0, v3, v4}, Ly4/a;-><init>(Ljava/lang/String;Ly4/c;Ly4/b;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 119
    .line 120
    const-string v0, "descriptor == null"

    .line 121
    .line 122
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_6
    move v9, v4

    .line 127
    :goto_5
    const/16 v10, 0x5b

    .line 128
    .line 129
    if-ne v8, v10, :cond_7

    .line 130
    .line 131
    add-int/2addr v9, v0

    .line 132
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    goto :goto_5

    .line 137
    :cond_7
    const/16 v10, 0x4c

    .line 138
    .line 139
    if-ne v8, v10, :cond_9

    .line 140
    .line 141
    const/16 v8, 0x3b

    .line 142
    .line 143
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eq v8, v3, :cond_8

    .line 148
    .line 149
    add-int/2addr v8, v0

    .line 150
    goto :goto_6

    .line 151
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_9
    add-int/lit8 v8, v9, 0x1

    .line 158
    .line 159
    :goto_6
    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v4}, Ly4/c;->e(Ljava/lang/String;)Ly4/c;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    aput-object v4, v1, v7

    .line 168
    .line 169
    add-int/2addr v7, v0

    .line 170
    move v4, v8

    .line 171
    goto :goto_2

    .line 172
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_8

    .line 190
    :goto_7
    throw p0

    .line 191
    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public final a(Ly4/a;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Ly4/a;->b:Ly4/c;

    .line 6
    .line 7
    iget-object v2, p0, Ly4/a;->b:Ly4/c;

    .line 8
    .line 9
    iget-object v2, v2, Ly4/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, v1, Ly4/c;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v1, p0, Ly4/a;->c:Ly4/b;

    .line 21
    .line 22
    iget-object v2, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    iget-object p1, p1, Ly4/a;->c:Ly4/b;

    .line 26
    .line 27
    iget-object v3, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    array-length v3, v3

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-ge v5, v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Ly4/c;

    .line 42
    .line 43
    invoke-virtual {p1, v5}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Ly4/c;

    .line 48
    .line 49
    iget-object v6, v6, Ly4/c;->a:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v7, v7, Ly4/c;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    return v6

    .line 60
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-ge v2, v3, :cond_4

    .line 64
    .line 65
    const/4 p1, -0x1

    .line 66
    return p1

    .line 67
    :cond_4
    if-le v2, v3, :cond_5

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_5
    return v0
.end method

.method public final c()Ly4/b;
    .locals 9

    .line 1
    iget-object v0, p0, Ly4/a;->d:Ly4/b;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Ly4/a;->c:Ly4/b;

    .line 6
    .line 7
    iget-object v1, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    new-instance v2, Ly4/b;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Ly4/b;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Ly4/c;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    iget v7, v5, Ly4/c;->b:I

    .line 27
    .line 28
    if-eq v7, v6, :cond_0

    .line 29
    .line 30
    const/4 v8, 0x2

    .line 31
    if-eq v7, v8, :cond_0

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    if-eq v7, v8, :cond_0

    .line 35
    .line 36
    const/4 v8, 0x6

    .line 37
    if-eq v7, v8, :cond_0

    .line 38
    .line 39
    const/16 v8, 0x8

    .line 40
    .line 41
    if-eq v7, v8, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    sget-object v5, Ly4/c;->l:Ly4/c;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    :goto_1
    invoke-virtual {v2, v3, v5}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-eqz v4, :cond_2

    .line 54
    .line 55
    move-object v0, v2

    .line 56
    :cond_2
    iput-object v0, p0, Ly4/a;->d:Ly4/b;

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Ly4/a;->d:Ly4/b;

    .line 59
    .line 60
    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ly4/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ly4/a;->a(Ly4/a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Ly4/a;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Ly4/a;

    .line 12
    .line 13
    iget-object p1, p1, Ly4/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Ly4/a;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
