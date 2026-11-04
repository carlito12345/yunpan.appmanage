.class public final enum Lqh/m2;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CommentEnd"

    .line 2
    .line 3
    const/16 v1, 0x31

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Lqh/b;->K()C

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    sget-object v0, Lqh/k3;->t0:Lqh/j2;

    .line 6
    .line 7
    const-string v1, "--"

    .line 8
    .line 9
    if-eqz p2, :cond_4

    .line 10
    .line 11
    const/16 v2, 0x21

    .line 12
    .line 13
    if-eq p2, v2, :cond_3

    .line 14
    .line 15
    const/16 v2, 0x2d

    .line 16
    .line 17
    if-eq p2, v2, :cond_2

    .line 18
    .line 19
    sget-object v2, Lqh/k3;->a:Lqh/e1;

    .line 20
    .line 21
    const/16 v3, 0x3e

    .line 22
    .line 23
    if-eq p2, v3, :cond_1

    .line 24
    .line 25
    const v3, 0xffff

    .line 26
    .line 27
    .line 28
    if-eq p2, v3, :cond_0

    .line 29
    .line 30
    iget-object v2, p1, Lqh/t0;->m:Lqh/k0;

    .line 31
    .line 32
    iget-object v3, v2, Lqh/k0;->d:Lkf/d;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lkf/d;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p2}, Lqh/k0;->h(C)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lqh/t0;->o(Lqh/k3;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, p0}, Lqh/t0;->l(Lqh/k3;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lqh/t0;->i()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lqh/t0;->o(Lqh/k3;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Lqh/t0;->i()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lqh/t0;->o(Lqh/k3;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p1, Lqh/t0;->m:Lqh/k0;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lqh/k0;->h(C)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sget-object p2, Lqh/k3;->O0:Lqh/n2;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p1, Lqh/t0;->m:Lqh/k0;

    .line 77
    .line 78
    iget-object v2, p2, Lqh/k0;->d:Lkf/d;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lkf/d;->n(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const v1, 0xfffd

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v1}, Lqh/k0;->h(C)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lqh/t0;->o(Lqh/k3;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method
