.class public final enum Lqh/g2;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "MarkupProcessingOpen"

    .line 2
    .line 3
    const/16 v1, 0x2c

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Lqh/b;->X()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p1, Lqh/t0;->n:Lqh/q0;

    .line 8
    .line 9
    invoke-virtual {p2}, Lqh/q0;->p()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p2, Lqh/q0;->k:Z

    .line 14
    .line 15
    iput-object p2, p1, Lqh/t0;->j:Lqh/p0;

    .line 16
    .line 17
    sget-object p2, Lqh/k3;->j:Lqh/u0;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1, p0}, Lqh/t0;->m(Lqh/k3;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, Lqh/t0;->m:Lqh/k0;

    .line 27
    .line 28
    invoke-virtual {p2}, Lqh/k0;->g()V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x3f

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lqh/k0;->h(C)V

    .line 34
    .line 35
    .line 36
    sget-object p2, Lqh/k3;->V:Lqh/e2;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
