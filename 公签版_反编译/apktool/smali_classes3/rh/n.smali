.class public Lrh/n;
.super Lrh/p;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lrh/n;->c:I

    .line 2
    .line 3
    invoke-direct {p0}, Lrh/p;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lrh/n;->a:I

    .line 7
    .line 8
    iput p2, p0, Lrh/n;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Lph/l;Lph/l;)Z
    .locals 7

    .line 1
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_b

    .line 5
    .line 6
    instance-of p1, p1, Lph/h;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lrh/n;->c:I

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    iget-object v2, p1, Lph/l;->e:Lph/k;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v1, v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lph/l;->h()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lph/q;

    .line 44
    .line 45
    invoke-virtual {v4}, Lph/q;->q()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v6, p2, Lph/l;->d:Lqh/f0;

    .line 50
    .line 51
    iget-object v6, v6, Lqh/f0;->c:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    :cond_2
    if-ne v4, p2, :cond_4

    .line 62
    .line 63
    :cond_3
    move v1, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_0
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_5

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move-object p1, p2

    .line 75
    :goto_1
    if-eqz p1, :cond_8

    .line 76
    .line 77
    iget-object v2, p1, Lph/l;->d:Lqh/f0;

    .line 78
    .line 79
    iget-object v2, v2, Lqh/f0;->c:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p2, Lph/l;->d:Lqh/f0;

    .line 82
    .line 83
    iget-object v3, v3, Lqh/f0;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    :cond_6
    invoke-virtual {p1}, Lph/q;->m()Lph/l;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_1

    .line 98
    :pswitch_1
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 99
    .line 100
    if-nez p1, :cond_7

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    invoke-virtual {p1}, Lph/l;->D()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {p2}, Lph/l;->G()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    sub-int/2addr p1, p2

    .line 118
    move v1, p1

    .line 119
    goto :goto_2

    .line 120
    :pswitch_2
    invoke-virtual {p2}, Lph/l;->G()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    add-int/lit8 v1, p1, 0x1

    .line 125
    .line 126
    :cond_8
    :goto_2
    const/4 p1, 0x1

    .line 127
    iget p2, p0, Lrh/n;->b:I

    .line 128
    .line 129
    iget v2, p0, Lrh/n;->a:I

    .line 130
    .line 131
    if-nez v2, :cond_a

    .line 132
    .line 133
    if-ne v1, p2, :cond_9

    .line 134
    .line 135
    const/4 v0, 0x1

    .line 136
    :cond_9
    return v0

    .line 137
    :cond_a
    sub-int/2addr v1, p2

    .line 138
    mul-int p2, v1, v2

    .line 139
    .line 140
    if-ltz p2, :cond_b

    .line 141
    .line 142
    rem-int/2addr v1, v2

    .line 143
    if-nez v1, :cond_b

    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    :cond_b
    :goto_3
    return v0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lrh/n;->b:I

    .line 2
    .line 3
    iget v1, p0, Lrh/n;->a:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v2, ":%s(%3$d)"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v2, ":%s(%2$dn)"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v2, ":%s(%2$dn%3$+d)"

    .line 16
    .line 17
    :goto_0
    iget v3, p0, Lrh/n;->c:I

    .line 18
    .line 19
    packed-switch v3, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string v3, "nth-of-type"

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_0
    const-string v3, "nth-last-of-type"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :pswitch_1
    const-string v3, "nth-last-child"

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_2
    const-string v3, "nth-child"

    .line 32
    .line 33
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v4, 0x3

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    aput-object v3, v4, v5

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    aput-object v1, v4, v3

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    aput-object v0, v4, v1

    .line 52
    .line 53
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
