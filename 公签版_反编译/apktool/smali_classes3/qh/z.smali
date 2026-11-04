.class public final enum Lqh/z;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Text"

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lqh/r0;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lqh/j0;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lqh/c;->t(Lqh/j0;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lqh/r0;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 23
    .line 24
    .line 25
    iget-object v0, p2, Lqh/c;->m:Lqh/c0;

    .line 26
    .line 27
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 28
    .line 29
    sget-object v1, Lqh/c0;->h:Lqh/z;

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    sget-object v0, Lqh/c0;->g:Lqh/y;

    .line 34
    .line 35
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_2
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 49
    .line 50
    .line 51
    iget-object p1, p2, Lqh/c;->m:Lqh/c0;

    .line 52
    .line 53
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 54
    .line 55
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 56
    return p1
.end method
