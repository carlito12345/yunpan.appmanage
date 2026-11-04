.class public final Lw4/b;
.super Lb5/c;
.source "SourceFile"


# instance fields
.field public final c:Lb5/e;

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb5/c;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb5/e;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lb5/e;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw4/b;->c:Lb5/e;

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lw4/b;->d:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g()I
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/b;->c:Lb5/e;

    .line 2
    .line 3
    iget v1, v0, Lb5/e;->c:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lb5/e;->e(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    if-ltz v1, :cond_2

    .line 21
    .line 22
    iget v2, v0, Lb5/e;->c:I

    .line 23
    .line 24
    if-gt v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lb5/f;->c()V

    .line 27
    .line 28
    .line 29
    iput v1, v0, Lb5/e;->c:I

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v1, "newSize > size"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v1, "newSize < 0"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    throw v0

    .line 52
    :goto_2
    goto :goto_1
.end method

.method public final h(I)Lw4/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lw4/b;->c:Lb5/e;

    .line 2
    .line 3
    iget v1, v0, Lb5/e;->c:I

    .line 4
    .line 5
    if-lt p1, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lb5/e;->e(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    if-ltz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lw4/a;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-static {p1}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "no such label: "

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method
