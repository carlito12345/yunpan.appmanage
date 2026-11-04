.class public final Lph/h;
.super Lph/l;
.source "SourceFile"


# instance fields
.field public j:Lph/g;

.field public k:Lqh/e0;

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    new-instance v0, Lqh/e0;

    new-instance v1, Lqh/c;

    invoke-direct {v1}, Lqh/c;-><init>()V

    invoke-direct {v0, v1}, Lqh/e0;-><init>(Lqh/c;)V

    .line 9
    const-string v1, "http://www.w3.org/1999/xhtml"

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lph/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lqh/e0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lqh/e0;)V
    .locals 3

    .line 1
    new-instance v0, Lqh/f0;

    .line 2
    const-string v1, "#root"

    invoke-static {v1}, Loh/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {v0, v1, v2, p1}, Lqh/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p2, p1}, Lph/l;-><init>(Lqh/f0;Ljava/lang/String;Lph/c;)V

    .line 5
    new-instance p1, Lph/g;

    invoke-direct {p1}, Lph/g;-><init>()V

    iput-object p1, p0, Lph/h;->j:Lph/g;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lph/h;->l:I

    .line 7
    iput-object p3, p0, Lph/h;->k:Lqh/e0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic E()Lph/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lph/h;->N()Lph/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final N()Lph/h;
    .locals 2

    .line 1
    invoke-super {p0}, Lph/l;->E()Lph/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lph/h;

    .line 6
    .line 7
    iget-object v1, p0, Lph/l;->f:Lph/c;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lph/c;->c()Lph/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lph/l;->f:Lph/c;

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lph/h;->j:Lph/g;

    .line 18
    .line 19
    invoke-virtual {v1}, Lph/g;->a()Lph/g;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lph/h;->j:Lph/g;

    .line 24
    .line 25
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lph/h;->N()Lph/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic f()Lph/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lph/h;->N()Lph/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "#document"

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lph/q;->i()Lph/q;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    if-eqz v7, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Loh/a;->e(Ljava/lang/StringBuilder;)Loh/a;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v7}, Lph/q;->t()Lph/h;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    :goto_0
    iget-object v1, v1, Lph/h;->j:Lph/g;

    .line 22
    .line 23
    move-object v5, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lph/h;

    .line 26
    .line 27
    invoke-direct {v1}, Lph/h;-><init>()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-boolean v1, v5, Lph/g;->c:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    new-instance v1, Lph/s;

    .line 39
    .line 40
    invoke-direct {v1, v7, v4, v5}, Lph/s;-><init>(Lph/q;Loh/a;Lph/g;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance v8, Lv3/f;

    .line 45
    .line 46
    const/16 v2, 0x19

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v1, v8

    .line 50
    move-object v3, v7

    .line 51
    invoke-direct/range {v1 .. v6}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 52
    .line 53
    .line 54
    :goto_2
    if-eqz v7, :cond_2

    .line 55
    .line 56
    invoke-static {v1, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->a(Lrh/u;Lph/q;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lph/q;->n()Lph/q;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-static {v0}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lph/q;->t()Lph/h;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    :goto_3
    iget-object v1, v1, Lph/h;->j:Lph/g;

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    new-instance v1, Lph/h;

    .line 78
    .line 79
    invoke-direct {v1}, Lph/h;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_4
    iget-boolean v1, v1, Lph/g;->c:Z

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_4
    return-object v0
.end method
