.class public final Ltb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Ljava/lang/String;

.field public final c:Ltb/p;

.field public d:Ljava/lang/Thread;

.field public final synthetic e:Ltb/r;


# direct methods
.method public constructor <init>(Ltb/r;Lmb/g;Ltb/p;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltb/q;->e:Ltb/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lmb/g;->D()Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ltb/q;->a:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iput-object p3, p0, Ltb/q;->c:Ltb/p;

    .line 13
    .line 14
    iput-object p4, p0, Ltb/q;->b:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ltb/q;->e:Ltb/r;

    .line 2
    .line 3
    iget-object v0, v0, Ltb/r;->e:Ljava/lang/Thread;

    .line 4
    .line 5
    iget-object v1, p0, Ltb/q;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final run()V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ltb/q;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    new-instance v0, Lsb/e;

    .line 8
    .line 9
    invoke-direct {v0}, Lsb/e;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Ltb/q;->a:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Ltb/q;->c:Ltb/p;

    .line 19
    .line 20
    iget-boolean v4, v3, Ltb/p;->a:Z

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    iget v3, v3, Ltb/p;->b:I

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    iget-object v7, p0, Ltb/q;->b:Ljava/lang/String;

    .line 27
    .line 28
    if-eq v3, v5, :cond_4

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-eq v3, v2, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    if-eq v3, v5, :cond_1

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v5, "\\b"

    .line 41
    .line 42
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    :cond_1
    if-eqz v4, :cond_2

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    :cond_2
    or-int/lit8 v2, v6, 0x8

    .line 63
    .line 64
    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :cond_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_a

    .line 81
    .line 82
    invoke-virtual {p0}, Ltb/q;->a()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_a

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-static {v3, v4}, Lsb/h;->g(II)J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    invoke-virtual {v0, v3, v4}, Lsb/e;->a(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-ne v3, v4, :cond_3

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    const/4 v5, 0x0

    .line 119
    :cond_5
    :goto_0
    const/4 v8, -0x1

    .line 120
    if-eq v5, v8, :cond_a

    .line 121
    .line 122
    if-ge v5, v2, :cond_a

    .line 123
    .line 124
    invoke-virtual {p0}, Ltb/q;->a()Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-eqz v9, :cond_a

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    sub-int/2addr v9, v10

    .line 139
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    :goto_1
    if-gt v5, v9, :cond_8

    .line 144
    .line 145
    const/4 v11, 0x0

    .line 146
    :goto_2
    if-ge v11, v10, :cond_9

    .line 147
    .line 148
    add-int v12, v5, v11

    .line 149
    .line 150
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-eq v12, v13, :cond_7

    .line 159
    .line 160
    if-eqz v4, :cond_6

    .line 161
    .line 162
    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-eq v12, v13, :cond_7

    .line 171
    .line 172
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    const/4 v5, -0x1

    .line 179
    :cond_9
    if-eq v5, v8, :cond_5

    .line 180
    .line 181
    add-int v8, v5, v3

    .line 182
    .line 183
    invoke-static {v5, v8}, Lsb/h;->g(II)J

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    invoke-virtual {v0, v9, v10}, Lsb/e;->a(J)V

    .line 188
    .line 189
    .line 190
    move v5, v8

    .line 191
    goto :goto_0

    .line 192
    :cond_a
    :goto_3
    invoke-virtual {p0}, Ltb/q;->a()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_b

    .line 197
    .line 198
    iget-object v1, p0, Ltb/q;->e:Ltb/r;

    .line 199
    .line 200
    iget-object v1, v1, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 201
    .line 202
    new-instance v2, Ls1/f;

    .line 203
    .line 204
    const/4 v3, 0x2

    .line 205
    invoke-direct {v2, p0, v3, v0}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    :cond_b
    return-void
.end method
