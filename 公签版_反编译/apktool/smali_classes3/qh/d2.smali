.class public final enum Lqh/d2;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "SelfClosingStartTag"

    .line 2
    .line 3
    const/16 v1, 0x29

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
    .locals 3

    .line 1
    invoke-virtual {p2}, Lqh/b;->K()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lqh/k3;->a:Lqh/e1;

    .line 6
    .line 7
    const/16 v2, 0x3e

    .line 8
    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const v2, 0xffff

    .line 12
    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lqh/b;->d0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lqh/k3;->K:Lqh/u1;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, p0}, Lqh/t0;->l(Lqh/k3;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lqh/t0;->o(Lqh/k3;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p1, Lqh/t0;->j:Lqh/p0;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p2, Lqh/p0;->f:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Lqh/t0;->k()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lqh/t0;->o(Lqh/k3;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
