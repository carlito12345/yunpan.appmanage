.class public final Ltf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltf/c;


# instance fields
.field public final a:Lvf/a;

.field public final b:Landroidx/room/s;

.field public c:I

.field public final d:[B

.field public final e:[B


# direct methods
.method public constructor <init>(Lag/a;[C[B[BZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Ltf/a;->c:I

    .line 6
    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    iput-object v1, p0, Ltf/a;->d:[B

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Ltf/a;->e:[B

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    array-length v1, p2

    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    iget p1, p1, Lag/a;->f:I

    .line 24
    .line 25
    invoke-static {p2, p1, p3, p5}, Ld/b;->p([CI[BZ)[B

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 p3, 0x2

    .line 30
    new-array p5, p3, [B

    .line 31
    .line 32
    invoke-static {p1}, Landroid/support/v4/media/session/a;->e(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {p1}, Landroid/support/v4/media/session/a;->f(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v1

    .line 41
    invoke-static {p2, v2, p5, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    invoke-static {p4, p5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_0

    .line 49
    .line 50
    invoke-static {p1}, Landroid/support/v4/media/session/a;->e(I)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    new-array p4, p3, [B

    .line 55
    .line 56
    invoke-static {p2, v0, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lvf/a;

    .line 60
    .line 61
    invoke-direct {p3, p4}, Lvf/a;-><init>([B)V

    .line 62
    .line 63
    .line 64
    iput-object p3, p0, Ltf/a;->a:Lvf/a;

    .line 65
    .line 66
    invoke-static {p1}, Landroid/support/v4/media/session/a;->f(I)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    new-array p4, p3, [B

    .line 71
    .line 72
    invoke-static {p1}, Landroid/support/v4/media/session/a;->e(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-static {p2, p1, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Landroidx/room/s;

    .line 80
    .line 81
    const/16 p2, 0x14

    .line 82
    .line 83
    const/4 p3, 0x0

    .line 84
    invoke-direct {p1, p2, p3}, Landroidx/room/s;-><init>(IC)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p4}, Landroidx/room/s;->o([B)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Ltf/a;->b:Landroidx/room/s;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    new-instance p1, Lwf/a;

    .line 94
    .line 95
    const-string p2, "Wrong Password"

    .line 96
    .line 97
    invoke-direct {p1, p2, v0}, Lwf/a;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_1
    new-instance p1, Lwf/a;

    .line 102
    .line 103
    const-string p2, "empty or null password provided for AES decryption"

    .line 104
    .line 105
    invoke-direct {p1, p2, v0}, Lwf/a;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method


# virtual methods
.method public final m(II[B)I
    .locals 8

    .line 1
    move v0, p1

    .line 2
    :goto_0
    add-int v1, p1, p2

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    add-int/lit8 v2, v0, 0x10

    .line 7
    .line 8
    if-gt v2, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sub-int/2addr v1, v0

    .line 14
    :goto_1
    iget-object v3, p0, Ltf/a;->b:Landroidx/room/s;

    .line 15
    .line 16
    invoke-virtual {v3, p3, v0, v1}, Landroidx/room/s;->F([BII)V

    .line 17
    .line 18
    .line 19
    iget v3, p0, Ltf/a;->c:I

    .line 20
    .line 21
    iget-object v4, p0, Ltf/a;->d:[B

    .line 22
    .line 23
    invoke-static {v3, v4}, Ld/b;->d0(I[B)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Ltf/a;->a:Lvf/a;

    .line 27
    .line 28
    iget-object v5, p0, Ltf/a;->e:[B

    .line 29
    .line 30
    invoke-virtual {v3, v4, v5}, Lvf/a;->a([B[B)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_2
    if-ge v3, v1, :cond_1

    .line 35
    .line 36
    add-int v4, v0, v3

    .line 37
    .line 38
    aget-byte v6, p3, v4

    .line 39
    .line 40
    aget-byte v7, v5, v3

    .line 41
    .line 42
    xor-int/2addr v6, v7

    .line 43
    int-to-byte v6, v6

    .line 44
    aput-byte v6, p3, v4

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget v0, p0, Ltf/a;->c:I

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    iput v0, p0, Ltf/a;->c:I

    .line 54
    .line 55
    move v0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return p2
.end method
