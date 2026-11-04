.class public final Lmd/b;
.super Lid/d;
.source "SourceFile"


# instance fields
.field public final D:[B

.field public E:I

.field public F:Lvc/g;


# direct methods
.method public constructor <init>(Lvc/f;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lid/d;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lmd/b;->D:[B

    .line 5
    .line 6
    iput p3, p0, Lmd/b;->E:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j0()Z
    .locals 3

    .line 1
    iget v0, p0, Lid/b;->j:I

    .line 2
    .line 3
    const v1, -0x3ffffff3    # -2.000003f

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lmd/b;->E:I

    .line 11
    .line 12
    const v2, 0x1440f2    # 1.860008E-39f

    .line 13
    .line 14
    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const v2, 0x1480f2

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    :cond_0
    const v1, -0x7ffffffb

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lmd/b;->E:I

    .line 28
    .line 29
    const v1, 0x11c017

    .line 30
    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const v1, 0x11400c

    .line 35
    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const v1, 0x60194

    .line 40
    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    :cond_1
    invoke-super {p0}, Lid/b;->j0()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0
.end method

.method public final l0(I[B)I
    .locals 9

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
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lid/b;->m0(I[B)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/16 v1, 0x31

    .line 15
    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    add-int/lit8 v0, p1, 0x4

    .line 19
    .line 20
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lmd/b;->E:I

    .line 25
    .line 26
    add-int/lit8 v0, p1, 0x8

    .line 27
    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    new-array v2, v1, [B

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {p2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, p1, 0x18

    .line 37
    .line 38
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lid/b;->d:I

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    add-int/lit8 v1, p1, 0x1c

    .line 46
    .line 47
    invoke-static {v1, p2}, Lrd/a;->b(I[B)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/lit8 v2, p1, 0x20

    .line 52
    .line 53
    invoke-static {v2, p2}, Lrd/a;->b(I[B)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget v4, p0, Lid/b;->d:I

    .line 58
    .line 59
    add-int/2addr v2, v4

    .line 60
    add-int/lit8 v4, p1, 0x24

    .line 61
    .line 62
    invoke-static {v4, p2}, Lrd/a;->b(I[B)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    add-int/lit8 v5, p1, 0x28

    .line 67
    .line 68
    invoke-static {v5, p2}, Lrd/a;->b(I[B)I

    .line 69
    .line 70
    .line 71
    add-int/lit8 v5, p1, 0x30

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    iget-object v7, p0, Lmd/b;->D:[B

    .line 75
    .line 76
    if-nez v7, :cond_1

    .line 77
    .line 78
    iget v8, p0, Lmd/b;->E:I

    .line 79
    .line 80
    sparse-switch v8, :sswitch_data_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :sswitch_0
    new-instance v6, Lha/l2;

    .line 85
    .line 86
    const/16 v8, 0x14

    .line 87
    .line 88
    invoke-direct {v6, v8}, Lha/l2;-><init>(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :sswitch_1
    new-instance v6, Lmd/c;

    .line 93
    .line 94
    invoke-direct {v6}, Lmd/c;-><init>()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :sswitch_2
    new-instance v6, Lha/l2;

    .line 99
    .line 100
    const/16 v8, 0x15

    .line 101
    .line 102
    invoke-direct {v6, v8}, Lha/l2;-><init>(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :sswitch_3
    new-instance v6, Lha/j2;

    .line 107
    .line 108
    const/16 v8, 0x15

    .line 109
    .line 110
    invoke-direct {v6, v8}, Lha/j2;-><init>(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :sswitch_4
    new-instance v6, Lbd/d;

    .line 115
    .line 116
    invoke-direct {v6}, Lbd/d;-><init>()V

    .line 117
    .line 118
    .line 119
    :cond_1
    :goto_0
    iput-object v6, p0, Lmd/b;->F:Lvc/g;

    .line 120
    .line 121
    add-int/2addr v0, v1

    .line 122
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v7, :cond_3

    .line 127
    .line 128
    array-length v1, v7

    .line 129
    if-gt v4, v1, :cond_2

    .line 130
    .line 131
    invoke-static {p2, v2, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    new-instance p1, Lad/g;

    .line 136
    .line 137
    const-string p2, "Output length exceeds buffer size"

    .line 138
    .line 139
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_3
    iget-object v1, p0, Lmd/b;->F:Lvc/g;

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    invoke-interface {v1, v2, v4, p2}, Lvc/g;->i(II[B)I

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_1
    add-int/2addr v2, v4

    .line 151
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    sub-int/2addr p2, p1

    .line 156
    return p2

    .line 157
    :cond_5
    new-instance p1, Lad/g;

    .line 158
    .line 159
    const-string p2, "Expected structureSize = 49"

    .line 160
    .line 161
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x60194 -> :sswitch_4
        0x11400c -> :sswitch_3
        0x140078 -> :sswitch_2
        0x140204 -> :sswitch_1
        0x1440f2 -> :sswitch_0
        0x1480f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final p0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final r0(Ljava/lang/Class;)Lvc/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lmd/b;->F:Lvc/g;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p1, Lvd/r;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Incompatible response data "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Lvd/r;

    .line 41
    .line 42
    const-string v0, "Failed to decode output data"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method
