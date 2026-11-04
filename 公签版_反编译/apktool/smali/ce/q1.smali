.class public final Lce/q1;
.super Lce/j0;
.source "SourceFile"


# instance fields
.field public M0:Lce/i;

.field public final t0:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lce/j0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lce/q1;->t0:I

    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    iput-byte p1, p0, Lce/j0;->S:B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2QueryPathInformationResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/j0;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final v(II[B)I
    .locals 4

    .line 1
    iget p2, p0, Lce/q1;->t0:I

    .line 2
    .line 3
    const/16 v0, 0x101

    .line 4
    .line 5
    if-eq p2, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x102

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    new-instance p2, Lce/p1;

    .line 14
    .line 15
    invoke-direct {p2}, Lce/p1;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p3}, Lce/q;->h(I[B)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iput-wide v2, p2, Lce/p1;->a:J

    .line 23
    .line 24
    add-int/lit8 v0, p1, 0x8

    .line 25
    .line 26
    invoke-static {v0, p3}, Lce/q;->h(I[B)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iput-wide v2, p2, Lce/p1;->b:J

    .line 31
    .line 32
    add-int/lit8 v0, p1, 0x10

    .line 33
    .line 34
    invoke-static {v0, p3}, Lce/q;->g(I[B)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p2, Lce/p1;->c:I

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x14

    .line 41
    .line 42
    add-int/lit8 v2, p1, 0x15

    .line 43
    .line 44
    aget-byte v0, p3, v0

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    iput-boolean v0, p2, Lce/p1;->d:Z

    .line 55
    .line 56
    add-int/lit8 v0, p1, 0x16

    .line 57
    .line 58
    aget-byte p3, p3, v2

    .line 59
    .line 60
    and-int/lit16 p3, p3, 0xff

    .line 61
    .line 62
    if-lez p3, :cond_2

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    :cond_2
    iput-boolean v1, p2, Lce/p1;->e:Z

    .line 66
    .line 67
    iput-object p2, p0, Lce/q1;->M0:Lce/i;

    .line 68
    .line 69
    sub-int/2addr v0, p1

    .line 70
    return v0

    .line 71
    :cond_3
    new-instance p2, Lce/o1;

    .line 72
    .line 73
    invoke-direct {p2}, Lce/o1;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p3}, Lce/q;->l(I[B)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    iput-wide v0, p2, Lce/o1;->a:J

    .line 81
    .line 82
    add-int/lit8 v0, p1, 0x8

    .line 83
    .line 84
    invoke-static {v0, p3}, Lce/q;->l(I[B)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    iput-wide v0, p2, Lce/o1;->b:J

    .line 89
    .line 90
    add-int/lit8 v0, p1, 0x10

    .line 91
    .line 92
    invoke-static {v0, p3}, Lce/q;->l(I[B)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    iput-wide v0, p2, Lce/o1;->c:J

    .line 97
    .line 98
    add-int/lit8 v0, p1, 0x18

    .line 99
    .line 100
    invoke-static {v0, p3}, Lce/q;->l(I[B)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    iput-wide v0, p2, Lce/o1;->d:J

    .line 105
    .line 106
    add-int/lit8 v0, p1, 0x20

    .line 107
    .line 108
    invoke-static {v0, p3}, Lce/q;->f(I[B)I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    iput p3, p2, Lce/o1;->e:I

    .line 113
    .line 114
    add-int/lit8 p3, p1, 0x22

    .line 115
    .line 116
    iput-object p2, p0, Lce/q1;->M0:Lce/i;

    .line 117
    .line 118
    sub-int/2addr p3, p1

    .line 119
    return p3
.end method

.method public final w([B)I
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method
