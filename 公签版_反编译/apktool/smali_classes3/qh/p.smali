.class public final enum Lqh/p;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AfterFrameset"

    .line 2
    .line 3
    const/16 v1, 0x14

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
    .locals 3

    .line 1
    invoke-static {p1}, Lqh/c0;->a(Lqh/r0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lqh/j0;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lqh/c;->t(Lqh/j0;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lqh/r0;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lqh/k0;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lqh/c;->v(Lqh/k0;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lqh/r0;->c()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const-string v2, "html"

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    check-cast v0, Lqh/o0;

    .line 47
    .line 48
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget-object v0, Lqh/c0;->g:Lqh/y;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_3
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    move-object v0, p1

    .line 75
    check-cast v0, Lqh/n0;

    .line 76
    .line 77
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    sget-object p1, Lqh/c0;->y:Lqh/r;

    .line 88
    .line 89
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, Lqh/o0;

    .line 100
    .line 101
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v2, "noframes"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    sget-object v0, Lqh/c0;->d:Lqh/v;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    return p1

    .line 123
    :cond_5
    invoke-virtual {p1}, Lqh/r0;->d()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    :goto_0
    const/4 p1, 0x1

    .line 130
    return p1

    .line 131
    :cond_6
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 132
    .line 133
    .line 134
    return v1
.end method
