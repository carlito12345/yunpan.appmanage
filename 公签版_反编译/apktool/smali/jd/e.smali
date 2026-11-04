.class public final Ljd/e;
.super Lid/d;
.source "SourceFile"

# interfaces
.implements Lad/i;


# static fields
.field public static final H:Lorg/slf4j/Logger;


# instance fields
.field public D:J

.field public E:J

.field public final F:[B

.field public final G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljd/e;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljd/e;->H:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lid/d;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x10

    .line 5
    .line 6
    new-array p2, p2, [B

    .line 7
    .line 8
    iput-object p2, p0, Ljd/e;->F:[B

    .line 9
    .line 10
    iput-object p1, p0, Ljd/e;->G:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final E(Lad/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lid/d;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p1, Lid/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lid/a;

    .line 11
    .line 12
    iget-object v1, p0, Ljd/e;->F:[B

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lid/a;->w([B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Lid/d;->E(Lad/c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getLastWriteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljd/e;->D:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljd/e;->E:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final l0(I[B)I
    .locals 12

    .line 1
    invoke-static {p1, p2}, Lrd/a;->a(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x59

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x2

    .line 10
    .line 11
    aget-byte v0, p2, v0

    .line 12
    .line 13
    add-int/lit8 v0, p1, 0x3

    .line 14
    .line 15
    aget-byte v0, p2, v0

    .line 16
    .line 17
    add-int/lit8 v0, p1, 0x4

    .line 18
    .line 19
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, p1, 0x8

    .line 23
    .line 24
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, p1, 0x10

    .line 28
    .line 29
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, p1, 0x18

    .line 33
    .line 34
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Ljd/e;->D:J

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x20

    .line 41
    .line 42
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x28

    .line 46
    .line 47
    invoke-static {v0, p2}, Lrd/a;->c(I[B)J

    .line 48
    .line 49
    .line 50
    add-int/lit8 v0, p1, 0x30

    .line 51
    .line 52
    invoke-static {v0, p2}, Lrd/a;->c(I[B)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Ljd/e;->E:J

    .line 57
    .line 58
    add-int/lit8 v0, p1, 0x38

    .line 59
    .line 60
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 61
    .line 62
    .line 63
    add-int/lit8 v0, p1, 0x40

    .line 64
    .line 65
    iget-object v1, p0, Ljd/e;->F:[B

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    const/16 v3, 0x10

    .line 69
    .line 70
    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, p1, 0x50

    .line 74
    .line 75
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/lit8 v3, p1, 0x54

    .line 80
    .line 81
    invoke-static {v3, p2}, Lrd/a;->b(I[B)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    add-int/lit8 v4, p1, 0x58

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    if-lez v3, :cond_2

    .line 90
    .line 91
    new-instance v3, Ljava/util/LinkedList;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 94
    .line 95
    .line 96
    iget v5, p0, Lid/b;->d:I

    .line 97
    .line 98
    add-int/2addr v5, v0

    .line 99
    :cond_0
    invoke-static {v5, p2}, Lrd/a;->b(I[B)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/lit8 v6, v5, 0x4

    .line 104
    .line 105
    invoke-static {v6, p2}, Lrd/a;->a(I[B)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    add-int/lit8 v7, v5, 0x6

    .line 110
    .line 111
    invoke-static {v7, p2}, Lrd/a;->a(I[B)I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    add-int/lit8 v8, v5, 0xa

    .line 116
    .line 117
    invoke-static {v8, p2}, Lrd/a;->a(I[B)I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    add-int/lit8 v9, v5, 0xc

    .line 122
    .line 123
    invoke-static {v9, p2}, Lrd/a;->b(I[B)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    add-int/lit8 v10, v5, 0x10

    .line 128
    .line 129
    new-array v11, v7, [B

    .line 130
    .line 131
    add-int/2addr v6, v5

    .line 132
    invoke-static {p2, v6, v11, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    add-int/2addr v6, v7

    .line 136
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    add-int/2addr v8, v5

    .line 141
    add-int/2addr v8, v9

    .line 142
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-lez v0, :cond_1

    .line 147
    .line 148
    add-int/2addr v5, v0

    .line 149
    :cond_1
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-gtz v0, :cond_0

    .line 154
    .line 155
    new-array p2, v2, [Ljd/a;

    .line 156
    .line 157
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    check-cast p2, [Ljd/a;

    .line 162
    .line 163
    :cond_2
    sget-object p2, Ljd/e;->H:Lorg/slf4j/Logger;

    .line 164
    .line 165
    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_3

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v3, "Opened "

    .line 174
    .line 175
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Ljd/e;->G:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, ": "

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    array-length v3, v1

    .line 189
    invoke-static {v1, v2, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_3
    sub-int/2addr v4, p1

    .line 204
    return v4

    .line 205
    :cond_4
    new-instance p1, Lad/g;

    .line 206
    .line 207
    const-string p2, "Structure size is not 89"

    .line 208
    .line 209
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :goto_0
    throw p1

    .line 214
    :goto_1
    goto :goto_0
.end method

.method public final p0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
