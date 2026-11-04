.class public final enum Lqh/j2;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Comment"

    .line 2
    .line 3
    const/16 v1, 0x2f

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
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2}, Lqh/b;->Q()C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_6

    .line 7
    .line 8
    const/16 v2, 0x2d

    .line 9
    .line 10
    if-eq v1, v2, :cond_5

    .line 11
    .line 12
    const v2, 0xffff

    .line 13
    .line 14
    .line 15
    if-eq v1, v2, :cond_4

    .line 16
    .line 17
    iget-object p1, p1, Lqh/t0;->m:Lqh/k0;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v2, v0, [C

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lqh/b;->A()V

    .line 26
    .line 27
    .line 28
    iget v3, p2, Lqh/b;->d:I

    .line 29
    .line 30
    iget v4, p2, Lqh/b;->e:I

    .line 31
    .line 32
    iget-object v5, p2, Lqh/b;->c:[C

    .line 33
    .line 34
    move v6, v3

    .line 35
    :goto_0
    if-ge v6, v4, :cond_2

    .line 36
    .line 37
    aget-char v7, v5, v6

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    :goto_1
    if-ge v8, v0, :cond_1

    .line 41
    .line 42
    aget-char v9, v2, v8

    .line 43
    .line 44
    if-ne v7, v9, :cond_0

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_2
    iput v6, p2, Lqh/b;->d:I

    .line 54
    .line 55
    if-le v6, v3, :cond_3

    .line 56
    .line 57
    iget-object v0, p2, Lqh/b;->c:[C

    .line 58
    .line 59
    iget-object p2, p2, Lqh/b;->a:[Ljava/lang/String;

    .line 60
    .line 61
    sub-int/2addr v6, v3

    .line 62
    invoke-static {v0, p2, v3, v6}, Lqh/b;->J([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const-string p2, ""

    .line 68
    .line 69
    :goto_3
    iget-object p1, p1, Lqh/k0;->d:Lkf/d;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lkf/d;->n(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    invoke-virtual {p1, p0}, Lqh/t0;->l(Lqh/k3;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lqh/t0;->i()V

    .line 79
    .line 80
    .line 81
    sget-object p2, Lqh/k3;->a:Lqh/e1;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    sget-object p2, Lqh/k3;->M0:Lqh/k2;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lqh/t0;->a(Lqh/k3;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lqh/b;->r()V

    .line 97
    .line 98
    .line 99
    iget-object p1, p1, Lqh/t0;->m:Lqh/k0;

    .line 100
    .line 101
    const p2, 0xfffd

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lqh/k0;->h(C)V

    .line 105
    .line 106
    .line 107
    :goto_4
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 2
        0x2ds
        0x0s
    .end array-data
.end method
