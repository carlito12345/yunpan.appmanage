.class public final enum Lqh/n;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Initial"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Lqh/c0;->a(Lqh/r0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lqh/r0;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lqh/k0;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lqh/c;->v(Lqh/k0;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Lqh/r0;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sget-object v2, Lqh/c0;->b:Lqh/t;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    if-eqz v0, :cond_9

    .line 30
    .line 31
    check-cast p1, Lqh/l0;

    .line 32
    .line 33
    new-instance v0, Lph/i;

    .line 34
    .line 35
    iget-object v4, p2, Lqh/c;->h:Lqh/d0;

    .line 36
    .line 37
    iget-object v5, p1, Lqh/l0;->d:Lkf/d;

    .line 38
    .line 39
    invoke-virtual {v5}, Lkf/d;->R()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget-boolean v4, v4, Lqh/d0;->a:Z

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    invoke-static {v5}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    :cond_2
    iget-object v4, p1, Lqh/l0;->f:Lkf/d;

    .line 59
    .line 60
    invoke-virtual {v4}, Lkf/d;->R()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-object v6, p1, Lqh/l0;->g:Lkf/d;

    .line 65
    .line 66
    invoke-virtual {v6}, Lkf/d;->R()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-direct {v0, v5, v4, v6}, Lph/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, p1, Lqh/l0;->e:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    iget-object v5, v0, Lph/p;->d:Ljava/lang/Object;

    .line 78
    .line 79
    instance-of v5, v5, Lph/c;

    .line 80
    .line 81
    invoke-virtual {v0}, Lph/p;->B()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lph/q;->t()Lph/h;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    iget-object v5, v5, Lph/h;->k:Lqh/e0;

    .line 91
    .line 92
    iget-object v5, v5, Lqh/e0;->c:Lqh/d0;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    sget-object v5, Lqh/d0;->c:Lqh/d0;

    .line 96
    .line 97
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-boolean v5, v5, Lqh/d0;->b:Z

    .line 101
    .line 102
    const-string v6, "pubSysKey"

    .line 103
    .line 104
    if-nez v5, :cond_4

    .line 105
    .line 106
    invoke-static {v6}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    :cond_4
    invoke-virtual {v0}, Lph/p;->c()Lph/c;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5, v6}, Lph/c;->h(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    const/4 v8, -0x1

    .line 119
    if-eq v7, v8, :cond_5

    .line 120
    .line 121
    iget-object v8, v5, Lph/c;->c:[Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v4, v8, v7

    .line 124
    .line 125
    iget-object v4, v5, Lph/c;->b:[Ljava/lang/String;

    .line 126
    .line 127
    aget-object v4, v4, v7

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_6

    .line 134
    .line 135
    iget-object v4, v5, Lph/c;->b:[Ljava/lang/String;

    .line 136
    .line 137
    aput-object v6, v4, v7

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    invoke-virtual {v5, v6, v4}, Lph/c;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    :goto_1
    iget-object v4, p2, Lqh/c;->d:Lph/h;

    .line 144
    .line 145
    invoke-virtual {v4, v0}, Lph/l;->A(Lph/q;)V

    .line 146
    .line 147
    .line 148
    iget-boolean p1, p1, Lqh/l0;->h:Z

    .line 149
    .line 150
    if-nez p1, :cond_7

    .line 151
    .line 152
    const-string p1, "name"

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lph/p;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v4, "html"

    .line 159
    .line 160
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    const-string p1, "publicId"

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lph/p;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string v0, "HTML"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_8

    .line 179
    .line 180
    :cond_7
    iget-object p1, p2, Lqh/c;->d:Lph/h;

    .line 181
    .line 182
    iput v3, p1, Lph/h;->l:I

    .line 183
    .line 184
    :cond_8
    iput-object v2, p2, Lqh/c;->l:Lqh/c0;

    .line 185
    .line 186
    :goto_2
    return v1

    .line 187
    :cond_9
    iget-object v0, p2, Lqh/c;->d:Lph/h;

    .line 188
    .line 189
    iput v3, v0, Lph/h;->l:I

    .line 190
    .line 191
    iput-object v2, p2, Lqh/c;->l:Lqh/c0;

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    return p1
.end method
