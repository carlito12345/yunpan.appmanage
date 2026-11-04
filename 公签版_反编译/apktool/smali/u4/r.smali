.class public final Lu4/r;
.super Lu4/x;
.source "SourceFile"


# instance fields
.field public final e:Lu4/q;

.field public final f:Lu4/a0;

.field public final g:Lu4/p;

.field public final h:I


# direct methods
.method public constructor <init>(Lu4/q;Lu4/a0;Lu4/p;Lu4/p;I)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 1
    invoke-direct {p0, v0, v1}, Lu4/x;-><init>(II)V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-lez p5, :cond_0

    .line 2
    iput-object p1, p0, Lu4/r;->e:Lu4/q;

    .line 3
    iput-object p2, p0, Lu4/r;->f:Lu4/a0;

    .line 4
    iput-object p3, p0, Lu4/r;->g:Lu4/p;

    .line 5
    iput p5, p0, Lu4/r;->h:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lastItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lu4/w;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 10
    invoke-direct {p0, v0, v1}, Lu4/x;-><init>(II)V

    if-eqz p1, :cond_0

    .line 11
    sget-object v0, Lu4/q;->k:Lu4/q;

    iput-object v0, p0, Lu4/r;->e:Lu4/q;

    .line 12
    iput-object p1, p0, Lu4/r;->f:Lu4/a0;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lu4/r;->g:Lu4/p;

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lu4/r;->h:I

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "section == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static l([Lu4/a0;Lu4/w;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v2, v1, Lu4/w;->f:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_6

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v3, 0x32

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    array-length v3, v0

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    if-ge v5, v3, :cond_5

    .line 25
    .line 26
    aget-object v12, v0, v5

    .line 27
    .line 28
    invoke-virtual {v12}, Lu4/a0;->c()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v13

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v7, v6

    .line 38
    move-object v9, v7

    .line 39
    move-object v10, v9

    .line 40
    const/4 v11, 0x0

    .line 41
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    move-object v14, v6

    .line 52
    check-cast v14, Lu4/p;

    .line 53
    .line 54
    invoke-virtual {v14}, Lu4/p;->b()Lu4/q;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    if-eq v15, v7, :cond_1

    .line 59
    .line 60
    if-eqz v11, :cond_0

    .line 61
    .line 62
    new-instance v8, Lu4/r;

    .line 63
    .line 64
    move-object v6, v8

    .line 65
    move-object v4, v8

    .line 66
    move-object v8, v12

    .line 67
    invoke-direct/range {v6 .. v11}, Lu4/r;-><init>(Lu4/q;Lu4/a0;Lu4/p;Lu4/p;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_0
    move-object v9, v14

    .line 74
    move-object v7, v15

    .line 75
    const/4 v11, 0x0

    .line 76
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 77
    .line 78
    move-object v10, v14

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    if-eqz v11, :cond_3

    .line 81
    .line 82
    new-instance v4, Lu4/r;

    .line 83
    .line 84
    move-object v6, v4

    .line 85
    move-object v8, v12

    .line 86
    invoke-direct/range {v6 .. v11}, Lu4/r;-><init>(Lu4/q;Lu4/a0;Lu4/p;Lu4/p;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    if-ne v12, v1, :cond_4

    .line 94
    .line 95
    new-instance v4, Lu4/r;

    .line 96
    .line 97
    invoke-direct {v4, v1}, Lu4/r;-><init>(Lu4/w;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    new-instance v0, Lu4/g0;

    .line 107
    .line 108
    sget-object v3, Lu4/q;->k:Lu4/q;

    .line 109
    .line 110
    invoke-direct {v0, v3, v2}, Lu4/g0;-><init>(Lu4/q;Ljava/util/ArrayList;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lu4/w;->k(Lu4/x;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string v1, "mapSection.items().size() != 0"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 126
    .line 127
    const-string v1, "sections == null"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :goto_3
    throw v0

    .line 134
    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->s:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lu4/f;Lb5/b;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lu4/r;->e:Lu4/q;

    .line 2
    .line 3
    iget v0, p1, Lu4/q;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Lu4/r;->f:Lu4/a0;

    .line 6
    .line 7
    iget-object v2, p0, Lu4/r;->g:Lu4/p;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lu4/a0;->b()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1, v2}, Lu4/a0;->a(Lu4/p;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget v3, p0, Lu4/r;->h:I

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lu4/x;->g()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v5, 0x20

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v5, p1, Lu4/q;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, " map"

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p2, v4, v2}, Lb5/b;->b(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v5, "  type:   "

    .line 66
    .line 67
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, " // "

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v2, 0x2

    .line 94
    invoke-virtual {p2, v2, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p1, "  unused: 0"

    .line 98
    .line 99
    invoke-virtual {p2, v2, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v2, "  size:   "

    .line 107
    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const/4 v2, 0x4

    .line 113
    invoke-virtual {p2, v2, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v5, "  offset: "

    .line 121
    .line 122
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p2, v2, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-virtual {p2, v0}, Lb5/b;->k(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v4}, Lb5/b;->k(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v3}, Lb5/b;->j(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v1}, Lb5/b;->j(I)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lu4/r;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x7b

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lu4/r;->f:Lu4/a0;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lu4/r;->e:Lu4/q;

    .line 37
    .line 38
    iget-object v1, v1, Lu4/q;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x7d

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
