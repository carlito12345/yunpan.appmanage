.class public final Leh/g;
.super Leh/b;
.source "SourceFile"


# instance fields
.field public final e:Leh/d;


# direct methods
.method public constructor <init>(Ldh/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Leh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Leh/b;->a(Ldh/f;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ldh/f;

    .line 8
    .line 9
    const-string v0, "WINDOWS"

    .line 10
    .line 11
    const-string v1, "MM-dd-yy kk:mm"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, v0, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p1, Ldh/f;->b:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Leh/d;

    .line 20
    .line 21
    invoke-direct {v0}, Leh/d;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Leh/g;->e:Leh/d;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ldh/a;->a(Ldh/f;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ldh/g;
    .locals 7

    .line 1
    new-instance v0, Ldh/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ldh/g;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Ldh/g;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Leh/b;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v2}, Leh/b;->g(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " "

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x4

    .line 51
    invoke-virtual {p0, v4}, Leh/b;->g(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x5

    .line 56
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :try_start_0
    iget-object v6, p0, Leh/b;->d:Leh/d;

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iput-object v6, v0, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    :try_start_1
    iget-object v6, p0, Leh/g;->e:Leh/d;

    .line 70
    .line 71
    invoke-virtual {v6, p1}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, v0, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_1
    nop

    .line 79
    :goto_0
    if-eqz v5, :cond_3

    .line 80
    .line 81
    const-string p1, "."

    .line 82
    .line 83
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    const-string p1, ".."

    .line 90
    .line 91
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_0

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_0
    iput-object v5, v0, Ldh/g;->d:Ljava/lang/String;

    .line 99
    .line 100
    const-string p1, "<DIR>"

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    iput v2, v0, Ldh/g;->a:I

    .line 109
    .line 110
    const-wide/16 v1, 0x0

    .line 111
    .line 112
    iput-wide v1, v0, Ldh/g;->b:J

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    const/4 p1, 0x0

    .line 116
    iput p1, v0, Ldh/g;->a:I

    .line 117
    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    iput-wide v1, v0, Ldh/g;->b:J

    .line 125
    .line 126
    :cond_2
    :goto_1
    return-object v0

    .line 127
    :cond_3
    :goto_2
    return-object v1
.end method

.method public final f()Ldh/f;
    .locals 4

    .line 1
    new-instance v0, Ldh/f;

    .line 2
    .line 3
    const-string v1, "MM-dd-yy hh:mma"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "WINDOWS"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
