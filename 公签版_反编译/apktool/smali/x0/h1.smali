.class public final Lx0/h1;
.super Lne/d;
.source "SourceFile"

# interfaces
.implements Lte/p;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lle/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/h1;->d:Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lne/d;-><init>(Lle/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lle/a;)Lle/a;
    .locals 2

    .line 1
    new-instance v0, Lx0/h1;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/h1;->d:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lx0/h1;-><init>(Landroid/view/View;Lle/a;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lx0/h1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lme/a;->a:Lme/a;

    .line 2
    .line 3
    iget v1, p0, Lx0/h1;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lx0/h1;->d:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    sget-object v4, Lie/e;->c:Lie/e;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-ne v1, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ls1/g;->f0(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Lx0/h1;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Laf/a;

    .line 32
    .line 33
    invoke-static {p1}, Ls1/g;->f0(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    instance-of p1, v2, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    check-cast v2, Landroid/view/ViewGroup;

    .line 41
    .line 42
    new-instance p1, Lx0/g1;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {p1, v2, v3}, Lx0/g1;-><init>(Landroid/view/ViewGroup;Lle/a;)V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Lx0/h1;->c:Ljava/lang/Object;

    .line 49
    .line 50
    iput v5, p0, Lx0/h1;->b:I

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v2, Laf/a;

    .line 56
    .line 57
    invoke-direct {v2}, Laf/a;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2, v2}, Lne/d;->b(Ljava/lang/Object;Lle/a;)Lle/a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, v2, Laf/a;->d:Lle/a;

    .line 65
    .line 66
    invoke-virtual {v2}, Laf/a;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    move-object p1, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iput-object v2, v1, Laf/a;->c:Ljava/util/Iterator;

    .line 75
    .line 76
    iput v5, v1, Laf/a;->a:I

    .line 77
    .line 78
    iput-object p0, v1, Laf/a;->d:Lle/a;

    .line 79
    .line 80
    move-object p1, v0

    .line 81
    :goto_0
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object p1, v4

    .line 85
    :goto_1
    if-ne p1, v0, :cond_4

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_4
    :goto_2
    return-object v4

    .line 89
    :cond_5
    invoke-static {p1}, Ls1/g;->f0(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lx0/h1;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Laf/a;

    .line 95
    .line 96
    iput-object p1, p0, Lx0/h1;->c:Ljava/lang/Object;

    .line 97
    .line 98
    iput v3, p0, Lx0/h1;->b:I

    .line 99
    .line 100
    iput-object v2, p1, Laf/a;->b:Ljava/lang/Object;

    .line 101
    .line 102
    const/4 v1, 0x3

    .line 103
    iput v1, p1, Laf/a;->a:I

    .line 104
    .line 105
    iput-object p0, p1, Laf/a;->d:Lle/a;

    .line 106
    .line 107
    return-object v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Laf/a;

    .line 2
    .line 3
    check-cast p2, Lle/a;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lx0/h1;->b(Ljava/lang/Object;Lle/a;)Lle/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lx0/h1;

    .line 10
    .line 11
    sget-object p2, Lie/e;->c:Lie/e;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lx0/h1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
