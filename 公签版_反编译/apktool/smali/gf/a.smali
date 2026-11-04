.class public final Lgf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/reflect/Field;

.field public final b:Lgf/j;

.field public final c:I

.field public final d:I

.field public final e:Lgf/i;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lgf/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf/a;->a:Ljava/lang/reflect/Field;

    .line 5
    .line 6
    invoke-interface {p2}, Lgf/f;->type()Lgf/j;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lgf/a;->b:Lgf/j;

    .line 11
    .line 12
    invoke-interface {p2}, Lgf/f;->cls()Lgf/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lgf/h;->c:Lgf/h;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Lgf/f;->tagNumber()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    sget-object v0, Lgf/h;->b:Lgf/h;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lgf/h;->a:Lgf/h;

    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    if-eq v1, v3, :cond_4

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    if-ne v1, v3, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Unsupported tag class: "

    .line 53
    .line 54
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    const/4 v3, 0x0

    .line 69
    :cond_4
    :goto_1
    iput v3, p0, Lgf/a;->c:I

    .line 70
    .line 71
    invoke-interface {p2}, Lgf/f;->tagNumber()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eq v0, v2, :cond_5

    .line 76
    .line 77
    invoke-interface {p2}, Lgf/f;->tagNumber()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    sget-object v0, Lgf/j;->b:Lgf/j;

    .line 83
    .line 84
    if-eq p1, v0, :cond_7

    .line 85
    .line 86
    sget-object v0, Lgf/j;->a:Lgf/j;

    .line 87
    .line 88
    if-ne p1, v0, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    invoke-static {p1}, Lnh/b;->K(Lgf/j;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    goto :goto_3

    .line 96
    :cond_7
    :goto_2
    const/4 p1, -0x1

    .line 97
    :goto_3
    iput p1, p0, Lgf/a;->d:I

    .line 98
    .line 99
    invoke-interface {p2}, Lgf/f;->tagging()Lgf/i;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lgf/a;->e:Lgf/i;

    .line 104
    .line 105
    sget-object v0, Lgf/i;->b:Lgf/i;

    .line 106
    .line 107
    if-eq p1, v0, :cond_8

    .line 108
    .line 109
    sget-object v0, Lgf/i;->c:Lgf/i;

    .line 110
    .line 111
    if-ne p1, v0, :cond_9

    .line 112
    .line 113
    :cond_8
    invoke-interface {p2}, Lgf/f;->tagNumber()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eq v0, v2, :cond_a

    .line 118
    .line 119
    :cond_9
    invoke-interface {p2}, Lgf/f;->optional()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput-boolean p1, p0, Lgf/a;->f:Z

    .line 124
    .line 125
    return-void

    .line 126
    :cond_a
    new-instance p2, Lgf/e;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v1, "Tag number must be specified when tagging mode is "

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p2, p1}, Lgf/e;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p2
.end method


# virtual methods
.method public final a(La9/a;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p1, La9/a;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, ", but found "

    .line 5
    .line 6
    iget v3, p0, Lgf/a;->d:I

    .line 7
    .line 8
    iget v4, p0, Lgf/a;->c:I

    .line 9
    .line 10
    if-eq v3, v1, :cond_1

    .line 11
    .line 12
    iget v1, p1, La9/a;->c:I

    .line 13
    .line 14
    if-ne v0, v4, :cond_0

    .line 15
    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lgf/b;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v5, "Tag mismatch. Expected: "

    .line 24
    .line 25
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v3}, Lnh/b;->o0(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lnh/b;->o0(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Lgf/b;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    if-ne v0, v4, :cond_3

    .line 54
    .line 55
    :goto_0
    sget-object v0, Lgf/i;->b:Lgf/i;

    .line 56
    .line 57
    iget-object v1, p0, Lgf/a;->e:Lgf/i;

    .line 58
    .line 59
    if-ne v1, v0, :cond_2

    .line 60
    .line 61
    :try_start_0
    new-instance v0, Lhf/b;

    .line 62
    .line 63
    iget-object p1, p1, La9/a;->e:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, p1, v1}, Lhf/b;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lhf/b;->f()La9/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Lhf/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    new-instance p2, Lgf/e;

    .line 82
    .line 83
    const-string v0, "Failed to read contents of EXPLICIT data value"

    .line 84
    .line 85
    invoke-direct {p2, v0, p1}, Lgf/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 86
    .line 87
    .line 88
    throw p2

    .line 89
    :cond_2
    :goto_1
    iget-object v0, p0, Lgf/a;->a:Ljava/lang/reflect/Field;

    .line 90
    .line 91
    iget-object v1, p0, Lgf/a;->b:Lgf/j;

    .line 92
    .line 93
    invoke-static {p2, v0, v1, p1}, Lgf/c;->j(Ljava/lang/Object;Ljava/lang/reflect/Field;Lgf/j;La9/a;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    new-instance p1, Lgf/b;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "Tag mismatch. Expected class: "

    .line 102
    .line 103
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, Lnh/b;->p0(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lnh/b;->p0(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p1, p2}, Lgf/b;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method
