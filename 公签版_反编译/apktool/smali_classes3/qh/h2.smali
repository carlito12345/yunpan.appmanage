.class public final enum Lqh/h2;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CommentStart"

    .line 2
    .line 3
    const/16 v1, 0x2d

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
    move-result v0

    .line 5
    sget-object v1, Lqh/k3;->t0:Lqh/j2;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/16 v2, 0x2d

    .line 10
    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    sget-object v2, Lqh/k3;->a:Lqh/e1;

    .line 14
    .line 15
    const/16 v3, 0x3e

    .line 16
    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const v3, 0xffff

    .line 20
    .line 21
    .line 22
    if-eq v0, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lqh/b;->d0()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lqh/t0;->o(Lqh/k3;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1, p0}, Lqh/t0;->l(Lqh/k3;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lqh/t0;->i()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lqh/t0;->o(Lqh/k3;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lqh/t0;->i()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lqh/t0;->o(Lqh/k3;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    sget-object p2, Lqh/k3;->h0:Lqh/i2;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p1, Lqh/t0;->m:Lqh/k0;

    .line 61
    .line 62
    const v0, 0xfffd

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Lqh/k0;->h(C)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lqh/t0;->o(Lqh/k3;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method
