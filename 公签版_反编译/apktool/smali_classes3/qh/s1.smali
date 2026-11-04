.class public final enum Lqh/s1;
.super Lqh/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ScriptDataDoubleEscapedLessthanSign"

    .line 2
    .line 3
    const/16 v1, 0x1f

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
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lqh/b;->V(C)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lqh/t0;->f(C)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lqh/t0;->e()V

    .line 13
    .line 14
    .line 15
    sget-object p2, Lqh/k3;->I:Lqh/t1;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lqh/t0;->a(Lqh/k3;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p2, Lqh/k3;->E:Lqh/o1;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lqh/t0;->o(Lqh/k3;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
