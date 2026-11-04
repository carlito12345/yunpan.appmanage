.class public abstract Lth/a;
.super Lvh/a;
.source "SourceFile"

# interfaces
.implements Lwh/l;
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvh/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lwh/o;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lth/e;->a:Lth/e;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lwh/b;->c:Lwh/b;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lth/a;->m()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Lsh/e;->w(J)Lsh/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_2
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 29
    .line 30
    if-eq p1, v0, :cond_4

    .line 31
    .line 32
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 33
    .line 34
    if-eq p1, v0, :cond_4

    .line 35
    .line 36
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 37
    .line 38
    if-eq p1, v0, :cond_4

    .line 39
    .line 40
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 41
    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-super {p0, p1}, Lvh/b;->c(Lwh/o;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public abstract m()J
.end method
