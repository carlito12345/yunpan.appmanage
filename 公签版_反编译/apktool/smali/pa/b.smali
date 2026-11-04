.class public final Lpa/b;
.super Lpa/f;
.source "SourceFile"


# instance fields
.field public final synthetic e:[Ljava/lang/String;

.field public final synthetic f:Lpa/e;


# direct methods
.method public constructor <init>(Lpa/e;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpa/b;->f:Lpa/e;

    .line 2
    .line 3
    iput-object p2, p0, Lpa/b;->e:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lpa/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAccStateResponse(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x2715

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x2716

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final onILLContStatusResponse(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x2711

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0x2710

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final onIgnResponse(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x2713

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x2714

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final onVehicleGearInfoResponse(I)V
    .locals 5

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lpa/b;->e:[Ljava/lang/String;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "\u672a\u77e5"

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lpa/b;->f:Lpa/e;

    .line 15
    .line 16
    iput-object p1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v1, 0x2717

    .line 23
    .line 24
    iget-object v2, v0, Lpa/e;->h:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Lwa/s;->j(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 30
    .line 31
    iget-object v1, v0, Lpa/e;->k:Landroidx/activity/h;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v1, v0, Lpa/e;->k:Landroidx/activity/h;

    .line 39
    .line 40
    const-wide/16 v2, 0x12c

    .line 41
    .line 42
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v1, v0, Lpa/e;->l:Landroidx/emoji2/text/o;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget p1, v0, Lpa/e;->i:I

    .line 53
    .line 54
    const-wide/16 v1, 0x2710

    .line 55
    .line 56
    const-string v3, "D"

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    iget-object p1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v4, v0, Lpa/e;->l:Landroidx/emoji2/text/o;

    .line 71
    .line 72
    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object p1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 76
    .line 77
    iget-object v4, v0, Lpa/e;->m:Landroidx/emoji2/text/o;

    .line 78
    .line 79
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    iget p1, v0, Lpa/e;->i:I

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    iget-object p1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    iget-object p1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 95
    .line 96
    const-string v3, "R"

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    iget-object p1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 105
    .line 106
    const-string v3, "S"

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_2

    .line 113
    .line 114
    iget-object p1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 115
    .line 116
    const-string v3, "L"

    .line 117
    .line 118
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    :cond_2
    iget-object p1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 125
    .line 126
    iget-object v0, v0, Lpa/e;->m:Landroidx/emoji2/text/o;

    .line 127
    .line 128
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    .line 130
    .line 131
    :cond_3
    return-void
.end method

.method public final onVehicleSpeedInfoResponse(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lpa/b;->f:Lpa/e;

    .line 2
    .line 3
    iget v1, v0, Lpa/e;->i:I

    .line 4
    .line 5
    const-string v2, "L"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v3, v0, Lpa/e;->l:Landroidx/emoji2/text/o;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v3, v0, Lpa/e;->m:Landroidx/emoji2/text/o;

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/16 v2, 0x271a

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lwa/s;->i(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-nez p1, :cond_3

    .line 44
    .line 45
    if-lez v1, :cond_3

    .line 46
    .line 47
    iget-object v1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 48
    .line 49
    const-string v3, "D"

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const-wide/16 v4, 0x2710

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object v6, v0, Lpa/e;->l:Landroidx/emoji2/text/o;

    .line 62
    .line 63
    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 67
    .line 68
    iget-object v6, v0, Lpa/e;->l:Landroidx/emoji2/text/o;

    .line 69
    .line 70
    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    iget-object v1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, "R"

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    iget-object v1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 92
    .line 93
    const-string v3, "S"

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_2

    .line 100
    .line 101
    iget-object v1, v0, Lpa/e;->h:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    :cond_2
    iget-object v1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 110
    .line 111
    iget-object v2, v0, Lpa/e;->m:Landroidx/emoji2/text/o;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lpa/e;->j:Landroid/os/Handler;

    .line 117
    .line 118
    iget-object v2, v0, Lpa/e;->m:Landroidx/emoji2/text/o;

    .line 119
    .line 120
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    iput p1, v0, Lpa/e;->i:I

    .line 124
    .line 125
    return-void
.end method
