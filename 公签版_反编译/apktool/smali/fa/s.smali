.class public final synthetic Lfa/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/w0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(La2/w0;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lfa/s;->a:I

    iput-object p1, p0, Lfa/s;->b:La2/w0;

    iput-object p2, p0, Lfa/s;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lfa/s;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lfa/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfa/s;->c:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v1, p0, Lfa/s;->d:Z

    .line 9
    .line 10
    iget-object v2, p0, Lfa/s;->b:La2/w0;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {v0, v1}, La2/w0;->W(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 19
    .line 20
    const/16 v1, 0x64

    .line 21
    .line 22
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, ""

    .line 30
    .line 31
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/16 v1, 0x65

    .line 46
    .line 47
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lfa/s;->c:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean v1, p0, Lfa/s;->d:Z

    .line 54
    .line 55
    iget-object v2, p0, Lfa/s;->b:La2/w0;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    :try_start_1
    invoke-static {v0, v3, v1}, La2/w0;->Z(Ljava/lang/String;ZZ)V

    .line 62
    .line 63
    .line 64
    const-string v0, "\u5378\u8f7d\u6210\u529f"

    .line 65
    .line 66
    const/16 v1, 0x64

    .line 67
    .line 68
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, ""

    .line 76
    .line 77
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/16 v1, 0x65

    .line 92
    .line 93
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void

    .line 97
    :pswitch_1
    iget-object v0, p0, Lfa/s;->c:Ljava/lang/String;

    .line 98
    .line 99
    iget-boolean v1, p0, Lfa/s;->d:Z

    .line 100
    .line 101
    iget-object v2, p0, Lfa/s;->b:La2/w0;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-static {v0, v1}, La2/w0;->x(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/db/MyDb;->addIfFile(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    const-string v0, "\u65b0\u5efa\u6210\u529f"

    .line 117
    .line 118
    const/16 v1, 0x64

    .line 119
    .line 120
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catch_2
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/16 v1, 0x65

    .line 134
    .line 135
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void

    .line 139
    :pswitch_2
    iget-object v0, p0, Lfa/s;->c:Ljava/lang/String;

    .line 140
    .line 141
    iget-boolean v1, p0, Lfa/s;->d:Z

    .line 142
    .line 143
    iget-object v2, p0, Lfa/s;->b:La2/w0;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    :try_start_3
    invoke-static {v0, v1}, La2/w0;->V(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 152
    .line 153
    const/16 v1, 0x64

    .line 154
    .line 155
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catch_3
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v3, ""

    .line 163
    .line 164
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const/16 v1, 0x65

    .line 179
    .line 180
    invoke-virtual {v2, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :goto_3
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
