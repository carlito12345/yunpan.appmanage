.class public final Lc8/t0;
.super Lz7/a0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz7/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lh8/a;)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Lh8/a;->e0()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lh8/a;->a0()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lh8/a;->A()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Lh8/a;->e0()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-eq v8, v0, :cond_7

    .line 31
    .line 32
    invoke-virtual {p1}, Lh8/a;->Y()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {p1}, Lh8/a;->W()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 v10, -0x1

    .line 44
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    sparse-switch v11, :sswitch_data_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :sswitch_0
    const-string v11, "hourOfDay"

    .line 53
    .line 54
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v10, 0x5

    .line 62
    goto :goto_1

    .line 63
    :sswitch_1
    const-string v11, "month"

    .line 64
    .line 65
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-nez v8, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v10, 0x4

    .line 73
    goto :goto_1

    .line 74
    :sswitch_2
    const-string v11, "year"

    .line 75
    .line 76
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v10, 0x3

    .line 84
    goto :goto_1

    .line 85
    :sswitch_3
    const-string v11, "second"

    .line 86
    .line 87
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/4 v10, 0x2

    .line 95
    goto :goto_1

    .line 96
    :sswitch_4
    const-string v11, "minute"

    .line 97
    .line 98
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    const/4 v10, 0x1

    .line 106
    goto :goto_1

    .line 107
    :sswitch_5
    const-string v11, "dayOfMonth"

    .line 108
    .line 109
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-nez v8, :cond_6

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    const/4 v10, 0x0

    .line 117
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_0
    move v5, v9

    .line 122
    goto :goto_0

    .line 123
    :pswitch_1
    move v3, v9

    .line 124
    goto :goto_0

    .line 125
    :pswitch_2
    move v2, v9

    .line 126
    goto :goto_0

    .line 127
    :pswitch_3
    move v7, v9

    .line 128
    goto :goto_0

    .line 129
    :pswitch_4
    move v6, v9

    .line 130
    goto :goto_0

    .line 131
    :pswitch_5
    move v4, v9

    .line 132
    goto :goto_0

    .line 133
    :cond_7
    invoke-virtual {p1}, Lh8/a;->M()V

    .line 134
    .line 135
    .line 136
    new-instance p1, Ljava/util/GregorianCalendar;

    .line 137
    .line 138
    move-object v0, p1

    .line 139
    move v1, v2

    .line 140
    move v2, v3

    .line 141
    move v3, v4

    .line 142
    move v4, v5

    .line 143
    move v5, v6

    .line 144
    move v6, v7

    .line 145
    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 146
    .line 147
    .line 148
    :goto_2
    return-object p1

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x4667c053 -> :sswitch_5
        -0x400459ec -> :sswitch_4
        -0x3604bb8c -> :sswitch_3
        0x38883d -> :sswitch_2
        0x6342280 -> :sswitch_1
        0x3ab9c2c1 -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lh8/b;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Calendar;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lh8/b;->P()Lh8/b;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lh8/b;->J()V

    .line 10
    .line 11
    .line 12
    const-string v0, "year"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lh8/b;->N(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-long v0, v0

    .line 23
    invoke-virtual {p1, v0, v1}, Lh8/b;->V(J)V

    .line 24
    .line 25
    .line 26
    const-string v0, "month"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lh8/b;->N(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v0, v0

    .line 37
    invoke-virtual {p1, v0, v1}, Lh8/b;->V(J)V

    .line 38
    .line 39
    .line 40
    const-string v0, "dayOfMonth"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lh8/b;->N(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v0, v0

    .line 51
    invoke-virtual {p1, v0, v1}, Lh8/b;->V(J)V

    .line 52
    .line 53
    .line 54
    const-string v0, "hourOfDay"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lh8/b;->N(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0xb

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    int-to-long v0, v0

    .line 66
    invoke-virtual {p1, v0, v1}, Lh8/b;->V(J)V

    .line 67
    .line 68
    .line 69
    const-string v0, "minute"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lh8/b;->N(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/16 v0, 0xc

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    int-to-long v0, v0

    .line 81
    invoke-virtual {p1, v0, v1}, Lh8/b;->V(J)V

    .line 82
    .line 83
    .line 84
    const-string v0, "second"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lh8/b;->N(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/16 v0, 0xd

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    int-to-long v0, p2

    .line 96
    invoke-virtual {p1, v0, v1}, Lh8/b;->V(J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lh8/b;->M()V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method
