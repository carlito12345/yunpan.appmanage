.class public final enum Lqh/z1;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeValue_singleQuoted"

    .line 2
    .line 3
    const/16 v1, 0x26

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lqh/k3;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lqh/t0;Lqh/b;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lqh/b;->a0()I

    .line 2
    .line 3
    .line 4
    new-instance v0, Lha/qa;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v2, v1}, Lha/qa;-><init>(IZ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lqh/b;->M(Lqh/a;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p1, Lqh/t0;->j:Lqh/p0;

    .line 22
    .line 23
    iget-object v2, v2, Lqh/p0;->i:Lkf/d;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lkf/d;->n(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p1, Lqh/t0;->j:Lqh/p0;

    .line 30
    .line 31
    iput-boolean v1, v0, Lqh/p0;->j:Z

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p2}, Lqh/b;->a0()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p2}, Lqh/b;->K()C

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    const v3, 0xffff

    .line 44
    .line 45
    .line 46
    if-eq v2, v3, :cond_4

    .line 47
    .line 48
    const/16 v3, 0x27

    .line 49
    .line 50
    const/16 v4, 0x26

    .line 51
    .line 52
    if-eq v2, v4, :cond_2

    .line 53
    .line 54
    if-eq v2, v3, :cond_1

    .line 55
    .line 56
    iget-object p1, p1, Lqh/t0;->j:Lqh/p0;

    .line 57
    .line 58
    invoke-virtual {p2}, Lqh/b;->a0()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {p1, v2, v0, p2}, Lqh/p0;->h(CII)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object p2, Lqh/k3;->S:Lqh/c2;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v2, v1}, Lqh/t0;->c(Ljava/lang/Character;Z)[I

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    iget-object p1, p1, Lqh/t0;->j:Lqh/p0;

    .line 83
    .line 84
    invoke-virtual {p2}, Lqh/b;->a0()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {p1, v0, p2, v1}, Lqh/p0;->i(II[I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-object p1, p1, Lqh/t0;->j:Lqh/p0;

    .line 93
    .line 94
    invoke-virtual {p2}, Lqh/b;->a0()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {p1, v4, v0, p2}, Lqh/p0;->h(CII)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {p1, p0}, Lqh/t0;->l(Lqh/k3;)V

    .line 103
    .line 104
    .line 105
    sget-object p2, Lqh/k3;->a:Lqh/e1;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p1, Lqh/t0;->j:Lqh/p0;

    .line 115
    .line 116
    const v1, 0xfffd

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lqh/b;->a0()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-virtual {p1, v1, v0, p2}, Lqh/p0;->h(CII)V

    .line 124
    .line 125
    .line 126
    :goto_1
    return-void
.end method
