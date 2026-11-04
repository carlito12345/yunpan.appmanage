.class public abstract Leh/j;
.super Leh/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "(.*?;[0-9]+)\\s*(\\d+)(?:/\\d+)?\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Leh/b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Leh/b;->a(Ldh/f;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ldh/g;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0, p1}, Leh/b;->h(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-eqz v4, :cond_7

    .line 10
    .line 11
    new-instance v4, Ldh/g;

    .line 12
    .line 13
    invoke-direct {v4}, Ldh/g;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v4, Ldh/g;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v2}, Leh/b;->g(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Leh/b;->g(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v7, " "

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v7, 0x4

    .line 44
    invoke-virtual {p0, v7}, Leh/b;->g(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-virtual {p0, v7}, Leh/b;->g(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const/16 v8, 0x9

    .line 61
    .line 62
    invoke-virtual {p0, v8}, Leh/b;->g(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const/16 v9, 0xa

    .line 67
    .line 68
    invoke-virtual {p0, v9}, Leh/b;->g(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const/16 v10, 0xb

    .line 73
    .line 74
    invoke-virtual {p0, v10}, Leh/b;->g(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    new-array v11, v1, [Ljava/lang/String;

    .line 79
    .line 80
    aput-object v8, v11, v0

    .line 81
    .line 82
    aput-object v9, v11, v3

    .line 83
    .line 84
    aput-object v10, v11, v2

    .line 85
    .line 86
    :try_start_0
    iget-object v8, p0, Leh/b;->d:Leh/d;

    .line 87
    .line 88
    invoke-virtual {v8, v6}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iput-object v6, v4, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    :catch_0
    new-instance v6, Ljava/util/StringTokenizer;

    .line 95
    .line 96
    const-string v8, ","

    .line 97
    .line 98
    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eq v7, v3, :cond_1

    .line 106
    .line 107
    if-eq v7, v2, :cond_0

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    :goto_0
    const-string v6, ".DIR"

    .line 121
    .line 122
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v7, -0x1

    .line 127
    if-eq v6, v7, :cond_2

    .line 128
    .line 129
    iput v3, v4, Ldh/g;->a:I

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    iput v0, v4, Ldh/g;->a:I

    .line 133
    .line 134
    :goto_1
    iput-object p1, v4, Ldh/g;->d:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v5

    .line 140
    const-wide/16 v7, 0x200

    .line 141
    .line 142
    mul-long v5, v5, v7

    .line 143
    .line 144
    iput-wide v5, v4, Ldh/g;->b:J

    .line 145
    .line 146
    const/4 p1, 0x0

    .line 147
    :goto_2
    if-ge p1, v1, :cond_6

    .line 148
    .line 149
    aget-object v5, v11, p1

    .line 150
    .line 151
    const/16 v6, 0x52

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-ltz v6, :cond_3

    .line 158
    .line 159
    const/4 v6, 0x1

    .line 160
    goto :goto_3

    .line 161
    :cond_3
    const/4 v6, 0x0

    .line 162
    :goto_3
    invoke-virtual {v4, p1, v0, v6}, Ldh/g;->b(IIZ)V

    .line 163
    .line 164
    .line 165
    const/16 v6, 0x57

    .line 166
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-ltz v6, :cond_4

    .line 172
    .line 173
    const/4 v6, 0x1

    .line 174
    goto :goto_4

    .line 175
    :cond_4
    const/4 v6, 0x0

    .line 176
    :goto_4
    invoke-virtual {v4, p1, v3, v6}, Ldh/g;->b(IIZ)V

    .line 177
    .line 178
    .line 179
    const/16 v6, 0x45

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-ltz v5, :cond_5

    .line 186
    .line 187
    const/4 v5, 0x1

    .line 188
    goto :goto_5

    .line 189
    :cond_5
    const/4 v5, 0x0

    .line 190
    :goto_5
    invoke-virtual {v4, p1, v2, v5}, Ldh/g;->b(IIZ)V

    .line 191
    .line 192
    .line 193
    add-int/2addr p1, v3

    .line 194
    goto :goto_2

    .line 195
    :cond_6
    return-object v4

    .line 196
    :cond_7
    const/4 p1, 0x0

    .line 197
    return-object p1
.end method

.method public final d(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    const-string v2, "Directory"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    const-string v2, "Total"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, ")"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_3
    return-object p1
.end method

.method public final f()Ldh/f;
    .locals 4

    .line 1
    new-instance v0, Ldh/f;

    .line 2
    .line 3
    const-string v1, "d-MMM-yyyy HH:mm:ss"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "VMS"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
