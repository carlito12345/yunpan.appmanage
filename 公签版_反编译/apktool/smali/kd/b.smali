.class public final Lkd/b;
.super Lid/d;
.source "SourceFile"


# instance fields
.field public final D:B

.field public final E:B

.field public F:Lvc/g;


# direct methods
.method public constructor <init>(Lvc/f;BB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lid/d;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    iput-byte p2, p0, Lkd/b;->D:B

    .line 5
    .line 6
    iput-byte p3, p0, Lkd/b;->E:B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final l0(I[B)I
    .locals 7

    .line 1
    invoke-static {p1, p2}, Lrd/a;->a(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_7

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x2

    .line 10
    .line 11
    invoke-static {v0, p2}, Lrd/a;->a(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lid/b;->d:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    add-int/lit8 v1, p1, 0x4

    .line 19
    .line 20
    invoke-static {v1, p2}, Lrd/a;->b(I[B)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v2, p1, 0x8

    .line 25
    .line 26
    iget-byte v3, p0, Lkd/b;->D:B

    .line 27
    .line 28
    iget-byte v4, p0, Lkd/b;->E:B

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    if-eq v3, v5, :cond_5

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x3

    .line 35
    if-eq v3, v5, :cond_2

    .line 36
    .line 37
    if-eq v3, v6, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x4

    .line 40
    if-eq v3, p1, :cond_0

    .line 41
    .line 42
    new-instance p1, Lad/g;

    .line 43
    .line 44
    const-string p2, "Unknwon information type "

    .line 45
    .line 46
    invoke-static {v3, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_0
    new-instance p1, Lad/g;

    .line 55
    .line 56
    const-string p2, "Unknown quota info class "

    .line 57
    .line 58
    invoke-static {v4, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    new-instance v3, La1/i;

    .line 67
    .line 68
    const/16 v4, 0x9

    .line 69
    .line 70
    invoke-direct {v3, v4}, La1/i;-><init>(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eq v4, v6, :cond_4

    .line 75
    .line 76
    const/4 v3, 0x7

    .line 77
    if-ne v4, v3, :cond_3

    .line 78
    .line 79
    new-instance v3, Ldd/d;

    .line 80
    .line 81
    invoke-direct {v3}, Ldd/d;-><init>()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance p1, Lad/g;

    .line 86
    .line 87
    const-string p2, "Unknown filesystem info class "

    .line 88
    .line 89
    invoke-static {v4, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_4
    new-instance v3, Ldd/e;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-direct {v3, v4}, Ldd/e;-><init>(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v3, 0x6

    .line 105
    if-ne v4, v3, :cond_6

    .line 106
    .line 107
    new-instance v3, Ldd/c;

    .line 108
    .line 109
    const/4 v4, 0x1

    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-direct {v3, v4, v5}, Ldd/c;-><init>(IZ)V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-interface {v3, v0, v1, p2}, Lvc/g;->i(II[B)I

    .line 115
    .line 116
    .line 117
    add-int/2addr v0, v1

    .line 118
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iput-object v3, p0, Lkd/b;->F:Lvc/g;

    .line 123
    .line 124
    sub-int/2addr p2, p1

    .line 125
    return p2

    .line 126
    :cond_6
    new-instance p1, Lad/g;

    .line 127
    .line 128
    const-string p2, "Unknown file info class "

    .line 129
    .line 130
    invoke-static {v4, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_7
    new-instance p1, Lad/g;

    .line 139
    .line 140
    const-string p2, "Expected structureSize = 9"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method

.method public final p0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
