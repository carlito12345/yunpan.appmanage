.class public final Ljg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:[Ljg/n;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/nio/file/attribute/FileTime;

.field public i:Ljava/nio/file/attribute/FileTime;

.field public j:Ljava/nio/file/attribute/FileTime;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljg/n;

    .line 3
    .line 4
    sput-object v0, Ljg/n;->s:[Ljg/n;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Ljg/n;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    check-cast p1, Ljg/n;

    .line 19
    .line 20
    iget-object v2, p0, Ljg/n;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Ljg/n;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    iget-boolean v2, p0, Ljg/n;->b:Z

    .line 31
    .line 32
    iget-boolean v3, p1, Ljg/n;->b:Z

    .line 33
    .line 34
    if-ne v2, v3, :cond_7

    .line 35
    .line 36
    iget-boolean v2, p0, Ljg/n;->c:Z

    .line 37
    .line 38
    iget-boolean v3, p1, Ljg/n;->c:Z

    .line 39
    .line 40
    if-ne v2, v3, :cond_7

    .line 41
    .line 42
    iget-boolean v2, p0, Ljg/n;->d:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Ljg/n;->d:Z

    .line 45
    .line 46
    if-ne v2, v3, :cond_7

    .line 47
    .line 48
    iget-boolean v2, p0, Ljg/n;->e:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Ljg/n;->e:Z

    .line 51
    .line 52
    if-ne v2, v3, :cond_7

    .line 53
    .line 54
    iget-boolean v2, p0, Ljg/n;->f:Z

    .line 55
    .line 56
    iget-boolean v3, p1, Ljg/n;->f:Z

    .line 57
    .line 58
    if-ne v2, v3, :cond_7

    .line 59
    .line 60
    iget-boolean v2, p0, Ljg/n;->g:Z

    .line 61
    .line 62
    iget-boolean v3, p1, Ljg/n;->g:Z

    .line 63
    .line 64
    if-ne v2, v3, :cond_7

    .line 65
    .line 66
    iget-object v2, p0, Ljg/n;->h:Ljava/nio/file/attribute/FileTime;

    .line 67
    .line 68
    iget-object v3, p1, Ljg/n;->h:Ljava/nio/file/attribute/FileTime;

    .line 69
    .line 70
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    iget-object v2, p0, Ljg/n;->i:Ljava/nio/file/attribute/FileTime;

    .line 77
    .line 78
    iget-object v3, p1, Ljg/n;->i:Ljava/nio/file/attribute/FileTime;

    .line 79
    .line 80
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    iget-object v2, p0, Ljg/n;->j:Ljava/nio/file/attribute/FileTime;

    .line 87
    .line 88
    iget-object v3, p1, Ljg/n;->j:Ljava/nio/file/attribute/FileTime;

    .line 89
    .line 90
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    iget-boolean v2, p0, Ljg/n;->k:Z

    .line 97
    .line 98
    iget-boolean v3, p1, Ljg/n;->k:Z

    .line 99
    .line 100
    if-ne v2, v3, :cond_7

    .line 101
    .line 102
    iget v2, p0, Ljg/n;->l:I

    .line 103
    .line 104
    iget v3, p1, Ljg/n;->l:I

    .line 105
    .line 106
    if-ne v2, v3, :cond_7

    .line 107
    .line 108
    iget-boolean v2, p0, Ljg/n;->m:Z

    .line 109
    .line 110
    iget-boolean v3, p1, Ljg/n;->m:Z

    .line 111
    .line 112
    if-ne v2, v3, :cond_7

    .line 113
    .line 114
    iget-wide v2, p0, Ljg/n;->n:J

    .line 115
    .line 116
    iget-wide v4, p1, Ljg/n;->n:J

    .line 117
    .line 118
    cmp-long v6, v2, v4

    .line 119
    .line 120
    if-nez v6, :cond_7

    .line 121
    .line 122
    iget-wide v2, p0, Ljg/n;->o:J

    .line 123
    .line 124
    iget-wide v4, p1, Ljg/n;->o:J

    .line 125
    .line 126
    cmp-long v6, v2, v4

    .line 127
    .line 128
    if-nez v6, :cond_7

    .line 129
    .line 130
    iget-wide v2, p0, Ljg/n;->p:J

    .line 131
    .line 132
    iget-wide v4, p1, Ljg/n;->p:J

    .line 133
    .line 134
    cmp-long v6, v2, v4

    .line 135
    .line 136
    if-nez v6, :cond_7

    .line 137
    .line 138
    iget-wide v2, p0, Ljg/n;->q:J

    .line 139
    .line 140
    iget-wide v4, p1, Ljg/n;->q:J

    .line 141
    .line 142
    cmp-long v6, v2, v4

    .line 143
    .line 144
    if-nez v6, :cond_7

    .line 145
    .line 146
    iget-object v2, p0, Ljg/n;->r:Ljava/util/List;

    .line 147
    .line 148
    iget-object p1, p1, Ljg/n;->r:Ljava/util/List;

    .line 149
    .line 150
    if-nez v2, :cond_2

    .line 151
    .line 152
    if-nez p1, :cond_3

    .line 153
    .line 154
    const/4 p1, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    if-nez p1, :cond_4

    .line 157
    .line 158
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Ljg/v;

    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_3

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v3, v4}, Ljg/v;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-nez v3, :cond_5

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    xor-int/2addr p1, v0

    .line 202
    :goto_1
    if-eqz p1, :cond_7

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_7
    const/4 v0, 0x0

    .line 206
    :goto_2
    return v0

    .line 207
    :cond_8
    :goto_3
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljg/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method
