.class public final Lvd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/h;


# static fields
.field public static final g:Lbd/a;

.field public static final h:Lorg/slf4j/Logger;


# instance fields
.field public a:Lvd/b;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/lang/Object;

.field public e:Lvd/b;

.field public final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbd/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbd/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lvd/d;->g:Lbd/a;

    .line 7
    .line 8
    const-class v0, Lvd/d;

    .line 9
    .line 10
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lvd/d;->a:Lvd/b;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lvd/d;->b:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lvd/d;->c:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lvd/d;->d:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object v0, p0, Lvd/d;->e:Lvd/b;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lvd/d;->f:Ljava/lang/Object;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Domain "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v4, "  Root "

    .line 75
    .line 76
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lvd/b;

    .line 100
    .line 101
    iget-object v3, v3, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    if-eqz v3, :cond_1

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lvd/b;

    .line 110
    .line 111
    iget-object v1, v1, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 112
    .line 113
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_1

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/util/Map$Entry;

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Lbd/b;

    .line 138
    .line 139
    move-object v5, v4

    .line 140
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v7, "    "

    .line 143
    .line 144
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v7, " => "

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-interface {v2, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    check-cast v5, Lbd/a;

    .line 176
    .line 177
    iget-object v5, v5, Lbd/a;->i:Lbd/a;

    .line 178
    .line 179
    if-ne v5, v4, :cond_2

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_3
    return-void
.end method

.method public static d(Lvc/b;Lvd/c0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbd/a;
    .locals 12

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    const-string v1, "Referral for "

    .line 4
    .line 5
    sget-object v2, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 6
    .line 7
    const-string v3, "Fetching referral for "

    .line 8
    .line 9
    invoke-interface {p0}, Lvc/b;->e()Lvc/f;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    check-cast v4, Lwc/a;

    .line 14
    .line 15
    iget-boolean v4, v4, Lwc/a;->M:Z

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    return-object v5

    .line 21
    :cond_0
    const-string v4, "\\"

    .line 22
    .line 23
    move-object v6, p2

    .line 24
    move-object/from16 v7, p5

    .line 25
    .line 26
    invoke-static {v4, p2, v4, v7}, Lta/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {v4, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    move-object v6, p1

    .line 61
    check-cast v6, Lvd/b0;

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    move-object v7, p0

    .line 65
    move-object v8, v4

    .line 66
    move-object/from16 v9, p4

    .line 67
    .line 68
    move-object v10, p3

    .line 69
    invoke-virtual/range {v6 .. v11}, Lvd/b0;->k0(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ": "

    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {v0}, Lbd/a;->e()Lbd/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :goto_1
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, "Getting referral for "

    .line 117
    .line 118
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, " failed"

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-interface {p0}, Lvc/b;->e()Lvc/f;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lwc/a;

    .line 141
    .line 142
    iget-boolean v1, v1, Lwc/a;->O:Z

    .line 143
    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    instance-of v1, v0, Lvd/p;

    .line 147
    .line 148
    if-nez v1, :cond_5

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    check-cast v0, Lvd/p;

    .line 152
    .line 153
    throw v0

    .line 154
    :cond_6
    :goto_2
    return-object v5
.end method

.method public static e(Lvc/b;Lbd/b;)Lvd/b0;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    move-object v1, p1

    .line 5
    :goto_0
    :try_start_0
    move-object v2, v1

    .line 6
    check-cast v2, Lbd/a;

    .line 7
    .line 8
    iget-object v2, v2, Lbd/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    sget-object v3, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    :try_start_1
    move-object v2, v1

    .line 15
    check-cast v2, Lbd/a;

    .line 16
    .line 17
    iget-object v2, v2, Lbd/a;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    :try_start_2
    invoke-interface {p0}, Lvc/b;->b()Lvc/o;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v4, v1

    .line 30
    check-cast v4, Lbd/a;

    .line 31
    .line 32
    iget-object v7, v4, Lbd/a;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p0}, Lvc/b;->g()Lvd/a;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lvd/j;

    .line 39
    .line 40
    invoke-virtual {v4}, Lvd/j;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-interface {p0}, Lvc/b;->e()Lvc/f;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lwc/a;

    .line 51
    .line 52
    iget-boolean v4, v4, Lwc/a;->g:Z

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    invoke-interface {p0}, Lvc/b;->e()Lvc/f;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lwc/a;

    .line 61
    .line 62
    iget-boolean v4, v4, Lwc/a;->i:Z

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    const/4 v10, 0x1

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    const/4 v4, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    :goto_1
    move-object v5, v2

    .line 74
    check-cast v5, Lvd/d0;

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v6, p0

    .line 79
    invoke-virtual/range {v5 .. v10}, Lvd/d0;->c(Lvc/b;Ljava/lang/String;IZZ)Lvd/b0;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-class v4, Lvd/b0;

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lvd/b0;->y0(Ljava/lang/Class;)Lvd/b0;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lvd/b0;->j0()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v5, "Connection failed "

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-object v5, v1

    .line 103
    check-cast v5, Lbd/a;

    .line 104
    .line 105
    iget-object v5, v5, Lbd/a;->c:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    check-cast v1, Lbd/a;

    .line 118
    .line 119
    iget-object v1, v1, Lbd/a;->i:Lbd/a;

    .line 120
    .line 121
    if-eq v1, p1, :cond_1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    throw v2

    .line 125
    :catch_1
    move-exception p1

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    const-string p1, "No server name in referral"

    .line 128
    .line 129
    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :goto_3
    invoke-interface {p0}, Lvc/b;->e()Lvc/f;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lwc/a;

    .line 138
    .line 139
    iget-boolean p0, p0, Lwc/a;->O:Z

    .line 140
    .line 141
    if-eqz p0, :cond_4

    .line 142
    .line 143
    instance-of p0, p1, Lvd/p;

    .line 144
    .line 145
    if-nez p0, :cond_3

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_3
    check-cast p1, Lvd/p;

    .line 149
    .line 150
    throw p1

    .line 151
    :cond_4
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final b(Lvc/b;Ljava/lang/String;)Lvd/b0;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    const/4 v10, 0x1

    .line 7
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lwc/a;

    .line 12
    .line 13
    iget-boolean v0, v0, Lwc/a;->M:Z

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-object v11

    .line 19
    :cond_0
    const-string v0, "Got DC referral "

    .line 20
    .line 21
    const-string v12, "\\"

    .line 22
    .line 23
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lwc/a;

    .line 28
    .line 29
    iget-boolean v2, v2, Lwc/a;->M:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    :goto_0
    move-object/from16 v2, p1

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-virtual {v8, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    iget-object v14, v1, Lvd/d;->d:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v14

    .line 46
    :try_start_0
    iget-object v2, v1, Lvd/d;->c:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lvd/b;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    iget-wide v5, v2, Lvd/b;->a:J

    .line 61
    .line 62
    cmp-long v7, v3, v5

    .line 63
    .line 64
    if-lez v7, :cond_2

    .line 65
    .line 66
    move-object v2, v11

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 72
    .line 73
    iget-object v0, v2, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    const-string v2, "dc"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lbd/b;

    .line 82
    .line 83
    sget-object v2, Lvd/d;->g:Lbd/a;

    .line 84
    .line 85
    if-ne v0, v2, :cond_3

    .line 86
    .line 87
    monitor-exit v14

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    monitor-exit v14

    .line 90
    move-object/from16 v2, p1

    .line 91
    .line 92
    move-object v11, v0

    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :cond_4
    new-instance v15, Lvd/b;

    .line 96
    .line 97
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lwc/a;

    .line 102
    .line 103
    iget-wide v2, v2, Lwc/a;->N:J

    .line 104
    .line 105
    invoke-direct {v15, v2, v3}, Lvd/b;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lvc/b;->b()Lvc/o;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lvd/d0;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v5, 0x0

    .line 116
    const/4 v6, 0x0

    .line 117
    move-object/from16 v3, p1

    .line 118
    .line 119
    move-object/from16 v4, p2

    .line 120
    .line 121
    invoke-virtual/range {v2 .. v7}, Lvd/d0;->c(Lvc/b;Ljava/lang/String;IZZ)Lvd/b0;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const-class v2, Lvd/c0;

    .line 126
    .line 127
    invoke-virtual {v7, v2}, Lvd/b0;->y0(Ljava/lang/Class;)Lvd/b0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    :try_start_2
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 131
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lvc/b;->d()Lvc/b;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 147
    const/4 v12, 0x1

    .line 148
    move-object v2, v7

    .line 149
    move-object/from16 v5, p2

    .line 150
    .line 151
    move-object v6, v13

    .line 152
    move-object/from16 v16, v7

    .line 153
    .line 154
    move v7, v12

    .line 155
    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lvd/b0;->k0(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/a;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    sget-object v3, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 162
    .line 163
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_5

    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :catchall_1
    move-exception v0

    .line 186
    goto :goto_3

    .line 187
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lbd/a;->e()Lbd/a;

    .line 188
    .line 189
    .line 190
    iget-object v0, v15, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 191
    .line 192
    const-string v3, "dc"

    .line 193
    .line 194
    invoke-virtual {v0, v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    iget-object v0, v1, Lvd/d;->c:Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lhe/e;->Y()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    .line 205
    .line 206
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 207
    move-object v11, v2

    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_6
    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 211
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lhe/e;->Y()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :catchall_2
    move-exception v0

    .line 216
    move-object/from16 v16, v7

    .line 217
    .line 218
    :goto_3
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 219
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 220
    :catchall_3
    move-exception v0

    .line 221
    :goto_4
    move-object v2, v0

    .line 222
    goto :goto_5

    .line 223
    :catchall_4
    move-exception v0

    .line 224
    move-object/from16 v16, v7

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_5
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Lhe/e;->Y()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :catchall_5
    move-exception v0

    .line 232
    move-object v3, v0

    .line 233
    :try_start_c
    const-class v0, Ljava/lang/Throwable;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 234
    .line 235
    :try_start_d
    const-string v4, "addSuppressed"

    .line 236
    .line 237
    new-array v5, v10, [Ljava/lang/Class;

    .line 238
    .line 239
    aput-object v0, v5, v9

    .line 240
    .line 241
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-array v4, v10, [Ljava/lang/Object;

    .line 246
    .line 247
    aput-object v3, v4, v9

    .line 248
    .line 249
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 250
    .line 251
    .line 252
    :catch_0
    :goto_6
    :try_start_e
    throw v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 253
    :catch_1
    move-exception v0

    .line 254
    :try_start_f
    sget-object v2, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 255
    .line 256
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_7

    .line 261
    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v4, "Getting domain controller for "

    .line 268
    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v4, " failed"

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    :cond_7
    iget-object v2, v15, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 288
    .line 289
    const-string v3, "dc"

    .line 290
    .line 291
    sget-object v4, Lvd/d;->g:Lbd/a;

    .line 292
    .line 293
    invoke-virtual {v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lwc/a;

    .line 301
    .line 302
    iget-boolean v2, v2, Lwc/a;->O:Z

    .line 303
    .line 304
    if-eqz v2, :cond_9

    .line 305
    .line 306
    instance-of v2, v0, Lvd/p;

    .line 307
    .line 308
    if-nez v2, :cond_8

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_8
    check-cast v0, Lvd/p;

    .line 312
    .line 313
    throw v0

    .line 314
    :cond_9
    :goto_7
    iget-object v0, v15, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 315
    .line 316
    const-string v2, "dc"

    .line 317
    .line 318
    sget-object v3, Lvd/d;->g:Lbd/a;

    .line 319
    .line 320
    invoke-virtual {v0, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    iget-object v0, v1, Lvd/d;->c:Ljava/util/HashMap;

    .line 324
    .line 325
    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :goto_8
    invoke-static {v2, v11}, Lvd/d;->e(Lvc/b;Lbd/b;)Lvd/b0;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-nez v0, :cond_a

    .line 336
    .line 337
    sget-object v2, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 338
    .line 339
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_a

    .line 344
    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v4, "Failed to connect to domain controller for "

    .line 348
    .line 349
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_a
    return-object v0

    .line 363
    :goto_9
    :try_start_10
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 364
    goto :goto_b

    .line 365
    :goto_a
    throw v0

    .line 366
    :goto_b
    goto :goto_a
.end method

.method public final c(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Lbd/b;
    .locals 17

    .line 1
    move-object/from16 v8, p2

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    move-object/from16 v11, p7

    .line 8
    .line 9
    const/4 v12, 0x0

    .line 10
    const/4 v13, 0x1

    .line 11
    sget-object v0, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Is a domain referral for "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Resolving root "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lvd/b;

    .line 64
    .line 65
    const/4 v14, 0x0

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-wide v2, v1, Lvd/b;->a:J

    .line 69
    .line 70
    cmp-long v4, p5, v2

    .line 71
    .line 72
    if-lez v4, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "Removing expired "

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v1, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-interface {v11, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-object v15, v14

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    move-object v15, v1

    .line 105
    :goto_0
    if-nez v15, :cond_d

    .line 106
    .line 107
    const-string v1, "Loadings roots"

    .line 108
    .line 109
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "Failed to get domain controller for "

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p2}, Lvd/d;->b(Lvc/b;Ljava/lang/String;)Lvd/b0;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    if-nez v7, :cond_6

    .line 119
    .line 120
    :try_start_0
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    move-object v1, v0

    .line 144
    move-object/from16 v16, v7

    .line 145
    .line 146
    goto/16 :goto_8

    .line 147
    .line 148
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 149
    .line 150
    invoke-virtual {v7}, Lhe/e;->Y()V

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_2
    move-object v0, v14

    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_6
    :try_start_1
    const-class v0, Lvd/c0;

    .line 157
    .line 158
    invoke-virtual {v7, v0}, Lvd/b0;->y0(Ljava/lang/Class;)Lvd/b0;

    .line 159
    .line 160
    .line 161
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 162
    :try_start_2
    invoke-virtual {v7}, Lvd/b0;->j0()Z

    .line 163
    .line 164
    .line 165
    iget-object v0, v7, Lvd/b0;->y:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 166
    .line 167
    move-object v5, v0

    .line 168
    goto :goto_4

    .line 169
    :goto_3
    move-object/from16 v16, v7

    .line 170
    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_3
    sget-object v1, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 175
    .line 176
    const-string v2, "Failed to connect to domain controller"

    .line 177
    .line 178
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 179
    .line 180
    .line 181
    move-object v5, v8

    .line 182
    :goto_4
    const/4 v0, 0x0

    .line 183
    move-object/from16 v1, p1

    .line 184
    .line 185
    move-object v2, v7

    .line 186
    move-object/from16 v3, p2

    .line 187
    .line 188
    move-object/from16 v4, p2

    .line 189
    .line 190
    move-object/from16 v6, p3

    .line 191
    .line 192
    move-object/from16 v16, v7

    .line 193
    .line 194
    move-object v7, v0

    .line 195
    :try_start_4
    invoke-static/range {v1 .. v7}, Lvd/d;->d(Lvc/b;Lvd/c0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbd/a;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    invoke-virtual/range {v16 .. v16}, Lhe/e;->Y()V

    .line 201
    .line 202
    .line 203
    sget-object v1, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 204
    .line 205
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_7

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v3, "Have DC referral "

    .line 214
    .line 215
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_7
    if-eqz v0, :cond_8

    .line 229
    .line 230
    iget-object v2, v0, Lbd/a;->c:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_8

    .line 237
    .line 238
    iget-object v2, v0, Lbd/a;->d:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_8

    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v3, "Dropping self-referential referral "

    .line 249
    .line 250
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_8
    :goto_5
    if-eqz v0, :cond_b

    .line 265
    .line 266
    new-instance v1, Lvd/b;

    .line 267
    .line 268
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Lwc/a;

    .line 273
    .line 274
    iget-wide v2, v2, Lwc/a;->N:J

    .line 275
    .line 276
    invoke-direct {v1, v2, v3}, Lvd/b;-><init>(J)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v1, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 280
    .line 281
    const-string v3, "\\"

    .line 282
    .line 283
    invoke-virtual {v2, v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-object v2, v0

    .line 287
    :cond_9
    iget-object v4, v1, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 288
    .line 289
    iput-object v4, v2, Lbd/a;->j:Lj$/util/concurrent/ConcurrentHashMap;

    .line 290
    .line 291
    iput-object v3, v2, Lbd/a;->k:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v2, v2, Lbd/a;->i:Lbd/a;

    .line 294
    .line 295
    if-ne v2, v0, :cond_9

    .line 296
    .line 297
    sget-object v2, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 298
    .line 299
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_a

    .line 304
    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v4, "Have referral "

    .line 308
    .line 309
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_a
    invoke-interface {v11, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-object v15, v1

    .line 326
    goto :goto_a

    .line 327
    :cond_b
    new-instance v1, Lvd/c;

    .line 328
    .line 329
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    check-cast v2, Lwc/a;

    .line 334
    .line 335
    iget-wide v2, v2, Lwc/a;->N:J

    .line 336
    .line 337
    invoke-direct {v1, v2, v3}, Lvd/c;-><init>(J)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v11, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    goto :goto_a

    .line 344
    :catchall_1
    move-exception v0

    .line 345
    goto :goto_6

    .line 346
    :catchall_2
    move-exception v0

    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :goto_6
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 350
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 351
    :catchall_3
    move-exception v0

    .line 352
    :goto_7
    move-object v1, v0

    .line 353
    goto :goto_8

    .line 354
    :catchall_4
    move-exception v0

    .line 355
    move-object/from16 v16, v7

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :goto_8
    if-eqz v16, :cond_c

    .line 359
    .line 360
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lhe/e;->Y()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 361
    .line 362
    .line 363
    goto :goto_9

    .line 364
    :catchall_5
    move-exception v0

    .line 365
    move-object v2, v0

    .line 366
    const-class v0, Ljava/lang/Throwable;

    .line 367
    .line 368
    :try_start_8
    const-string v3, "addSuppressed"

    .line 369
    .line 370
    new-array v4, v13, [Ljava/lang/Class;

    .line 371
    .line 372
    aput-object v0, v4, v12

    .line 373
    .line 374
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    new-array v3, v13, [Ljava/lang/Object;

    .line 379
    .line 380
    aput-object v2, v3, v12

    .line 381
    .line 382
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 383
    .line 384
    .line 385
    :catch_1
    :cond_c
    :goto_9
    throw v1

    .line 386
    :cond_d
    instance-of v0, v15, Lvd/c;

    .line 387
    .line 388
    if-eqz v0, :cond_e

    .line 389
    .line 390
    move-object v0, v14

    .line 391
    move-object v15, v0

    .line 392
    goto :goto_a

    .line 393
    :cond_e
    iget-object v0, v15, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 394
    .line 395
    const-string v1, "\\"

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Lbd/b;

    .line 402
    .line 403
    :goto_a
    if-eqz v15, :cond_26

    .line 404
    .line 405
    const-string v11, "\\"

    .line 406
    .line 407
    const/16 v1, 0x5c

    .line 408
    .line 409
    if-eqz v10, :cond_11

    .line 410
    .line 411
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-gt v2, v13, :cond_f

    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_f
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    sub-int/2addr v2, v13

    .line 423
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-ne v2, v1, :cond_10

    .line 428
    .line 429
    invoke-static {v13, v12, v10}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    goto :goto_c

    .line 434
    :cond_10
    move-object v2, v10

    .line 435
    goto :goto_c

    .line 436
    :cond_11
    :goto_b
    move-object v2, v11

    .line 437
    :goto_c
    sget-object v7, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 438
    .line 439
    invoke-interface {v7}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-eqz v3, :cond_12

    .line 444
    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v4, "Initial link is "

    .line 448
    .line 449
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-interface {v7, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    :cond_12
    if-eqz v0, :cond_15

    .line 463
    .line 464
    move-object v3, v0

    .line 465
    check-cast v3, Lbd/a;

    .line 466
    .line 467
    iget-object v3, v3, Lbd/a;->e:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-nez v3, :cond_13

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :cond_13
    move-object v3, v0

    .line 477
    :cond_14
    :goto_d
    move-object v6, v2

    .line 478
    goto :goto_f

    .line 479
    :cond_15
    :goto_e
    iget-object v3, v15, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 480
    .line 481
    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Lbd/b;

    .line 486
    .line 487
    if-eqz v3, :cond_16

    .line 488
    .line 489
    invoke-interface {v7}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-eqz v1, :cond_14

    .line 494
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    const-string v4, "Found at "

    .line 498
    .line 499
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-interface {v7, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    goto :goto_d

    .line 513
    :cond_16
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    if-lez v4, :cond_17

    .line 518
    .line 519
    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    goto :goto_e

    .line 524
    :cond_17
    invoke-interface {v7}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-eqz v1, :cond_14

    .line 529
    .line 530
    const-string v1, "Not found "

    .line 531
    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-interface {v7, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    goto :goto_d

    .line 540
    :goto_f
    if-eqz v3, :cond_19

    .line 541
    .line 542
    move-object v1, v3

    .line 543
    check-cast v1, Lbd/a;

    .line 544
    .line 545
    iget-wide v1, v1, Lbd/a;->g:J

    .line 546
    .line 547
    cmp-long v4, p5, v1

    .line 548
    .line 549
    if-lez v4, :cond_19

    .line 550
    .line 551
    invoke-interface {v7}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-eqz v1, :cond_18

    .line 556
    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v2, "Expiring links "

    .line 560
    .line 561
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-interface {v7, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    :cond_18
    iget-object v1, v15, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 575
    .line 576
    invoke-virtual {v1, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-object v3, v14

    .line 580
    :cond_19
    if-nez v3, :cond_23

    .line 581
    .line 582
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    check-cast v1, Lwc/a;

    .line 587
    .line 588
    iget-boolean v1, v1, Lwc/a;->P:Z

    .line 589
    .line 590
    if-eqz v1, :cond_1a

    .line 591
    .line 592
    move-object v1, v0

    .line 593
    check-cast v1, Lbd/a;

    .line 594
    .line 595
    invoke-virtual {v1, v8}, Lbd/a;->b(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    :cond_1a
    move-object/from16 v5, p1

    .line 599
    .line 600
    invoke-static {v5, v0}, Lvd/d;->e(Lvc/b;Lbd/b;)Lvd/b0;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    if-nez v4, :cond_1b

    .line 605
    .line 606
    if-eqz v4, :cond_25

    .line 607
    .line 608
    invoke-virtual {v4}, Lhe/e;->Y()V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_16

    .line 612
    .line 613
    :cond_1b
    :try_start_9
    iget-object v0, v4, Lvd/b0;->y:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 614
    .line 615
    move-object/from16 v1, p1

    .line 616
    .line 617
    move-object v2, v4

    .line 618
    move-object/from16 v3, p2

    .line 619
    .line 620
    move-object v14, v4

    .line 621
    move-object/from16 v4, p2

    .line 622
    .line 623
    move-object v5, v0

    .line 624
    move-object v0, v6

    .line 625
    move-object/from16 v6, p3

    .line 626
    .line 627
    move-object v13, v7

    .line 628
    move-object/from16 v7, p4

    .line 629
    .line 630
    :try_start_a
    invoke-static/range {v1 .. v7}, Lvd/d;->d(Lvc/b;Lvd/c0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbd/a;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    if-eqz v1, :cond_22

    .line 635
    .line 636
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    check-cast v0, Lwc/a;

    .line 641
    .line 642
    iget-boolean v0, v0, Lwc/a;->P:Z

    .line 643
    .line 644
    if-eqz v0, :cond_1c

    .line 645
    .line 646
    invoke-virtual {v1, v8}, Lbd/a;->b(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    goto :goto_11

    .line 650
    :catchall_6
    move-exception v0

    .line 651
    :goto_10
    move-object v1, v0

    .line 652
    goto/16 :goto_14

    .line 653
    .line 654
    :cond_1c
    :goto_11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    add-int/lit8 v0, v0, 0x2

    .line 659
    .line 660
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    add-int/2addr v0, v2

    .line 665
    iget v2, v1, Lbd/a;->a:I

    .line 666
    .line 667
    if-gt v0, v2, :cond_21

    .line 668
    .line 669
    sub-int/2addr v2, v0

    .line 670
    iput v2, v1, Lbd/a;->a:I

    .line 671
    .line 672
    if-eqz v10, :cond_1d

    .line 673
    .line 674
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    goto :goto_12

    .line 679
    :cond_1d
    const/4 v0, 0x0

    .line 680
    :goto_12
    if-le v2, v0, :cond_1e

    .line 681
    .line 682
    const-string v0, "Consumed more than we provided"

    .line 683
    .line 684
    invoke-interface {v13, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    :cond_1e
    if-eqz v10, :cond_1f

    .line 688
    .line 689
    iget v0, v1, Lbd/a;->a:I

    .line 690
    .line 691
    if-lez v0, :cond_1f

    .line 692
    .line 693
    invoke-virtual {v10, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v11

    .line 697
    :cond_1f
    iput-object v11, v1, Lbd/a;->e:Ljava/lang/String;

    .line 698
    .line 699
    invoke-interface {v13}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-eqz v0, :cond_20

    .line 704
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    .line 706
    .line 707
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .line 709
    .line 710
    const-string v2, "Have referral "

    .line 711
    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-interface {v13, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    :cond_20
    iget-object v0, v15, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 726
    .line 727
    invoke-virtual {v0, v11, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    goto :goto_13

    .line 731
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 732
    .line 733
    const-string v1, "Stripping more than consumed"

    .line 734
    .line 735
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    throw v0

    .line 739
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 740
    .line 741
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .line 743
    .line 744
    const-string v3, "No referral found for "

    .line 745
    .line 746
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-interface {v13, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 757
    .line 758
    .line 759
    :goto_13
    invoke-virtual {v14}, Lhe/e;->Y()V

    .line 760
    .line 761
    .line 762
    move-object v14, v1

    .line 763
    goto :goto_16

    .line 764
    :catchall_7
    move-exception v0

    .line 765
    move-object v14, v4

    .line 766
    goto :goto_10

    .line 767
    :goto_14
    :try_start_b
    invoke-virtual {v14}, Lhe/e;->Y()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 768
    .line 769
    .line 770
    goto :goto_15

    .line 771
    :catchall_8
    move-exception v0

    .line 772
    move-object v2, v0

    .line 773
    const-class v0, Ljava/lang/Throwable;

    .line 774
    .line 775
    :try_start_c
    const-string v3, "addSuppressed"

    .line 776
    .line 777
    const/4 v4, 0x1

    .line 778
    new-array v5, v4, [Ljava/lang/Class;

    .line 779
    .line 780
    aput-object v0, v5, v12

    .line 781
    .line 782
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    new-array v3, v4, [Ljava/lang/Object;

    .line 787
    .line 788
    aput-object v2, v3, v12

    .line 789
    .line 790
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 791
    .line 792
    .line 793
    :catch_2
    :goto_15
    throw v1

    .line 794
    :cond_23
    move-object v13, v7

    .line 795
    invoke-interface {v13}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    if-eqz v0, :cond_24

    .line 800
    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    .line 802
    .line 803
    const-string v1, "Have cached referral for "

    .line 804
    .line 805
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    move-object v1, v3

    .line 809
    check-cast v1, Lbd/a;

    .line 810
    .line 811
    iget-object v1, v1, Lbd/a;->e:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    const-string v1, " "

    .line 817
    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-interface {v13, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    :cond_24
    move-object v14, v3

    .line 832
    :cond_25
    :goto_16
    return-object v14

    .line 833
    :cond_26
    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lbd/b;
    .locals 5

    .line 1
    sget-object v0, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "No match for domain based root, checking standalone "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lvd/d;->f:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lvd/d;->e:Lvd/b;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-wide v2, v1, Lvd/b;->a:J

    .line 34
    .line 35
    cmp-long v4, p4, v2

    .line 36
    .line 37
    if-lez v4, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    :goto_0
    new-instance v1, Lvd/b;

    .line 44
    .line 45
    const-wide/16 p4, 0x0

    .line 46
    .line 47
    invoke-direct {v1, p4, p5}, Lvd/b;-><init>(J)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-object v1, p0, Lvd/d;->e:Lvd/b;

    .line 51
    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const-string p4, "\\"

    .line 54
    .line 55
    const-string p5, "\\"

    .line 56
    .line 57
    invoke-static {p4, p1, p5, p2}, Lta/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "\\"

    .line 62
    .line 63
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    invoke-static {p1, p3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :cond_3
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, v1, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    invoke-virtual {p2}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    if-eqz p4, :cond_9

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    check-cast p4, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p5

    .line 109
    if-ne p5, p3, :cond_5

    .line 110
    .line 111
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p5

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    if-ge p5, p3, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p5

    .line 122
    goto :goto_1

    .line 123
    :cond_6
    sget-object p5, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 124
    .line 125
    invoke-interface {p5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, " vs. "

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {p5, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    const/4 p5, 0x0

    .line 155
    :goto_1
    if-eqz p5, :cond_4

    .line 156
    .line 157
    sget-object p1, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 158
    .line 159
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_8

    .line 164
    .line 165
    const-string p2, "Matched "

    .line 166
    .line 167
    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    iget-object p1, v1, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 175
    .line 176
    invoke-virtual {p1, p4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Lbd/b;

    .line 181
    .line 182
    return-object p1

    .line 183
    :cond_9
    sget-object p2, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 184
    .line 185
    invoke-interface {p2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    if-eqz p3, :cond_a

    .line 190
    .line 191
    const-string p3, "No match for "

    .line 192
    .line 193
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_a
    const/4 p1, 0x0

    .line 201
    return-object p1

    .line 202
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    goto :goto_4

    .line 204
    :goto_3
    throw p1

    .line 205
    :goto_4
    goto :goto_3
.end method

.method public final g(Lvc/b;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    sget-object v4, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lwc/a;

    .line 12
    .line 13
    iget-boolean v0, v0, Lwc/a;->M:Z

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-nez v0, :cond_e

    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Lvc/b;->g()Lvd/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lvd/j;

    .line 23
    .line 24
    iget-object v0, v0, Lvd/j;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_e

    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Lvc/b;->g()Lvd/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lvd/j;

    .line 33
    .line 34
    iget-object v0, v0, Lvd/j;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_0
    iget-object v0, v1, Lvd/d;->a:Lvd/b;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    iget-object v0, v1, Lvd/d;->a:Lvd/b;

    .line 53
    .line 54
    iget-wide v8, v0, Lvd/b;->a:J

    .line 55
    .line 56
    cmp-long v0, v6, v8

    .line 57
    .line 58
    if-lez v0, :cond_1

    .line 59
    .line 60
    iput-object v5, v1, Lvd/d;->a:Lvd/b;

    .line 61
    .line 62
    :cond_1
    iget-object v0, v1, Lvd/d;->a:Lvd/b;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, v0, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    const-wide/16 v6, 0xa

    .line 70
    .line 71
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lvc/b;->g()Lvd/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lvd/j;

    .line 76
    .line 77
    iget-object v12, v0, Lvd/j;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    .line 79
    move-object/from16 v14, p1

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v1, v14, v12}, Lvd/d;->b(Lvc/b;Ljava/lang/String;)Lvd/b0;

    .line 82
    .line 83
    .line 84
    move-result-object v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :try_start_2
    new-instance v0, Lvd/b;

    .line 86
    .line 87
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Lwc/a;

    .line 92
    .line 93
    iget-wide v8, v8, Lwc/a;->N:J

    .line 94
    .line 95
    mul-long v8, v8, v6

    .line 96
    .line 97
    invoke-direct {v0, v8, v9}, Lvd/b;-><init>(J)V

    .line 98
    .line 99
    .line 100
    iget-object v13, v0, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    if-eqz v15, :cond_3

    .line 103
    .line 104
    const-class v8, Lvd/c0;

    .line 105
    .line 106
    invoke-virtual {v15, v8}, Lvd/b0;->y0(Ljava/lang/Class;)Lvd/b0;

    .line 107
    .line 108
    .line 109
    move-object v8, v15

    .line 110
    goto :goto_1

    .line 111
    :goto_0
    move-object v5, v0

    .line 112
    goto :goto_3

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    move-object v8, v5

    .line 116
    :goto_1
    if-eqz v8, :cond_4

    .line 117
    .line 118
    invoke-interface/range {p1 .. p1}, Lvc/b;->d()Lvc/b;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    const-string v10, ""

    .line 123
    .line 124
    iget-object v11, v8, Lvd/b0;->y:Ljava/lang/String;

    .line 125
    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    move-object v6, v13

    .line 129
    move/from16 v13, v16

    .line 130
    .line 131
    invoke-virtual/range {v8 .. v13}, Lvd/b0;->k0(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/a;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    move-object v6, v13

    .line 137
    move-object v7, v5

    .line 138
    :goto_2
    if-eqz v7, :cond_8

    .line 139
    .line 140
    invoke-virtual {v7}, Lbd/a;->e()Lbd/a;

    .line 141
    .line 142
    .line 143
    move-object v5, v7

    .line 144
    :cond_5
    iget-object v8, v5, Lbd/a;->c:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    new-instance v9, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v8, v9}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-eqz v9, :cond_6

    .line 163
    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v10, "Inserting cache entry for domain "

    .line 170
    .line 171
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v8, ": "

    .line 178
    .line 179
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-interface {v4, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_6
    iget-object v5, v5, Lbd/a;->i:Lbd/a;

    .line 193
    .line 194
    if-ne v5, v7, :cond_5

    .line 195
    .line 196
    iput-object v0, v1, Lvd/d;->a:Lvd/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .line 198
    if-eqz v15, :cond_7

    .line 199
    .line 200
    :try_start_3
    invoke-virtual {v15}, Lhe/e;->Y()V

    .line 201
    .line 202
    .line 203
    :cond_7
    return-object v6

    .line 204
    :cond_8
    if-eqz v15, :cond_9

    .line 205
    .line 206
    invoke-virtual {v15}, Lhe/e;->Y()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 207
    .line 208
    .line 209
    :cond_9
    return-object v5

    .line 210
    :goto_3
    if-eqz v15, :cond_a

    .line 211
    .line 212
    :try_start_4
    invoke-virtual {v15}, Lhe/e;->Y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :catchall_1
    move-exception v0

    .line 217
    move-object v6, v0

    .line 218
    :try_start_5
    const-class v0, Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 219
    .line 220
    :try_start_6
    const-string v7, "addSuppressed"

    .line 221
    .line 222
    new-array v8, v3, [Ljava/lang/Class;

    .line 223
    .line 224
    aput-object v0, v8, v2

    .line 225
    .line 226
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    new-array v3, v3, [Ljava/lang/Object;

    .line 231
    .line 232
    aput-object v6, v3, v2

    .line 233
    .line 234
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 235
    .line 236
    .line 237
    :catch_0
    :cond_a
    :goto_4
    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 238
    :catch_1
    move-exception v0

    .line 239
    goto :goto_5

    .line 240
    :catch_2
    move-exception v0

    .line 241
    move-object/from16 v14, p1

    .line 242
    .line 243
    :goto_5
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_b

    .line 248
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v3, "getting trusted domains failed: "

    .line 252
    .line 253
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface/range {p1 .. p1}, Lvc/b;->g()Lvd/a;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Lvd/j;

    .line 261
    .line 262
    iget-object v3, v3, Lvd/j;->b:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-interface {v4, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    :cond_b
    new-instance v2, Lvd/b;

    .line 275
    .line 276
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Lwc/a;

    .line 281
    .line 282
    iget-wide v3, v3, Lwc/a;->N:J

    .line 283
    .line 284
    const-wide/16 v5, 0xa

    .line 285
    .line 286
    mul-long v3, v3, v5

    .line 287
    .line 288
    invoke-direct {v2, v3, v4}, Lvd/b;-><init>(J)V

    .line 289
    .line 290
    .line 291
    iput-object v2, v1, Lvd/d;->a:Lvd/b;

    .line 292
    .line 293
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Lwc/a;

    .line 298
    .line 299
    iget-boolean v2, v2, Lwc/a;->O:Z

    .line 300
    .line 301
    if-eqz v2, :cond_d

    .line 302
    .line 303
    instance-of v2, v0, Lvd/p;

    .line 304
    .line 305
    if-nez v2, :cond_c

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_c
    check-cast v0, Lvd/p;

    .line 309
    .line 310
    throw v0

    .line 311
    :cond_d
    :goto_6
    iget-object v0, v1, Lvd/d;->a:Lvd/b;

    .line 312
    .line 313
    iget-object v0, v0, Lvd/b;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 314
    .line 315
    return-object v0

    .line 316
    :cond_e
    :goto_7
    return-object v5
.end method

.method public final h(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/b;
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lwc/a;

    .line 10
    .line 11
    iget-boolean v1, v1, Lwc/a;->M:Z

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "IPC$"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    if-gtz p5, :cond_1

    .line 27
    .line 28
    :cond_0
    move-object/from16 v13, p0

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 33
    .line 34
    return-object v9

    .line 35
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    sget-object v1, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 40
    .line 41
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    if-eqz v8, :cond_3

    .line 48
    .line 49
    move-object v2, v8

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-string v2, ""

    .line 52
    .line 53
    :goto_0
    const-string v3, "Resolving \\"

    .line 54
    .line 55
    const-string v4, "\\"

    .line 56
    .line 57
    invoke-static {v3, v10, v4, v0, v2}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    move-object/from16 v13, p0

    .line 69
    .line 70
    iget-object v14, v13, Lvd/d;->b:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v14

    .line 73
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lvd/d;->g(Lvc/b;)Lj$/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_8

    .line 78
    .line 79
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-static {v2}, Lvd/d;->a(Lj$/util/concurrent/ConcurrentHashMap;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    invoke-virtual {v2, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v7, v0

    .line 97
    check-cast v7, Ljava/util/Map;

    .line 98
    .line 99
    if-eqz v7, :cond_6

    .line 100
    .line 101
    move-object/from16 v0, p0

    .line 102
    .line 103
    move-object/from16 v1, p1

    .line 104
    .line 105
    move-object v2, v10

    .line 106
    move-object v3, v15

    .line 107
    move-object/from16 v4, p4

    .line 108
    .line 109
    move-wide v5, v11

    .line 110
    invoke-virtual/range {v0 .. v7}, Lvd/d;->c(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Lbd/b;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_6
    move-object v0, v9

    .line 119
    :goto_1
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lwc/a;

    .line 124
    .line 125
    iget-boolean v1, v1, Lwc/a;->P:Z

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    instance-of v1, v0, Lbd/a;

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    move-object v1, v0

    .line 134
    check-cast v1, Lbd/a;

    .line 135
    .line 136
    invoke-virtual {v1, v10}, Lbd/a;->b(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    move-object v2, v15

    .line 140
    goto :goto_2

    .line 141
    :cond_8
    move-object v2, v0

    .line 142
    move-object v0, v9

    .line 143
    :goto_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-nez v0, :cond_9

    .line 145
    .line 146
    if-eqz v8, :cond_9

    .line 147
    .line 148
    move-object/from16 v0, p0

    .line 149
    .line 150
    move-object v1, v10

    .line 151
    move-object/from16 v3, p4

    .line 152
    .line 153
    move-wide v4, v11

    .line 154
    invoke-virtual/range {v0 .. v5}, Lvd/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lbd/b;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :cond_9
    if-eqz v0, :cond_11

    .line 159
    .line 160
    move-object v1, v0

    .line 161
    check-cast v1, Lbd/a;

    .line 162
    .line 163
    iget-boolean v2, v1, Lbd/a;->m:Z

    .line 164
    .line 165
    if-eqz v2, :cond_11

    .line 166
    .line 167
    :cond_a
    iget-object v10, v1, Lbd/a;->i:Lbd/a;

    .line 168
    .line 169
    iget-object v2, v1, Lbd/a;->f:Ljava/lang/String;

    .line 170
    .line 171
    const-string v3, ""

    .line 172
    .line 173
    if-eqz v2, :cond_b

    .line 174
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v4, "\\"

    .line 178
    .line 179
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v4, v1, Lbd/a;->f:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    goto :goto_3

    .line 192
    :cond_b
    move-object v2, v3

    .line 193
    :goto_3
    invoke-static {v2}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-eqz v8, :cond_c

    .line 198
    .line 199
    iget v3, v10, Lbd/a;->a:I

    .line 200
    .line 201
    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    sget-object v11, Lvd/d;->h:Lorg/slf4j/Logger;

    .line 213
    .line 214
    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_d

    .line 219
    .line 220
    iget-object v2, v10, Lbd/a;->c:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v3, v10, Lbd/a;->d:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v4, v10, Lbd/a;->f:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v7, "Intermediate referral, server "

    .line 229
    .line 230
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v2, " share "

    .line 237
    .line 238
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v2, " refPath "

    .line 245
    .line 246
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v2, " origPath "

    .line 250
    .line 251
    const-string v3, " nextPath "

    .line 252
    .line 253
    invoke-static {v5, v4, v2, v8, v3}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-interface {v11, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_d
    iget-object v4, v10, Lbd/a;->c:Ljava/lang/String;

    .line 267
    .line 268
    iget-object v5, v10, Lbd/a;->d:Ljava/lang/String;

    .line 269
    .line 270
    add-int/lit8 v7, p5, -0x1

    .line 271
    .line 272
    move-object/from16 v2, p0

    .line 273
    .line 274
    move-object/from16 v3, p1

    .line 275
    .line 276
    invoke-virtual/range {v2 .. v7}, Lvd/d;->h(Lvc/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbd/b;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-eqz v2, :cond_10

    .line 281
    .line 282
    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_e

    .line 287
    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v4, "Next referral is "

    .line 291
    .line 292
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-interface {v11, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_e
    if-nez v9, :cond_f

    .line 306
    .line 307
    invoke-virtual {v10, v2}, Lbd/a;->a(Lbd/b;)Lbd/a;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    goto :goto_4

    .line 312
    :cond_f
    invoke-virtual {v10, v2}, Lbd/a;->a(Lbd/b;)Lbd/a;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    iget-object v3, v9, Lbd/a;->i:Lbd/a;

    .line 317
    .line 318
    iput-object v3, v2, Lbd/a;->i:Lbd/a;

    .line 319
    .line 320
    iput-object v2, v9, Lbd/a;->i:Lbd/a;

    .line 321
    .line 322
    :cond_10
    :goto_4
    if-ne v10, v0, :cond_a

    .line 323
    .line 324
    if-eqz v9, :cond_11

    .line 325
    .line 326
    move-object v0, v9

    .line 327
    :cond_11
    return-object v0

    .line 328
    :goto_5
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    throw v0

    .line 330
    :goto_6
    return-object v9
.end method
