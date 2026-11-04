.class public final enum Lqh/k;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InSelectInTable"

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lqh/b0;->F:[Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "select"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lqh/o0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0, v1}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2}, Lqh/c;->F(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lqh/c;->P()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move-object v0, p1

    .line 45
    check-cast v0, Lqh/n0;

    .line 46
    .line 47
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3, v1}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p2, v2}, Lqh/c;->F(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lqh/c;->P()Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1

    .line 81
    :cond_1
    const/4 p1, 0x0

    .line 82
    return p1

    .line 83
    :cond_2
    sget-object v0, Lqh/c0;->q:Lqh/j;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, p2}, Lqh/j;->d(Lqh/r0;Lqh/c;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1
.end method
