.class public final enum Lqh/j3;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "EndTagOpen"

    .line 2
    .line 3
    const/16 v1, 0x8

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Lqh/b;->R()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lqh/k3;->a:Lqh/e1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lqh/t0;->l(Lqh/k3;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "</"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lqh/t0;->g(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lqh/t0;->o(Lqh/k3;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lqh/b;->X()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Lqh/t0;->d(Z)Lqh/p0;

    .line 29
    .line 30
    .line 31
    sget-object p2, Lqh/k3;->j:Lqh/u0;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v0, 0x3e

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Lqh/b;->V(C)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lqh/t0;->a(Lqh/k3;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p1, Lqh/t0;->m:Lqh/k0;

    .line 56
    .line 57
    invoke-virtual {p2}, Lqh/k0;->g()V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x2f

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lqh/k0;->h(C)V

    .line 63
    .line 64
    .line 65
    sget-object p2, Lqh/k3;->V:Lqh/e2;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method
