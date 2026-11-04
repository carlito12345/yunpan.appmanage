.class public final enum Lqh/e2;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BogusComment"

    .line 2
    .line 3
    const/16 v1, 0x2a

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
    iget-object v0, p1, Lqh/t0;->m:Lqh/k0;

    .line 2
    .line 3
    const/16 v1, 0x3e

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lqh/b;->N(C)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, v0, Lqh/k0;->d:Lkf/d;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lkf/d;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lqh/b;->Q()C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const v1, 0xffff

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Lqh/b;->K()C

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lqh/t0;->i()V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lqh/k3;->a:Lqh/e1;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
