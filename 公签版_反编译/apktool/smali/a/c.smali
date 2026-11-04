.class public final La/c;
.super La/b;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, La/b;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, La/c;->e:[B

    .line 10
    .line 11
    return-void
.end method

.method public static t(Ljava/io/PrintStream;B)V
    .locals 2

    .line 1
    shr-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    int-to-char v0, v0

    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x37

    .line 11
    .line 12
    :goto_0
    int-to-char v0, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x30

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 18
    .line 19
    .line 20
    and-int/lit8 p1, p1, 0xf

    .line 21
    .line 22
    int-to-char p1, p1

    .line 23
    if-le p1, v1, :cond_1

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x37

    .line 26
    .line 27
    :goto_2
    int-to-char p1, p1

    .line 28
    goto :goto_3

    .line 29
    :cond_1
    add-int/lit8 p1, p1, 0x30

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_3
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->write(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final b([BIILjava/io/OutputStream;)V
    .locals 1

    .line 1
    iget p3, p0, La/c;->d:I

    .line 2
    .line 3
    aget-byte p4, p1, p2

    .line 4
    .line 5
    iget-object v0, p0, La/c;->e:[B

    .line 6
    .line 7
    aput-byte p4, v0, p3

    .line 8
    .line 9
    iget-object p3, p0, La/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p3, Ljava/io/PrintStream;

    .line 12
    .line 13
    aget-byte p1, p1, p2

    .line 14
    .line 15
    invoke-static {p3, p1}, La/c;->t(Ljava/io/PrintStream;B)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, La/b;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Ljava/io/PrintStream;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget p1, p0, La/c;->d:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, La/c;->d:I

    .line 30
    .line 31
    const/16 p2, 0x8

    .line 32
    .line 33
    if-ne p1, p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, La/b;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Ljava/io/PrintStream;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final d(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/c;->b:I

    .line 3
    .line 4
    invoke-super {p0, p1}, La/b;->d(Ljava/io/OutputStream;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/PrintStream;

    .line 4
    .line 5
    iget v1, p0, La/c;->b:I

    .line 6
    .line 7
    ushr-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    int-to-byte v1, v1

    .line 12
    invoke-static {v0, v1}, La/c;->t(Ljava/io/PrintStream;B)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/io/PrintStream;

    .line 18
    .line 19
    iget v1, p0, La/c;->b:I

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    int-to-byte v1, v1

    .line 24
    invoke-static {v0, v1}, La/c;->t(Ljava/io/PrintStream;B)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/io/PrintStream;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p0, La/c;->d:I

    .line 36
    .line 37
    iput p1, p0, La/c;->c:I

    .line 38
    .line 39
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget v0, p0, La/c;->c:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, La/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/io/PrintStream;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, La/b;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/io/PrintStream;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ljava/io/PrintStream;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_1
    iget v1, p0, La/c;->c:I

    .line 38
    .line 39
    if-ge v0, v1, :cond_4

    .line 40
    .line 41
    iget-object v1, p0, La/c;->e:[B

    .line 42
    .line 43
    aget-byte v1, v1, v0

    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    if-lt v1, v2, :cond_3

    .line 48
    .line 49
    const/16 v2, 0x7a

    .line 50
    .line 51
    if-le v1, v2, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v2, p0, La/b;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Ljava/io/PrintStream;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->write(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    :goto_2
    iget-object v1, p0, La/b;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Ljava/io/PrintStream;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Ljava/io/PrintStream;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget v0, p0, La/c;->b:I

    .line 80
    .line 81
    iget v1, p0, La/c;->c:I

    .line 82
    .line 83
    add-int/2addr v0, v1

    .line 84
    iput v0, p0, La/c;->b:I

    .line 85
    .line 86
    return-void
.end method
