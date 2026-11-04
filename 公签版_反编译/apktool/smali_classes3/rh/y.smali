.class public final Lrh/y;
.super Lrh/c0;
.source "SourceFile"


# static fields
.field public static final e:Lkf/d;


# instance fields
.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkf/d;

    .line 2
    .line 3
    new-instance v1, Lah/a;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lah/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lkf/d;-><init>(Ljava/util/function/Supplier;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lrh/y;->e:Lkf/d;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lrh/p;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lrh/c0;-><init>(Lrh/p;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lrh/d;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Lrh/d;

    .line 9
    .line 10
    iget-object p1, p1, Lrh/d;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lrh/p;

    .line 27
    .line 28
    instance-of v1, v0, Lrh/b0;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    instance-of v0, v0, Lrh/a0;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    :goto_0
    iput-boolean p1, p0, Lrh/y;->d:Z

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lrh/c0;->a:Lrh/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrh/p;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0xa

    .line 8
    .line 9
    return v0
.end method

.method public final b(Lph/l;Lph/l;)Z
    .locals 5

    .line 1
    iget-boolean p1, p0, Lrh/y;->d:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lrh/c0;->a:Lrh/p;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lph/l;->I()Lph/l;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, p2

    .line 18
    :goto_0
    if-eqz p1, :cond_2

    .line 19
    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, p2, p1}, Lrh/p;->b(Lph/l;Lph/l;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lph/q;->m()Lph/l;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object p1, Lrh/y;->e:Lkf/d;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkf/d;->o()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lph/r;

    .line 41
    .line 42
    iget-object v3, v2, Lph/r;->f:Ljava/lang/Class;

    .line 43
    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    iput-object p2, v2, Lph/r;->b:Lph/q;

    .line 51
    .line 52
    :cond_3
    iput-object p2, v2, Lph/r;->c:Lph/q;

    .line 53
    .line 54
    iput-object p2, v2, Lph/r;->d:Lph/q;

    .line 55
    .line 56
    iput-object p2, v2, Lph/r;->a:Lph/q;

    .line 57
    .line 58
    invoke-virtual {p2}, Lph/l;->u()Lph/l;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, v2, Lph/r;->e:Lph/q;

    .line 63
    .line 64
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lph/r;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_7

    .line 69
    .line 70
    invoke-virtual {v2}, Lph/r;->a()V

    .line 71
    .line 72
    .line 73
    iget-object v3, v2, Lph/r;->b:Lph/q;

    .line 74
    .line 75
    if-eqz v3, :cond_6

    .line 76
    .line 77
    iget-object v4, v2, Lph/r;->c:Lph/q;

    .line 78
    .line 79
    iput-object v4, v2, Lph/r;->d:Lph/q;

    .line 80
    .line 81
    iput-object v3, v2, Lph/r;->c:Lph/q;

    .line 82
    .line 83
    invoke-virtual {v3}, Lph/q;->u()Lph/l;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iput-object v4, v2, Lph/r;->e:Lph/q;

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    iput-object v4, v2, Lph/r;->b:Lph/q;

    .line 91
    .line 92
    if-ne v3, p2, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {v1, p2, v3}, Lrh/p;->d(Lph/l;Lph/q;)Z

    .line 96
    .line 97
    .line 98
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Lkf/d;->N(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return v0

    .line 105
    :catchall_0
    move-exception p2

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    :try_start_1
    new-instance p2, Ljava/util/NoSuchElementException;

    .line 108
    .line 109
    invoke-direct {p2}, Ljava/util/NoSuchElementException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_7
    invoke-virtual {p1, v2}, Lkf/d;->N(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    return p1

    .line 118
    :goto_2
    invoke-virtual {p1, v2}, Lkf/d;->N(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :goto_3
    throw p2

    .line 123
    :goto_4
    goto :goto_3
.end method

.method public final g(Lph/l;Lph/q;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lrh/c0;->a:Lrh/p;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v0, v1, v2

    .line 8
    .line 9
    const-string v0, ":has(%s)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
