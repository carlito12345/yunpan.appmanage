.class public final Lrh/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final d:[C

.field public static final e:[Ljava/lang/String;

.field public static final f:[C

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lqh/s0;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lrh/v;->d:[C

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    new-array v1, v1, [Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "="

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 16
    .line 17
    const-string v2, "!="

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    const-string v2, "^="

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    const-string v2, "$="

    .line 28
    .line 29
    aput-object v2, v1, v0

    .line 30
    .line 31
    const-string v0, "*="

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    aput-object v0, v1, v2

    .line 35
    .line 36
    const-string v0, "~="

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    aput-object v0, v1, v2

    .line 40
    .line 41
    sput-object v1, Lrh/v;->e:[Ljava/lang/String;

    .line 42
    .line 43
    new-array v0, v3, [C

    .line 44
    .line 45
    fill-array-data v0, :array_1

    .line 46
    .line 47
    .line 48
    sput-object v0, Lrh/v;->f:[C

    .line 49
    .line 50
    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    .line 51
    .line 52
    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lrh/v;->g:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    const-string v0, "([+-])?(\\d+)"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lrh/v;->h:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 2
        0x3es
        0x2bs
        0x7es
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_1
    .array-data 2
        0x2cs
        0x29s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lrh/v;->b:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lqh/s0;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lqh/s0;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lrh/v;->a:Lqh/s0;

    .line 19
    .line 20
    return-void
.end method

.method public static R(Ljava/lang/String;)Lrh/p;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Lrh/v;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Lrh/v;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v2}, Lrh/v;->Q()Lrh/p;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v2}, Lrh/v;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_3
    invoke-virtual {v2}, Lrh/v;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception v2

    .line 24
    :try_start_4
    const-class v3, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 25
    .line 26
    :try_start_5
    const-string v4, "addSuppressed"

    .line 27
    .line 28
    new-array v5, v1, [Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v3, v5, v0

    .line 31
    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object v2, v1, v0

    .line 39
    .line 40
    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 41
    .line 42
    .line 43
    :catch_1
    :goto_0
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 44
    :goto_1
    new-instance v0, Lhc/d;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Lhc/d;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public static r(Lrh/p;Lrh/p;)Lrh/p;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    instance-of v0, p0, Lrh/b;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lrh/b;

    .line 10
    .line 11
    iget-object v1, v0, Lrh/d;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lrh/d;->g()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance v0, Lrh/b;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Lrh/p;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p0, v1, v2

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    aput-object p1, v1, p0

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Lrh/b;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v4}, Loh/f;->g(C)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v1, 0x1

    .line 41
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    :cond_4
    new-instance v0, Lnh/c;

    .line 49
    .line 50
    const-string v1, "Index must be numeric"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :goto_2
    throw v0

    .line 57
    :goto_3
    goto :goto_2
.end method

.method public final J()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lrh/v;->a:Lqh/s0;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    const/16 v2, 0x29

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lqh/s0;->A(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final K(Z)Lrh/p;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":contains"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lqh/s0;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Lnh/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lrh/v;->c:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance p1, Lrh/r;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Lrh/r;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lrh/h;

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-direct {p1, v1, v0}, Lrh/h;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Lrh/h;

    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    invoke-direct {p1, v1, v0}, Lrh/h;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object p1
.end method

.method public final L(Z)Lrh/p;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":containsWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lqh/s0;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Lnh/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lrh/h;

    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {p1, v1, v0, v2}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance p1, Lrh/h;

    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {p1, v1, v0, v2}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-object p1
.end method

.method public final M(ZZ)Lrh/n;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Loh/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "odd"

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x2

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string v3, "even"

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    sget-object v3, Lrh/v;->g:Ljava/util/regex/Pattern;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, ""

    .line 46
    .line 47
    const-string v8, "^\\+"

    .line 48
    .line 49
    if-eqz v6, :cond_5

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const-string v2, "-"

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    const/4 v2, -0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/4 v2, 0x1

    .line 85
    :goto_0
    const/4 v6, 0x4

    .line 86
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    if-eqz v9, :cond_1

    .line 91
    .line 92
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    sget-object v3, Lrh/v;->h:Ljava/util/regex/Pattern;

    .line 106
    .line 107
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_9

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_1
    if-eqz p2, :cond_7

    .line 131
    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    new-instance p1, Lrh/n;

    .line 135
    .line 136
    invoke-direct {p1, v2, v3, v5}, Lrh/n;-><init>(III)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    new-instance p1, Lrh/n;

    .line 141
    .line 142
    invoke-direct {p1, v2, v3, v0}, Lrh/n;-><init>(III)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    if-eqz p1, :cond_8

    .line 147
    .line 148
    new-instance p1, Lrh/n;

    .line 149
    .line 150
    invoke-direct {p1, v2, v3, v4}, Lrh/n;-><init>(III)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    new-instance p1, Lrh/n;

    .line 155
    .line 156
    invoke-direct {p1, v2, v3, v1}, Lrh/n;-><init>(III)V

    .line 157
    .line 158
    .line 159
    :goto_2
    return-object p1

    .line 160
    :cond_9
    new-instance p1, Lhc/d;

    .line 161
    .line 162
    const-string p2, "Could not parse nth-index \'%s\': unexpected format"

    .line 163
    .line 164
    new-array v0, v4, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object v2, v0, v1

    .line 167
    .line 168
    invoke-direct {p1, p2, v0}, Lhc/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :goto_3
    throw p1

    .line 173
    :goto_4
    goto :goto_3
.end method

.method public final N(Lqh/s0;)Lrh/p;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lrh/v;->e:[Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    :goto_0
    iget-object v5, p1, Lqh/s0;->a:Lqh/b;

    .line 11
    .line 12
    invoke-virtual {v5}, Lqh/b;->R()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_2

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_1
    const/4 v6, 0x6

    .line 20
    if-ge v5, v6, :cond_1

    .line 21
    .line 22
    aget-object v6, v3, v5

    .line 23
    .line 24
    iget-object v7, p1, Lqh/s0;->a:Lqh/b;

    .line 25
    .line 26
    invoke-virtual {v7, v6}, Lqh/b;->Y(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    add-int/2addr v5, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v5, p1, Lqh/s0;->a:Lqh/b;

    .line 36
    .line 37
    invoke-virtual {v5}, Lqh/b;->K()C

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_2
    invoke-static {v4}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lqh/s0;->K()Z

    .line 53
    .line 54
    .line 55
    iget-object v4, p1, Lqh/s0;->a:Lqh/b;

    .line 56
    .line 57
    invoke-virtual {v4}, Lqh/b;->R()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    const-string p1, "^"

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    new-instance p1, Lrh/h;

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p1, v0, v1}, Lrh/h;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_3
    const-string p1, "*"

    .line 83
    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    new-instance p1, Lrh/h;

    .line 91
    .line 92
    const-string v0, ""

    .line 93
    .line 94
    invoke-direct {p1, v0, v1}, Lrh/h;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_4
    new-instance p1, Lrh/h;

    .line 100
    .line 101
    invoke-direct {p1, v3, v2, v2}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_5
    const/16 v4, 0x3d

    .line 107
    .line 108
    invoke-virtual {p1, v4}, Lqh/s0;->M(C)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    new-instance v0, Lrh/i;

    .line 115
    .line 116
    iget-object p1, p1, Lqh/s0;->a:Lqh/b;

    .line 117
    .line 118
    invoke-virtual {p1}, Lqh/b;->P()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v0, v3, p1, v2}, Lrh/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :goto_3
    move-object p1, v0

    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_6
    iget-object v4, p1, Lqh/s0;->a:Lqh/b;

    .line 129
    .line 130
    const-string v5, "!="

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Lqh/b;->U(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    new-instance v0, Lrh/i;

    .line 139
    .line 140
    iget-object p1, p1, Lqh/s0;->a:Lqh/b;

    .line 141
    .line 142
    invoke-virtual {p1}, Lqh/b;->P()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const/4 v1, 0x3

    .line 147
    invoke-direct {v0, v3, p1, v1}, Lrh/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    iget-object v4, p1, Lqh/s0;->a:Lqh/b;

    .line 152
    .line 153
    const-string v5, "^="

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Lqh/b;->U(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_8

    .line 160
    .line 161
    new-instance v0, Lrh/i;

    .line 162
    .line 163
    iget-object p1, p1, Lqh/s0;->a:Lqh/b;

    .line 164
    .line 165
    invoke-virtual {p1}, Lqh/b;->P()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const/4 v1, 0x4

    .line 170
    invoke-direct {v0, v3, p1, v1, v2}, Lrh/i;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    iget-object v4, p1, Lqh/s0;->a:Lqh/b;

    .line 175
    .line 176
    const-string v5, "$="

    .line 177
    .line 178
    invoke-virtual {v4, v5}, Lqh/b;->U(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_9

    .line 183
    .line 184
    new-instance v1, Lrh/i;

    .line 185
    .line 186
    iget-object p1, p1, Lqh/s0;->a:Lqh/b;

    .line 187
    .line 188
    invoke-virtual {p1}, Lqh/b;->P()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {v1, v3, p1, v0, v2}, Lrh/i;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 193
    .line 194
    .line 195
    move-object p1, v1

    .line 196
    goto :goto_4

    .line 197
    :cond_9
    iget-object v4, p1, Lqh/s0;->a:Lqh/b;

    .line 198
    .line 199
    const-string v5, "*="

    .line 200
    .line 201
    invoke-virtual {v4, v5}, Lqh/b;->U(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_a

    .line 206
    .line 207
    new-instance v0, Lrh/i;

    .line 208
    .line 209
    iget-object p1, p1, Lqh/s0;->a:Lqh/b;

    .line 210
    .line 211
    invoke-virtual {p1}, Lqh/b;->P()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {v0, v3, p1, v1}, Lrh/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_a
    iget-object v4, p1, Lqh/s0;->a:Lqh/b;

    .line 220
    .line 221
    const-string v5, "~="

    .line 222
    .line 223
    invoke-virtual {v4, v5}, Lqh/b;->U(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_b

    .line 228
    .line 229
    new-instance v0, Lrh/j;

    .line 230
    .line 231
    iget-object p1, p1, Lqh/s0;->a:Lqh/b;

    .line 232
    .line 233
    invoke-virtual {p1}, Lqh/b;->P()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-direct {v0, v3, p1}, Lrh/j;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :goto_4
    return-object p1

    .line 246
    :cond_b
    new-instance v3, Lhc/d;

    .line 247
    .line 248
    iget-object v4, p0, Lrh/v;->b:Ljava/lang/String;

    .line 249
    .line 250
    iget-object p1, p1, Lqh/s0;->a:Lqh/b;

    .line 251
    .line 252
    invoke-virtual {p1}, Lqh/b;->P()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    new-array v0, v0, [Ljava/lang/Object;

    .line 257
    .line 258
    aput-object v4, v0, v2

    .line 259
    .line 260
    aput-object p1, v0, v1

    .line 261
    .line 262
    const-string p1, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    .line 263
    .line 264
    invoke-direct {v3, p1, v0}, Lhc/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :goto_5
    throw v3

    .line 269
    :goto_6
    goto :goto_5
.end method

.method public final O(Z)Lrh/p;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matches"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lnh/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lrh/v;->c:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lrh/r;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Lrh/r;-><init>(Ljava/util/regex/Pattern;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lrh/o;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {p1, v0, v1}, Lrh/o;-><init>(Ljava/util/regex/Pattern;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Lrh/o;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {p1, v0, v1}, Lrh/o;-><init>(Ljava/util/regex/Pattern;I)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object p1
.end method

.method public final P(Z)Lrh/p;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matchesWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lnh/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Lrh/o;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {p1, v0, v1}, Lrh/o;-><init>(Ljava/util/regex/Pattern;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance p1, Lrh/o;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-direct {p1, v0, v1}, Lrh/o;-><init>(Ljava/util/regex/Pattern;I)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-object p1
.end method

.method public final Q()Lrh/p;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lrh/v;->U()Lrh/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 6
    .line 7
    invoke-virtual {v1}, Lqh/s0;->K()Z

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 11
    .line 12
    iget-object v1, v1, Lqh/s0;->a:Lqh/b;

    .line 13
    .line 14
    invoke-virtual {v1}, Lqh/b;->R()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lhc/d;

    .line 22
    .line 23
    iget-object v1, p0, Lrh/v;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lrh/v;->a:Lqh/s0;

    .line 26
    .line 27
    iget-object v2, v2, Lqh/s0;->a:Lqh/b;

    .line 28
    .line 29
    invoke-virtual {v2}, Lqh/b;->P()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v1, v3, v4

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    aput-object v2, v3, v1

    .line 41
    .line 42
    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 43
    .line 44
    invoke-direct {v0, v1, v3}, Lhc/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final S(Ljava/util/function/Function;Ljava/lang/String;)Lrh/p;
    .locals 3

    .line 1
    iget-object v0, p0, Lrh/v;->a:Lqh/s0;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lqh/s0;->M(C)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lrh/v;->U()Lrh/p;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 16
    .line 17
    const/16 v2, 0x29

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lqh/s0;->M(C)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lrh/p;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p1, Lnh/c;

    .line 33
    .line 34
    invoke-direct {p1, p2}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    new-instance p1, Lnh/c;

    .line 39
    .line 40
    invoke-direct {p1, p2}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final T()Lrh/p;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 3
    .line 4
    invoke-virtual {v1}, Lqh/s0;->K()Z

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 8
    .line 9
    sget-object v2, Lrh/v;->d:[C

    .line 10
    .line 11
    iget-object v1, v1, Lqh/s0;->a:Lqh/b;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lqh/b;->W([C)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lrh/g;

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    invoke-direct {v1, v3}, Lrh/g;-><init>(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lrh/v;->V()Lrh/p;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    iget-object v3, p0, Lrh/v;->a:Lqh/s0;

    .line 32
    .line 33
    invoke-virtual {v3}, Lqh/s0;->K()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0x20

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const/16 v3, 0x20

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v3, 0x0

    .line 45
    :goto_1
    iget-object v5, p0, Lrh/v;->a:Lqh/s0;

    .line 46
    .line 47
    iget-object v5, v5, Lqh/s0;->a:Lqh/b;

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Lqh/b;->W([C)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    iget-object v3, p0, Lrh/v;->a:Lqh/s0;

    .line 56
    .line 57
    iget-object v3, v3, Lqh/s0;->a:Lqh/b;

    .line 58
    .line 59
    invoke-virtual {v3}, Lqh/b;->K()C

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v5, p0, Lrh/v;->a:Lqh/s0;

    .line 65
    .line 66
    sget-object v6, Lrh/v;->f:[C

    .line 67
    .line 68
    iget-object v5, v5, Lqh/s0;->a:Lqh/b;

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Lqh/b;->W([C)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    :goto_2
    if-eqz v3, :cond_9

    .line 78
    .line 79
    invoke-virtual {p0}, Lrh/v;->V()Lrh/p;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-eq v3, v4, :cond_8

    .line 84
    .line 85
    const/16 v4, 0x2b

    .line 86
    .line 87
    if-eq v3, v4, :cond_7

    .line 88
    .line 89
    const/16 v4, 0x3e

    .line 90
    .line 91
    if-eq v3, v4, :cond_5

    .line 92
    .line 93
    const/16 v4, 0x7e

    .line 94
    .line 95
    if-ne v3, v4, :cond_4

    .line 96
    .line 97
    new-instance v3, Lrh/b0;

    .line 98
    .line 99
    invoke-direct {v3, v1}, Lrh/b0;-><init>(Lrh/p;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v5}, Lrh/v;->r(Lrh/p;Lrh/p;)Lrh/p;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    new-instance v1, Lhc/d;

    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const/4 v3, 0x1

    .line 114
    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v2, v3, v0

    .line 117
    .line 118
    const-string v0, "Unknown combinator \'%s\'"

    .line 119
    .line 120
    invoke-direct {v1, v0, v3}, Lhc/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_5
    instance-of v3, v1, Lrh/z;

    .line 125
    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    check-cast v1, Lrh/z;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    new-instance v3, Lrh/z;

    .line 132
    .line 133
    invoke-direct {v3, v1}, Lrh/z;-><init>(Lrh/p;)V

    .line 134
    .line 135
    .line 136
    move-object v1, v3

    .line 137
    :goto_3
    iget-object v3, v1, Lrh/z;->d:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iget v3, v1, Lrh/z;->e:I

    .line 143
    .line 144
    invoke-virtual {v5}, Lrh/p;->a()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    add-int/2addr v4, v3

    .line 149
    iput v4, v1, Lrh/z;->e:I

    .line 150
    .line 151
    iget-boolean v3, v1, Lrh/c0;->b:Z

    .line 152
    .line 153
    invoke-virtual {v5}, Lrh/p;->f()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    or-int/2addr v3, v4

    .line 158
    iput-boolean v3, v1, Lrh/c0;->b:Z

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_7
    new-instance v3, Lrh/a0;

    .line 163
    .line 164
    invoke-direct {v3, v1}, Lrh/a0;-><init>(Lrh/p;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v3, v5}, Lrh/v;->r(Lrh/p;Lrh/p;)Lrh/p;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_8
    new-instance v3, Lrh/x;

    .line 174
    .line 175
    invoke-direct {v3, v1, v0}, Lrh/x;-><init>(Lrh/p;I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v3, v5}, Lrh/v;->r(Lrh/p;Lrh/p;)Lrh/p;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_9
    :goto_4
    return-object v1
.end method

.method public final U()Lrh/p;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lrh/v;->T()Lrh/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 6
    .line 7
    const/16 v2, 0x2c

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lqh/s0;->M(C)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lrh/v;->T()Lrh/p;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v0, Lrh/c;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Lrh/c;

    .line 25
    .line 26
    iget-object v3, v2, Lrh/d;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lrh/d;->g()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Lrh/c;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [Lrh/p;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v0, v3, v4

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v1, v3, v0

    .line 45
    .line 46
    invoke-direct {v2, v3}, Lrh/c;-><init>([Lrh/p;)V

    .line 47
    .line 48
    .line 49
    move-object v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public final V()Lrh/p;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lrh/v;->a:Lqh/s0;

    .line 7
    .line 8
    invoke-virtual {v4}, Lqh/s0;->K()Z

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lrh/v;->a:Lqh/s0;

    .line 12
    .line 13
    iget-object v4, v4, Lqh/s0;->a:Lqh/b;

    .line 14
    .line 15
    invoke-virtual {v4}, Lqh/b;->Q()C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v5, "*|"

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    iget-object v4, p0, Lrh/v;->a:Lqh/s0;

    .line 28
    .line 29
    iget-object v4, v4, Lqh/s0;->a:Lqh/b;

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Lqh/b;->Y(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 39
    .line 40
    const/16 v4, 0x2a

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lqh/s0;->M(C)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    new-instance v1, Lrh/g;

    .line 49
    .line 50
    invoke-direct {v1, v3}, Lrh/g;-><init>(I)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_2
    :goto_0
    iget-object v4, p0, Lrh/v;->a:Lqh/s0;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v6, Lqh/s0;->b:[C

    .line 64
    .line 65
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    :goto_1
    iget-object v8, v4, Lqh/s0;->a:Lqh/b;

    .line 70
    .line 71
    invoke-virtual {v8}, Lqh/b;->R()Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_5

    .line 76
    .line 77
    iget-object v8, v4, Lqh/s0;->a:Lqh/b;

    .line 78
    .line 79
    invoke-virtual {v8}, Lqh/b;->Q()C

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    const/16 v9, 0x5c

    .line 84
    .line 85
    if-ne v8, v9, :cond_3

    .line 86
    .line 87
    invoke-virtual {v4}, Lqh/s0;->r()V

    .line 88
    .line 89
    .line 90
    iget-object v8, v4, Lqh/s0;->a:Lqh/b;

    .line 91
    .line 92
    invoke-virtual {v8}, Lqh/b;->R()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_5

    .line 97
    .line 98
    iget-object v8, v4, Lqh/s0;->a:Lqh/b;

    .line 99
    .line 100
    invoke-virtual {v8}, Lqh/b;->K()C

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v9, v4, Lqh/s0;->a:Lqh/b;

    .line 109
    .line 110
    invoke-virtual {v9}, Lqh/b;->Q()C

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-nez v9, :cond_4

    .line 119
    .line 120
    iget-object v9, v4, Lqh/s0;->a:Lqh/b;

    .line 121
    .line 122
    invoke-virtual {v9, v6}, Lqh/b;->W([C)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_5

    .line 127
    .line 128
    :cond_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lqh/s0;->r()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-static {v7}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4}, Loh/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v4}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    const-string v6, ":"

    .line 151
    .line 152
    if-eqz v5, :cond_6

    .line 153
    .line 154
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    new-instance v5, Lrh/c;

    .line 159
    .line 160
    new-instance v7, Lrh/h;

    .line 161
    .line 162
    invoke-direct {v7, v4, v1, v3}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 163
    .line 164
    .line 165
    new-instance v1, Lrh/h;

    .line 166
    .line 167
    invoke-static {v6, v4}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const/16 v6, 0xa

    .line 172
    .line 173
    invoke-direct {v1, v4, v6, v3}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 174
    .line 175
    .line 176
    new-array v4, v2, [Lrh/p;

    .line 177
    .line 178
    aput-object v7, v4, v3

    .line 179
    .line 180
    aput-object v1, v4, v0

    .line 181
    .line 182
    invoke-direct {v5, v4}, Lrh/c;-><init>([Lrh/p;)V

    .line 183
    .line 184
    .line 185
    :goto_2
    move-object v1, v5

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    const-string v5, "|*"

    .line 188
    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_7

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    sub-int/2addr v5, v2

    .line 205
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-instance v4, Lrh/h;

    .line 220
    .line 221
    const/16 v5, 0xb

    .line 222
    .line 223
    invoke-direct {v4, v1, v5, v3}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 224
    .line 225
    .line 226
    move-object v1, v4

    .line 227
    goto :goto_3

    .line 228
    :cond_7
    const-string v5, "|"

    .line 229
    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_8

    .line 235
    .line 236
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    :cond_8
    new-instance v5, Lrh/h;

    .line 241
    .line 242
    invoke-direct {v5, v4, v1, v3}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :goto_3
    invoke-virtual {p0}, Lrh/v;->W()Lrh/p;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    if-eqz v4, :cond_9

    .line 251
    .line 252
    invoke-static {v1, v4}, Lrh/v;->r(Lrh/p;Lrh/p;)Lrh/p;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    goto :goto_3

    .line 257
    :cond_9
    if-eqz v1, :cond_a

    .line 258
    .line 259
    return-object v1

    .line 260
    :cond_a
    new-instance v1, Lhc/d;

    .line 261
    .line 262
    iget-object v4, p0, Lrh/v;->b:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v5, p0, Lrh/v;->a:Lqh/s0;

    .line 265
    .line 266
    iget-object v5, v5, Lqh/s0;->a:Lqh/b;

    .line 267
    .line 268
    invoke-virtual {v5}, Lqh/b;->P()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    new-array v2, v2, [Ljava/lang/Object;

    .line 273
    .line 274
    aput-object v4, v2, v3

    .line 275
    .line 276
    aput-object v5, v2, v0

    .line 277
    .line 278
    const-string v0, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 279
    .line 280
    invoke-direct {v1, v0, v2}, Lhc/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :goto_4
    throw v1

    .line 285
    :goto_5
    goto :goto_4
.end method

.method public final W()Lrh/p;
    .locals 13

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, -0x1

    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    iget-object v11, p0, Lrh/v;->a:Lqh/s0;

    .line 16
    .line 17
    const/16 v12, 0x23

    .line 18
    .line 19
    invoke-virtual {v11, v12}, Lqh/s0;->M(C)Z

    .line 20
    .line 21
    .line 22
    move-result v11

    .line 23
    if-eqz v11, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lrh/v;->a:Lqh/s0;

    .line 26
    .line 27
    invoke-virtual {v0}, Lqh/s0;->J()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lrh/h;

    .line 35
    .line 36
    invoke-direct {v1, v0, v4, v10}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_0
    iget-object v11, p0, Lrh/v;->a:Lqh/s0;

    .line 41
    .line 42
    const/16 v12, 0x2e

    .line 43
    .line 44
    invoke-virtual {v11, v12}, Lqh/s0;->M(C)Z

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    if-eqz v11, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lrh/v;->a:Lqh/s0;

    .line 51
    .line 52
    invoke-virtual {v0}, Lqh/s0;->J()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lrh/h;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v1, v0, v8, v10}, Lrh/h;-><init>(Ljava/lang/String;IZ)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_1
    iget-object v11, p0, Lrh/v;->a:Lqh/s0;

    .line 70
    .line 71
    iget-object v11, v11, Lqh/s0;->a:Lqh/b;

    .line 72
    .line 73
    const/16 v12, 0x5b

    .line 74
    .line 75
    invoke-virtual {v11, v12}, Lqh/b;->V(C)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_2

    .line 80
    .line 81
    new-instance v0, Lqh/s0;

    .line 82
    .line 83
    iget-object v1, p0, Lrh/v;->a:Lqh/s0;

    .line 84
    .line 85
    const/16 v2, 0x5d

    .line 86
    .line 87
    invoke-virtual {v1, v12, v2}, Lqh/s0;->A(CC)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Lqh/s0;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :try_start_0
    invoke-virtual {p0, v0}, Lrh/v;->N(Lqh/s0;)Lrh/p;

    .line 95
    .line 96
    .line 97
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v0}, Lqh/s0;->close()V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    :try_start_1
    invoke-virtual {v0}, Lqh/s0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    const-class v2, Ljava/lang/Throwable;

    .line 109
    .line 110
    :try_start_2
    const-string v3, "addSuppressed"

    .line 111
    .line 112
    new-array v4, v9, [Ljava/lang/Class;

    .line 113
    .line 114
    aput-object v2, v4, v10

    .line 115
    .line 116
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-array v3, v9, [Ljava/lang/Object;

    .line 121
    .line 122
    aput-object v0, v3, v10

    .line 123
    .line 124
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .line 126
    .line 127
    :catch_0
    :goto_0
    throw v1

    .line 128
    :cond_2
    iget-object v11, p0, Lrh/v;->a:Lqh/s0;

    .line 129
    .line 130
    iget-object v11, v11, Lqh/s0;->a:Lqh/b;

    .line 131
    .line 132
    const-string v12, "::"

    .line 133
    .line 134
    invoke-virtual {v11, v12}, Lqh/b;->U(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-eqz v11, :cond_a

    .line 139
    .line 140
    iget-object v0, p0, Lrh/v;->a:Lqh/s0;

    .line 141
    .line 142
    invoke-virtual {v0}, Lqh/s0;->J()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-boolean v9, p0, Lrh/v;->c:Z

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    sparse-switch v1, :sswitch_data_0

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :sswitch_0
    const-string v1, "leafnode"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_3

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_3
    const/4 v3, 0x5

    .line 169
    goto :goto_1

    .line 170
    :sswitch_1
    const-string v1, "comment"

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_4

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    const/4 v3, 0x4

    .line 180
    goto :goto_1

    .line 181
    :sswitch_2
    const-string v1, "cdata"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_5

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    const/4 v3, 0x3

    .line 191
    goto :goto_1

    .line 192
    :sswitch_3
    const-string v1, "text"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_6

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_6
    const/4 v3, 0x2

    .line 202
    goto :goto_1

    .line 203
    :sswitch_4
    const-string v1, "node"

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_7

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_7
    const/4 v3, 0x1

    .line 213
    goto :goto_1

    .line 214
    :sswitch_5
    const-string v1, "data"

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_8

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_8
    const/4 v3, 0x0

    .line 224
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 225
    .line 226
    .line 227
    new-instance v1, Lhc/d;

    .line 228
    .line 229
    iget-object v2, p0, Lrh/v;->b:Ljava/lang/String;

    .line 230
    .line 231
    new-array v3, v8, [Ljava/lang/Object;

    .line 232
    .line 233
    aput-object v2, v3, v10

    .line 234
    .line 235
    aput-object v0, v3, v9

    .line 236
    .line 237
    const-string v0, "Could not parse query \'%s\': unknown node type \'::%s\'"

    .line 238
    .line 239
    invoke-direct {v1, v0, v3}, Lhc/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    throw v1

    .line 243
    :pswitch_0
    new-instance v1, Lrh/s;

    .line 244
    .line 245
    const-class v2, Lph/p;

    .line 246
    .line 247
    invoke-direct {v1, v2, v0}, Lrh/s;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :pswitch_1
    new-instance v1, Lrh/s;

    .line 252
    .line 253
    const-class v2, Lph/e;

    .line 254
    .line 255
    invoke-direct {v1, v2, v0}, Lrh/s;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :pswitch_2
    new-instance v1, Lrh/s;

    .line 260
    .line 261
    const-class v2, Lph/d;

    .line 262
    .line 263
    invoke-direct {v1, v2, v0}, Lrh/s;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :pswitch_3
    new-instance v1, Lrh/s;

    .line 268
    .line 269
    const-class v2, Lph/x;

    .line 270
    .line 271
    invoke-direct {v1, v2, v0}, Lrh/s;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :pswitch_4
    new-instance v1, Lrh/s;

    .line 276
    .line 277
    const-class v2, Lph/q;

    .line 278
    .line 279
    invoke-direct {v1, v2, v0}, Lrh/s;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :pswitch_5
    new-instance v1, Lrh/s;

    .line 284
    .line 285
    const-class v2, Lph/f;

    .line 286
    .line 287
    invoke-direct {v1, v2, v0}, Lrh/s;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_2
    invoke-virtual {p0}, Lrh/v;->W()Lrh/p;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    if-eqz v0, :cond_9

    .line 295
    .line 296
    invoke-static {v1, v0}, Lrh/v;->r(Lrh/p;Lrh/p;)Lrh/p;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    goto :goto_2

    .line 301
    :cond_9
    iput-boolean v10, p0, Lrh/v;->c:Z

    .line 302
    .line 303
    return-object v1

    .line 304
    :cond_a
    iget-object v11, p0, Lrh/v;->a:Lqh/s0;

    .line 305
    .line 306
    const/16 v12, 0x3a

    .line 307
    .line 308
    invoke-virtual {v11, v12}, Lqh/s0;->M(C)Z

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    if-eqz v11, :cond_28

    .line 313
    .line 314
    iget-object v11, p0, Lrh/v;->a:Lqh/s0;

    .line 315
    .line 316
    invoke-virtual {v11}, Lqh/s0;->J()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    sparse-switch v12, :sswitch_data_1

    .line 328
    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :sswitch_6
    const-string v4, "last-of-type"

    .line 333
    .line 334
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-nez v4, :cond_b

    .line 339
    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :cond_b
    const/16 v3, 0x1c

    .line 343
    .line 344
    goto/16 :goto_3

    .line 345
    .line 346
    :sswitch_7
    const-string v4, "containsWholeText"

    .line 347
    .line 348
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-nez v4, :cond_c

    .line 353
    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    :cond_c
    const/16 v3, 0x1b

    .line 357
    .line 358
    goto/16 :goto_3

    .line 359
    .line 360
    :sswitch_8
    const-string v4, "matchesOwn"

    .line 361
    .line 362
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-nez v4, :cond_d

    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :cond_d
    const/16 v3, 0x1a

    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :sswitch_9
    const-string v4, "only-of-type"

    .line 375
    .line 376
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-nez v4, :cond_e

    .line 381
    .line 382
    goto/16 :goto_3

    .line 383
    .line 384
    :cond_e
    const/16 v3, 0x19

    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    :sswitch_a
    const-string v4, "first-of-type"

    .line 389
    .line 390
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-nez v4, :cond_f

    .line 395
    .line 396
    goto/16 :goto_3

    .line 397
    .line 398
    :cond_f
    const/16 v3, 0x18

    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :sswitch_b
    const-string v4, "matchesWholeOwnText"

    .line 403
    .line 404
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-nez v4, :cond_10

    .line 409
    .line 410
    goto/16 :goto_3

    .line 411
    .line 412
    :cond_10
    const/16 v3, 0x17

    .line 413
    .line 414
    goto/16 :goto_3

    .line 415
    .line 416
    :sswitch_c
    const-string v4, "matches"

    .line 417
    .line 418
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-nez v4, :cond_11

    .line 423
    .line 424
    goto/16 :goto_3

    .line 425
    .line 426
    :cond_11
    const/16 v3, 0x16

    .line 427
    .line 428
    goto/16 :goto_3

    .line 429
    .line 430
    :sswitch_d
    const-string v4, "last-child"

    .line 431
    .line 432
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-nez v4, :cond_12

    .line 437
    .line 438
    goto/16 :goto_3

    .line 439
    .line 440
    :cond_12
    const/16 v3, 0x15

    .line 441
    .line 442
    goto/16 :goto_3

    .line 443
    .line 444
    :sswitch_e
    const-string v4, "matchText"

    .line 445
    .line 446
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    if-nez v4, :cond_13

    .line 451
    .line 452
    goto/16 :goto_3

    .line 453
    .line 454
    :cond_13
    const/16 v3, 0x14

    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    :sswitch_f
    const-string v4, "containsOwn"

    .line 459
    .line 460
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    if-nez v4, :cond_14

    .line 465
    .line 466
    goto/16 :goto_3

    .line 467
    .line 468
    :cond_14
    const/16 v3, 0x13

    .line 469
    .line 470
    goto/16 :goto_3

    .line 471
    .line 472
    :sswitch_10
    const-string v4, "empty"

    .line 473
    .line 474
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    if-nez v4, :cond_15

    .line 479
    .line 480
    goto/16 :goto_3

    .line 481
    .line 482
    :cond_15
    const/16 v3, 0x12

    .line 483
    .line 484
    goto/16 :goto_3

    .line 485
    .line 486
    :sswitch_11
    const-string v4, "blank"

    .line 487
    .line 488
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-nez v4, :cond_16

    .line 493
    .line 494
    goto/16 :goto_3

    .line 495
    .line 496
    :cond_16
    const/16 v3, 0x11

    .line 497
    .line 498
    goto/16 :goto_3

    .line 499
    .line 500
    :sswitch_12
    const-string v4, "root"

    .line 501
    .line 502
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    if-nez v4, :cond_17

    .line 507
    .line 508
    goto/16 :goto_3

    .line 509
    .line 510
    :cond_17
    const/16 v3, 0x10

    .line 511
    .line 512
    goto/16 :goto_3

    .line 513
    .line 514
    :sswitch_13
    const-string v4, "not"

    .line 515
    .line 516
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    if-nez v4, :cond_18

    .line 521
    .line 522
    goto/16 :goto_3

    .line 523
    .line 524
    :cond_18
    const/16 v3, 0xf

    .line 525
    .line 526
    goto/16 :goto_3

    .line 527
    .line 528
    :sswitch_14
    const-string v4, "has"

    .line 529
    .line 530
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-nez v4, :cond_19

    .line 535
    .line 536
    goto/16 :goto_3

    .line 537
    .line 538
    :cond_19
    const/16 v3, 0xe

    .line 539
    .line 540
    goto/16 :goto_3

    .line 541
    .line 542
    :sswitch_15
    const-string v4, "lt"

    .line 543
    .line 544
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    if-nez v4, :cond_1a

    .line 549
    .line 550
    goto/16 :goto_3

    .line 551
    .line 552
    :cond_1a
    const/16 v3, 0xd

    .line 553
    .line 554
    goto/16 :goto_3

    .line 555
    .line 556
    :sswitch_16
    const-string v4, "is"

    .line 557
    .line 558
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    if-nez v4, :cond_1b

    .line 563
    .line 564
    goto/16 :goto_3

    .line 565
    .line 566
    :cond_1b
    const/16 v3, 0xc

    .line 567
    .line 568
    goto/16 :goto_3

    .line 569
    .line 570
    :sswitch_17
    const-string v4, "gt"

    .line 571
    .line 572
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    if-nez v4, :cond_1c

    .line 577
    .line 578
    goto/16 :goto_3

    .line 579
    .line 580
    :cond_1c
    const/16 v3, 0xb

    .line 581
    .line 582
    goto/16 :goto_3

    .line 583
    .line 584
    :sswitch_18
    const-string v4, "eq"

    .line 585
    .line 586
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    if-nez v4, :cond_1d

    .line 591
    .line 592
    goto/16 :goto_3

    .line 593
    .line 594
    :cond_1d
    const/16 v3, 0xa

    .line 595
    .line 596
    goto/16 :goto_3

    .line 597
    .line 598
    :sswitch_19
    const-string v4, "containsWholeOwnText"

    .line 599
    .line 600
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    if-nez v4, :cond_1e

    .line 605
    .line 606
    goto/16 :goto_3

    .line 607
    .line 608
    :cond_1e
    const/16 v3, 0x9

    .line 609
    .line 610
    goto/16 :goto_3

    .line 611
    .line 612
    :sswitch_1a
    const-string v12, "contains"

    .line 613
    .line 614
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v11

    .line 618
    if-nez v11, :cond_1f

    .line 619
    .line 620
    goto/16 :goto_3

    .line 621
    .line 622
    :cond_1f
    const/16 v3, 0x8

    .line 623
    .line 624
    goto/16 :goto_3

    .line 625
    .line 626
    :sswitch_1b
    const-string v4, "nth-last-of-type"

    .line 627
    .line 628
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    if-nez v4, :cond_20

    .line 633
    .line 634
    goto :goto_3

    .line 635
    :cond_20
    const/4 v3, 0x7

    .line 636
    goto :goto_3

    .line 637
    :sswitch_1c
    const-string v4, "nth-of-type"

    .line 638
    .line 639
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    if-nez v4, :cond_21

    .line 644
    .line 645
    goto :goto_3

    .line 646
    :cond_21
    const/4 v3, 0x6

    .line 647
    goto :goto_3

    .line 648
    :sswitch_1d
    const-string v4, "only-child"

    .line 649
    .line 650
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    if-nez v4, :cond_22

    .line 655
    .line 656
    goto :goto_3

    .line 657
    :cond_22
    const/4 v3, 0x5

    .line 658
    goto :goto_3

    .line 659
    :sswitch_1e
    const-string v4, "nth-last-child"

    .line 660
    .line 661
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    if-nez v4, :cond_23

    .line 666
    .line 667
    goto :goto_3

    .line 668
    :cond_23
    const/4 v3, 0x4

    .line 669
    goto :goto_3

    .line 670
    :sswitch_1f
    const-string v4, "nth-child"

    .line 671
    .line 672
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    if-nez v4, :cond_24

    .line 677
    .line 678
    goto :goto_3

    .line 679
    :cond_24
    const/4 v3, 0x3

    .line 680
    goto :goto_3

    .line 681
    :sswitch_20
    const-string v4, "matchesWholeText"

    .line 682
    .line 683
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    if-nez v4, :cond_25

    .line 688
    .line 689
    goto :goto_3

    .line 690
    :cond_25
    const/4 v3, 0x2

    .line 691
    goto :goto_3

    .line 692
    :sswitch_21
    const-string v4, "first-child"

    .line 693
    .line 694
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v4

    .line 698
    if-nez v4, :cond_26

    .line 699
    .line 700
    goto :goto_3

    .line 701
    :cond_26
    const/4 v3, 0x1

    .line 702
    goto :goto_3

    .line 703
    :sswitch_22
    const-string v4, "containsData"

    .line 704
    .line 705
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v4

    .line 709
    if-nez v4, :cond_27

    .line 710
    .line 711
    goto :goto_3

    .line 712
    :cond_27
    const/4 v3, 0x0

    .line 713
    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 714
    .line 715
    .line 716
    new-instance v0, Lhc/d;

    .line 717
    .line 718
    iget-object v1, p0, Lrh/v;->b:Ljava/lang/String;

    .line 719
    .line 720
    iget-object v2, p0, Lrh/v;->a:Lqh/s0;

    .line 721
    .line 722
    iget-object v2, v2, Lqh/s0;->a:Lqh/b;

    .line 723
    .line 724
    invoke-virtual {v2}, Lqh/b;->P()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    new-array v3, v8, [Ljava/lang/Object;

    .line 729
    .line 730
    aput-object v1, v3, v10

    .line 731
    .line 732
    aput-object v2, v3, v9

    .line 733
    .line 734
    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 735
    .line 736
    invoke-direct {v0, v1, v3}, Lhc/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    throw v0

    .line 740
    :pswitch_6
    new-instance v0, Lrh/m;

    .line 741
    .line 742
    invoke-direct {v0}, Lrh/m;-><init>()V

    .line 743
    .line 744
    .line 745
    goto/16 :goto_5

    .line 746
    .line 747
    :pswitch_7
    invoke-virtual {p0, v10}, Lrh/v;->L(Z)Lrh/p;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    goto/16 :goto_5

    .line 752
    .line 753
    :pswitch_8
    invoke-virtual {p0, v9}, Lrh/v;->O(Z)Lrh/p;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    goto/16 :goto_5

    .line 758
    .line 759
    :pswitch_9
    new-instance v0, Lrh/g;

    .line 760
    .line 761
    invoke-direct {v0, v5}, Lrh/g;-><init>(I)V

    .line 762
    .line 763
    .line 764
    goto/16 :goto_5

    .line 765
    .line 766
    :pswitch_a
    new-instance v0, Lrh/l;

    .line 767
    .line 768
    invoke-direct {v0}, Lrh/l;-><init>()V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_5

    .line 772
    .line 773
    :pswitch_b
    invoke-virtual {p0, v9}, Lrh/v;->P(Z)Lrh/p;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    goto/16 :goto_5

    .line 778
    .line 779
    :pswitch_c
    invoke-virtual {p0, v10}, Lrh/v;->O(Z)Lrh/p;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    goto/16 :goto_5

    .line 784
    .line 785
    :pswitch_d
    new-instance v0, Lrh/g;

    .line 786
    .line 787
    invoke-direct {v0, v7}, Lrh/g;-><init>(I)V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_5

    .line 791
    .line 792
    :pswitch_e
    new-instance v0, Lrh/g;

    .line 793
    .line 794
    invoke-direct {v0}, Lrh/g;-><init>()V

    .line 795
    .line 796
    .line 797
    goto/16 :goto_5

    .line 798
    .line 799
    :pswitch_f
    invoke-virtual {p0, v9}, Lrh/v;->K(Z)Lrh/p;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    goto/16 :goto_5

    .line 804
    .line 805
    :pswitch_10
    new-instance v0, Lrh/g;

    .line 806
    .line 807
    invoke-direct {v0, v9}, Lrh/g;-><init>(I)V

    .line 808
    .line 809
    .line 810
    goto/16 :goto_5

    .line 811
    .line 812
    :pswitch_11
    new-instance v0, Lrh/q;

    .line 813
    .line 814
    invoke-direct {v0}, Lrh/q;-><init>()V

    .line 815
    .line 816
    .line 817
    goto/16 :goto_5

    .line 818
    .line 819
    :pswitch_12
    new-instance v0, Lrh/g;

    .line 820
    .line 821
    invoke-direct {v0, v2}, Lrh/g;-><init>(I)V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_5

    .line 825
    .line 826
    :pswitch_13
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    const-string v1, ":not(selector) subselect must not be empty"

    .line 831
    .line 832
    invoke-static {v0, v1}, Lnh/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    new-instance v1, Lrh/x;

    .line 836
    .line 837
    invoke-static {v0}, Lrh/v;->R(Ljava/lang/String;)Lrh/p;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-direct {v1, v0, v8}, Lrh/x;-><init>(Lrh/p;I)V

    .line 842
    .line 843
    .line 844
    :goto_4
    move-object v0, v1

    .line 845
    goto/16 :goto_5

    .line 846
    .line 847
    :pswitch_14
    new-instance v1, La2/n;

    .line 848
    .line 849
    invoke-direct {v1, v0}, La2/n;-><init>(I)V

    .line 850
    .line 851
    .line 852
    const-string v0, ":has() must have a selector"

    .line 853
    .line 854
    invoke-virtual {p0, v1, v0}, Lrh/v;->S(Ljava/util/function/Function;Ljava/lang/String;)Lrh/p;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    goto/16 :goto_5

    .line 859
    .line 860
    :pswitch_15
    new-instance v0, Lrh/k;

    .line 861
    .line 862
    invoke-virtual {p0}, Lrh/v;->A()I

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    invoke-direct {v0, v1, v8}, Lrh/k;-><init>(II)V

    .line 867
    .line 868
    .line 869
    goto :goto_5

    .line 870
    :pswitch_16
    new-instance v0, La2/n;

    .line 871
    .line 872
    invoke-direct {v0, v1}, La2/n;-><init>(I)V

    .line 873
    .line 874
    .line 875
    const-string v1, ":is() must have a selector"

    .line 876
    .line 877
    invoke-virtual {p0, v0, v1}, Lrh/v;->S(Ljava/util/function/Function;Ljava/lang/String;)Lrh/p;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    goto :goto_5

    .line 882
    :pswitch_17
    new-instance v0, Lrh/k;

    .line 883
    .line 884
    invoke-virtual {p0}, Lrh/v;->A()I

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    invoke-direct {v0, v1, v9}, Lrh/k;-><init>(II)V

    .line 889
    .line 890
    .line 891
    goto :goto_5

    .line 892
    :pswitch_18
    new-instance v0, Lrh/k;

    .line 893
    .line 894
    invoke-virtual {p0}, Lrh/v;->A()I

    .line 895
    .line 896
    .line 897
    move-result v1

    .line 898
    invoke-direct {v0, v1, v10}, Lrh/k;-><init>(II)V

    .line 899
    .line 900
    .line 901
    goto :goto_5

    .line 902
    :pswitch_19
    invoke-virtual {p0, v9}, Lrh/v;->L(Z)Lrh/p;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    goto :goto_5

    .line 907
    :pswitch_1a
    invoke-virtual {p0, v10}, Lrh/v;->K(Z)Lrh/p;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    goto :goto_5

    .line 912
    :pswitch_1b
    invoke-virtual {p0, v9, v9}, Lrh/v;->M(ZZ)Lrh/n;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    goto :goto_5

    .line 917
    :pswitch_1c
    invoke-virtual {p0, v10, v9}, Lrh/v;->M(ZZ)Lrh/n;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    goto :goto_5

    .line 922
    :pswitch_1d
    new-instance v0, Lrh/g;

    .line 923
    .line 924
    invoke-direct {v0, v6}, Lrh/g;-><init>(I)V

    .line 925
    .line 926
    .line 927
    goto :goto_5

    .line 928
    :pswitch_1e
    invoke-virtual {p0, v9, v10}, Lrh/v;->M(ZZ)Lrh/n;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    goto :goto_5

    .line 933
    :pswitch_1f
    invoke-virtual {p0, v10, v10}, Lrh/v;->M(ZZ)Lrh/n;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    goto :goto_5

    .line 938
    :pswitch_20
    invoke-virtual {p0, v10}, Lrh/v;->P(Z)Lrh/p;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    goto :goto_5

    .line 943
    :pswitch_21
    new-instance v0, Lrh/g;

    .line 944
    .line 945
    invoke-direct {v0, v8}, Lrh/g;-><init>(I)V

    .line 946
    .line 947
    .line 948
    goto :goto_5

    .line 949
    :pswitch_22
    invoke-virtual {p0}, Lrh/v;->J()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-static {v0}, Lqh/s0;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    const-string v1, ":containsData(text) query must not be empty"

    .line 958
    .line 959
    invoke-static {v0, v1}, Lnh/b;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    new-instance v1, Lrh/h;

    .line 963
    .line 964
    invoke-direct {v1, v0, v7}, Lrh/h;-><init>(Ljava/lang/String;I)V

    .line 965
    .line 966
    .line 967
    goto :goto_4

    .line 968
    :goto_5
    return-object v0

    .line 969
    :cond_28
    const/4 v0, 0x0

    .line 970
    return-object v0

    .line 971
    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x33ae02 -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5a2068d -> :sswitch_2
        0x38a5ee5f -> :sswitch_1
        0x5d2b6e60 -> :sswitch_0
    .end sparse-switch

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    :sswitch_data_1
    .sparse-switch
        -0x7fa84d97 -> :sswitch_22
        -0x7f5fe841 -> :sswitch_21
        -0x73a0d86f -> :sswitch_20
        -0x6899dd0f -> :sswitch_1f
        -0x6123fd90 -> :sswitch_1e
        -0x38814845 -> :sswitch_1d
        -0x357f41fb -> :sswitch_1c
        -0x3403463c -> :sswitch_1b
        -0x21d289e1 -> :sswitch_1a
        -0x34d8c25 -> :sswitch_19
        0xcac -> :sswitch_18
        0xced -> :sswitch_17
        0xd2a -> :sswitch_16
        0xd88 -> :sswitch_15
        0x1929a -> :sswitch_14
        0x1aad3 -> :sswitch_13
        0x3580e2 -> :sswitch_12
        0x5979154 -> :sswitch_11
        0x5c2854d -> :sswitch_10
        0xc6618e7 -> :sswitch_f
        0x24992892 -> :sswitch_e
        0x31d1d325 -> :sswitch_d
        0x321e8933 -> :sswitch_c
        0x4adb88ef -> :sswitch_b
        0x4d10b753 -> :sswitch_a
        0x56c7484f -> :sswitch_9
        0x6f813d53 -> :sswitch_8
        0x780e0425 -> :sswitch_7
        0x78c13139 -> :sswitch_6
    .end sparse-switch

    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrh/v;->a:Lqh/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqh/s0;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrh/v;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
