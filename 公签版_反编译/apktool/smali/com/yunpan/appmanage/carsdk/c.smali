.class public final Lcom/yunpan/appmanage/carsdk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yunpan/appmanage/carsdk/d;


# direct methods
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
.method public final a(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->LAMP_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->LAMP_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_D:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_N:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_R:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x4

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_P:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    return-void
.end method

.method public final g(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_ECO:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x3

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_NORMAL:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x5

    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_SPORT:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x6

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_I_PEDAL:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    return-void
.end method

.method public final l(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput p1, v0, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->SPEED_START:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v0, v0, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->SPEED_STOP:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-boolean v0, v0, Lcom/yunpan/appmanage/carsdk/e;->g:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->c:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/e;->h:Lcom/yunpan/appmanage/carsdk/b;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v0, v0, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    if-lez p1, :cond_4

    .line 89
    .line 90
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-boolean v0, v0, Lcom/yunpan/appmanage/carsdk/e;->g:Z

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->c:Landroid/os/Handler;

    .line 103
    .line 104
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/e;->h:Lcom/yunpan/appmanage/carsdk/b;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v1, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->SPEED_START:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_0
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput p1, v0, Lcom/yunpan/appmanage/carsdk/e;->e:I

    .line 131
    .line 132
    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_HATCH_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_HATCH_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final s(IZ)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0xe9

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FL_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FL_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/16 v0, 0xea

    .line 55
    .line 56
    if-ne p1, v0, :cond_4

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FR_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FR_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const/16 v0, 0xeb

    .line 89
    .line 90
    if-ne p1, v0, :cond_6

    .line 91
    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RL_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RL_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    const/16 v0, 0xec

    .line 123
    .line 124
    if-ne p1, v0, :cond_8

    .line 125
    .line 126
    if-eqz p2, :cond_7

    .line 127
    .line 128
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RR_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    sget-object p2, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RR_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carsdk/e;->a(Lcom/yunpan/appmanage/carsdk/e;I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    :goto_0
    return-void
.end method
