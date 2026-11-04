.class public final synthetic Lh2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt7/e;


# instance fields
.field public final synthetic a:Lh2/n;

.field public final synthetic b:Lh2/i;


# direct methods
.method public synthetic constructor <init>(Lh2/n;Lh2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/c;->a:Lh2/n;

    iput-object p2, p0, Lh2/c;->b:Lh2/i;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, -0x1

    .line 5
    check-cast p1, Lr1/p;

    .line 6
    .line 7
    iget-object v4, p0, Lh2/c;->a:Lh2/n;

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v5, p0, Lh2/c;->b:Lh2/i;

    .line 13
    .line 14
    iget-boolean v5, v5, Lh2/i;->B:Z

    .line 15
    .line 16
    if-eqz v5, :cond_7

    .line 17
    .line 18
    iget-object v5, v4, Lh2/n;->j:Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_7

    .line 27
    .line 28
    :cond_0
    iget v5, p1, Lr1/p;->G:I

    .line 29
    .line 30
    if-eq v5, v3, :cond_7

    .line 31
    .line 32
    if-le v5, v2, :cond_7

    .line 33
    .line 34
    const/16 v5, 0x20

    .line 35
    .line 36
    iget-object v6, p1, Lr1/p;->o:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    sparse-switch v7, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    :goto_0
    const/4 v2, -0x1

    .line 49
    goto :goto_1

    .line 50
    :sswitch_0
    const-string v2, "audio/eac3"

    .line 51
    .line 52
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v2, 0x3

    .line 60
    goto :goto_1

    .line 61
    :sswitch_1
    const-string v7, "audio/ac4"

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :sswitch_2
    const-string v2, "audio/ac3"

    .line 71
    .line 72
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const/4 v2, 0x1

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    const-string v2, "audio/eac3-joc"

    .line 82
    .line 83
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/4 v2, 0x0

    .line 91
    :cond_5
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    if-lt v2, v5, :cond_7

    .line 98
    .line 99
    iget-object v2, v4, Lh2/n;->h:Lj2/d;

    .line 100
    .line 101
    if-eqz v2, :cond_7

    .line 102
    .line 103
    iget-boolean v2, v2, Lj2/d;->b:Z

    .line 104
    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    if-lt v2, v5, :cond_6

    .line 110
    .line 111
    iget-object v2, v4, Lh2/n;->h:Lj2/d;

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    iget-boolean v3, v2, Lj2/d;->b:Z

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    iget-object v2, v2, Lj2/d;->a:Landroid/media/Spatializer;

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    invoke-static {v2}, Lj2/b;->h(Landroid/media/Spatializer;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    iget-object v2, v4, Lh2/n;->h:Lj2/d;

    .line 130
    .line 131
    iget-object v2, v2, Lj2/d;->a:Landroid/media/Spatializer;

    .line 132
    .line 133
    if-eqz v2, :cond_6

    .line 134
    .line 135
    invoke-static {v2}, Lj2/b;->l(Landroid/media/Spatializer;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    iget-object v2, v4, Lh2/n;->h:Lj2/d;

    .line 142
    .line 143
    iget-object v3, v4, Lh2/n;->i:Lr1/d;

    .line 144
    .line 145
    invoke-virtual {v2, v3, p1}, Lj2/d;->a(Lr1/d;Lr1/p;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    const/4 v0, 0x0

    .line 153
    :cond_7
    :goto_3
    return v0

    .line 154
    nop

    .line 155
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
