.class public abstract Lu4/s;
.super Lu4/n;
.source "SourceFile"


# instance fields
.field public final c:Lx4/p;


# direct methods
.method public constructor <init>(Lx4/p;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lx4/p;->a:Lx4/u;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lu4/n;-><init>(Lx4/u;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lu4/s;->c:Lx4/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    return v0
.end method

.method public final d(Lu4/f;Lb5/b;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p1, Lu4/f;->f:Lu4/z;

    .line 4
    .line 5
    iget-object v3, p0, Lu4/s;->c:Lx4/p;

    .line 6
    .line 7
    iget-object v4, v3, Lx4/p;->b:Lx4/r;

    .line 8
    .line 9
    iget-object v5, p0, Lu4/n;->b:Lx4/u;

    .line 10
    .line 11
    invoke-virtual {v2, v5}, Lu4/z;->m(Lx4/u;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v4, v4, Lx4/r;->a:Lx4/t;

    .line 16
    .line 17
    iget-object v5, p1, Lu4/f;->e:Lu4/z;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Lu4/z;->l(Lx4/t;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0, p1}, Lu4/s;->h(Lu4/f;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lu4/o;->f()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v6, 0x20

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lx4/p;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p2, v1, v3}, Lb5/b;->b(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v5, "  class_idx: "

    .line 69
    .line 70
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p2, v0, v3}, Lb5/b;->b(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lu4/s;->i()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v5, ":"

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {p1}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-array v6, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v3, v6, v1

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    aput-object v5, v6, v1

    .line 97
    .line 98
    const-string v1, "  %-10s %s"

    .line 99
    .line 100
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p2, v0, v1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v4}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "  name_idx:  "

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, 0x4

    .line 118
    invoke-virtual {p2, v1, v0}, Lb5/b;->b(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_0
    invoke-virtual {p2, v2}, Lb5/b;->k(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Lb5/b;->k(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v4}, Lb5/b;->j(I)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public abstract h(Lu4/f;)I
.end method

.method public abstract i()Ljava/lang/String;
.end method
