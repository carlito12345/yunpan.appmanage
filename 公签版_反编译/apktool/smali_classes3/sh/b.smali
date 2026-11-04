.class public final enum Lsh/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lwh/k;
.implements Lwh/l;


# static fields
.field public static final enum a:Lsh/b;

.field public static final enum b:Lsh/b;

.field public static final c:[Lsh/b;

.field public static final synthetic d:[Lsh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lsh/b;

    .line 2
    .line 3
    const-string v1, "MONDAY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lsh/b;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lsh/b;

    .line 10
    .line 11
    const-string v3, "TUESDAY"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Lsh/b;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lsh/b;

    .line 18
    .line 19
    const-string v5, "WEDNESDAY"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Lsh/b;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lsh/b;->a:Lsh/b;

    .line 26
    .line 27
    new-instance v5, Lsh/b;

    .line 28
    .line 29
    const-string v7, "THURSDAY"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Lsh/b;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v5, Lsh/b;->b:Lsh/b;

    .line 36
    .line 37
    new-instance v7, Lsh/b;

    .line 38
    .line 39
    const-string v9, "FRIDAY"

    .line 40
    .line 41
    const/4 v10, 0x4

    .line 42
    invoke-direct {v7, v9, v10}, Lsh/b;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance v9, Lsh/b;

    .line 46
    .line 47
    const-string v11, "SATURDAY"

    .line 48
    .line 49
    const/4 v12, 0x5

    .line 50
    invoke-direct {v9, v11, v12}, Lsh/b;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    new-instance v11, Lsh/b;

    .line 54
    .line 55
    const-string v13, "SUNDAY"

    .line 56
    .line 57
    const/4 v14, 0x6

    .line 58
    invoke-direct {v11, v13, v14}, Lsh/b;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const/4 v13, 0x7

    .line 62
    new-array v13, v13, [Lsh/b;

    .line 63
    .line 64
    aput-object v0, v13, v2

    .line 65
    .line 66
    aput-object v1, v13, v4

    .line 67
    .line 68
    aput-object v3, v13, v6

    .line 69
    .line 70
    aput-object v5, v13, v8

    .line 71
    .line 72
    aput-object v7, v13, v10

    .line 73
    .line 74
    aput-object v9, v13, v12

    .line 75
    .line 76
    aput-object v11, v13, v14

    .line 77
    .line 78
    sput-object v13, Lsh/b;->d:[Lsh/b;

    .line 79
    .line 80
    invoke-static {}, Lsh/b;->values()[Lsh/b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lsh/b;->c:[Lsh/b;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static n(I)Lsh/b;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    if-gt p0, v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lsh/b;->c:[Lsh/b;

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    aget-object p0, v1, p0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lsh/a;

    .line 14
    .line 15
    const-string v1, "Invalid value for DayOfWeek: "

    .line 16
    .line 17
    invoke-static {p0, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsh/b;
    .locals 1

    .line 1
    const-class v0, Lsh/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lsh/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lsh/b;
    .locals 1

    .line 1
    sget-object v0, Lsh/b;->d:[Lsh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lsh/b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lsh/b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final b(Lwh/m;)J
    .locals 2

    .line 1
    sget-object v0, Lwh/a;->r:Lwh/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lsh/b;->m()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0

    .line 11
    :cond_0
    instance-of v0, p1, Lwh/a;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_1
    new-instance v0, Lwh/q;

    .line 21
    .line 22
    const-string v1, "Unsupported field: "

    .line 23
    .line 24
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lwh/b;->c:Lwh/b;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 9
    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 13
    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 17
    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 25
    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p1, p0}, Lwh/o;->b(Lwh/k;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public final d(Lwh/m;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lwh/a;->r:Lwh/a;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_2
    return v1
.end method

.method public final f(Lwh/m;)Lwh/r;
    .locals 2

    .line 1
    sget-object v0, Lwh/a;->r:Lwh/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lwh/m;->d()Lwh/r;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    instance-of v0, p1, Lwh/a;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lwh/m;->c(Lwh/k;)Lwh/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    new-instance v0, Lwh/q;

    .line 20
    .line 21
    const-string v1, "Unsupported field: "

    .line 22
    .line 23
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final g(Lwh/j;)Lwh/j;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->r:Lwh/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lsh/b;->m()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final i(Lwh/m;)I
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->r:Lwh/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lsh/b;->m()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lsh/b;->f(Lwh/m;)Lwh/r;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p1}, Lsh/b;->b(Lwh/m;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Lwh/r;->a(JLwh/m;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final m()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method
