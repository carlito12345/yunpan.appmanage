.class public final enum Lqh/d;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InTableText"

    .line 2
    .line 3
    const/16 v1, 0x9

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
    .locals 7

    .line 1
    iget v0, p1, Lqh/r0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    check-cast p1, Lqh/j0;

    .line 9
    .line 10
    iget-object v0, p1, Lqh/j0;->d:Lkf/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lqh/c0;->A:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    return v3

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lqh/j0;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lqh/j0;-><init>(Lqh/j0;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p2, Lqh/c;->s:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    iget-object v0, p2, Lqh/c;->s:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_5

    .line 49
    .line 50
    iget-object v0, p2, Lqh/c;->g:Lqh/r0;

    .line 51
    .line 52
    iget-object v1, p2, Lqh/c;->s:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lqh/j0;

    .line 69
    .line 70
    iput-object v4, p2, Lqh/c;->g:Lqh/r0;

    .line 71
    .line 72
    invoke-static {v4}, Lqh/c0;->a(Lqh/r0;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lqh/c;->h()Lph/l;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v5, v5, Lph/l;->d:Lqh/f0;

    .line 86
    .line 87
    iget-object v5, v5, Lqh/f0;->c:Ljava/lang/String;

    .line 88
    .line 89
    sget-object v6, Lqh/b0;->z:[Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v5, v6}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    sget-object v6, Lqh/c0;->g:Lqh/y;

    .line 96
    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    iput-boolean v2, p2, Lqh/c;->v:Z

    .line 100
    .line 101
    invoke-virtual {v6, v4, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 102
    .line 103
    .line 104
    iput-boolean v3, p2, Lqh/c;->v:Z

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v6, v4, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p2, v4}, Lqh/c;->t(Lqh/j0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    iput-object v0, p2, Lqh/c;->g:Lqh/r0;

    .line 116
    .line 117
    iget-object v0, p2, Lqh/c;->s:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object v0, p2, Lqh/c;->m:Lqh/c0;

    .line 123
    .line 124
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    return p1
.end method
