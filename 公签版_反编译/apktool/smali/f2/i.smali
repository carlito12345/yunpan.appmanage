.class public final Lf2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/i0;
.implements Lb2/e;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lb2/d;

.field public c:Lb2/d;

.field public final synthetic d:Lf2/k;


# direct methods
.method public constructor <init>(Lf2/k;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lf2/i;->d:Lf2/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb2/d;

    .line 7
    .line 8
    iget-object v1, p1, Lf2/a;->c:Lb2/d;

    .line 9
    .line 10
    iget-object v1, v1, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v1, v2, v3}, Lb2/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILf2/c0;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lf2/i;->b:Lb2/d;

    .line 18
    .line 19
    new-instance v0, Lb2/d;

    .line 20
    .line 21
    iget-object p1, p1, Lf2/a;->d:Lb2/d;

    .line 22
    .line 23
    iget-object p1, p1, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-direct {v0, p1, v2, v3}, Lb2/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILf2/c0;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lf2/i;->c:Lb2/d;

    .line 29
    .line 30
    iput-object p2, p0, Lf2/i;->a:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final G(ILf2/c0;Lf2/t;Lf2/y;I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lf2/i;->a(ILf2/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lf2/i;->b:Lb2/d;

    .line 8
    .line 9
    invoke-virtual {p0, p4, p2}, Lf2/i;->b(Lf2/y;Lf2/c0;)Lf2/y;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p2, Lf2/e0;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v0, p2

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p3

    .line 22
    move v4, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lf2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lb2/d;->a(Lu1/f;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final a(ILf2/c0;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lf2/i;->d:Lf2/k;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, v0, p2}, Lf2/k;->s(Ljava/lang/Object;Lf2/c0;)Lf2/c0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-virtual {v1, p1, v0}, Lf2/k;->u(ILjava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lf2/i;->b:Lb2/d;

    .line 21
    .line 22
    iget v2, v0, Lb2/d;->a:I

    .line 23
    .line 24
    if-ne v2, p1, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Lb2/d;->b:Lf2/c0;

    .line 27
    .line 28
    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    :cond_2
    new-instance v0, Lb2/d;

    .line 35
    .line 36
    iget-object v2, v1, Lf2/a;->c:Lb2/d;

    .line 37
    .line 38
    iget-object v2, v2, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    invoke-direct {v0, v2, p1, p2}, Lb2/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILf2/c0;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lf2/i;->b:Lb2/d;

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lf2/i;->c:Lb2/d;

    .line 46
    .line 47
    iget v2, v0, Lb2/d;->a:I

    .line 48
    .line 49
    if-ne v2, p1, :cond_4

    .line 50
    .line 51
    iget-object v0, v0, Lb2/d;->b:Lf2/c0;

    .line 52
    .line 53
    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    :cond_4
    new-instance v0, Lb2/d;

    .line 60
    .line 61
    iget-object v1, v1, Lf2/a;->d:Lb2/d;

    .line 62
    .line 63
    iget-object v1, v1, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    .line 65
    invoke-direct {v0, v1, p1, p2}, Lb2/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILf2/c0;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lf2/i;->c:Lb2/d;

    .line 69
    .line 70
    :cond_5
    const/4 p1, 0x1

    .line 71
    return p1
.end method

.method public final b(Lf2/y;Lf2/c0;)Lf2/y;
    .locals 10

    .line 1
    iget-object p2, p0, Lf2/i;->d:Lf2/k;

    .line 2
    .line 3
    iget-object v0, p0, Lf2/i;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v1, p1, Lf2/y;->c:J

    .line 6
    .line 7
    invoke-virtual {p2, v0, v1, v2}, Lf2/k;->t(Ljava/lang/Object;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v6

    .line 11
    iget-wide v3, p1, Lf2/y;->d:J

    .line 12
    .line 13
    invoke-virtual {p2, v0, v3, v4}, Lf2/k;->t(Ljava/lang/Object;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v8

    .line 17
    cmp-long p2, v6, v1

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    cmp-long p2, v8, v3

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance p2, Lf2/y;

    .line 27
    .line 28
    iget v4, p1, Lf2/y;->a:I

    .line 29
    .line 30
    iget-object v5, p1, Lf2/y;->b:Lr1/p;

    .line 31
    .line 32
    move-object v3, p2

    .line 33
    invoke-direct/range {v3 .. v9}, Lf2/y;-><init>(ILr1/p;JJ)V

    .line 34
    .line 35
    .line 36
    return-object p2
.end method

.method public final c(ILf2/c0;Lf2/t;Lf2/y;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lf2/i;->a(ILf2/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lf2/i;->b:Lb2/d;

    .line 8
    .line 9
    invoke-virtual {p0, p4, p2}, Lf2/i;->b(Lf2/y;Lf2/c0;)Lf2/y;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p2, Lf2/g0;

    .line 17
    .line 18
    move-object v0, p2

    .line 19
    move-object v1, p1

    .line 20
    move-object v2, p3

    .line 21
    move-object v4, p5

    .line 22
    move v5, p6

    .line 23
    invoke-direct/range {v0 .. v5}, Lf2/g0;-><init>(Lb2/d;Lf2/t;Lf2/y;Ljava/io/IOException;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lb2/d;->a(Lu1/f;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final l(ILf2/c0;Lf2/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lf2/i;->a(ILf2/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lf2/i;->b:Lb2/d;

    .line 8
    .line 9
    invoke-virtual {p0, p3, p2}, Lf2/i;->b(Lf2/y;Lf2/c0;)Lf2/y;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p3, Ld2/w;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p3, p1, v0, p2}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lb2/d;->a(Lu1/f;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final s(ILf2/c0;Lf2/t;Lf2/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lf2/i;->a(ILf2/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lf2/i;->b:Lb2/d;

    .line 8
    .line 9
    invoke-virtual {p0, p4, p2}, Lf2/i;->b(Lf2/y;Lf2/c0;)Lf2/y;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p4, Lf2/f0;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p4, p1, p3, p2, v0}, Lf2/f0;-><init>(Lb2/d;Lf2/t;Lf2/y;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p4}, Lb2/d;->a(Lu1/f;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final w(ILf2/c0;Lf2/t;Lf2/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lf2/i;->a(ILf2/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lf2/i;->b:Lb2/d;

    .line 8
    .line 9
    invoke-virtual {p0, p4, p2}, Lf2/i;->b(Lf2/y;Lf2/c0;)Lf2/y;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p4, Lf2/f0;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p4, p1, p3, p2, v0}, Lf2/f0;-><init>(Lb2/d;Lf2/t;Lf2/y;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p4}, Lb2/d;->a(Lu1/f;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
