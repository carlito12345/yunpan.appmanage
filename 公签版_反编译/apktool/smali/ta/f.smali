.class public final Lta/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/service/AccService;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/service/AccService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lta/f;->a:I

    iput-object p1, p0, Lta/f;->b:Lcom/yunpan/appmanage/service/AccService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lta/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lta/f;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/service/AccService;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lya/e;->b()Lya/e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lya/e;->d()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lya/h;->a()Lya/h;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lya/h;->b(Lcom/yunpan/appmanage/service/AccService;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    const-string v0, ":"

    .line 30
    .line 31
    iget-object v1, p0, Lta/f;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 32
    .line 33
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Lwa/s;->r:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v2, v2, Lwa/s;->r:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget v5, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->startH:I

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v5, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->startM:I

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v5, " "

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v5, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->endH:I

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v5, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->endM:I

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget v5, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->startH:I

    .line 104
    .line 105
    iget v6, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->startM:I

    .line 106
    .line 107
    iget v7, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->endH:I

    .line 108
    .line 109
    iget v8, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->endM:I

    .line 110
    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const/16 v10, 0xb

    .line 116
    .line 117
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    const/16 v11, 0xc

    .line 122
    .line 123
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    mul-int/lit8 v10, v10, 0x3c

    .line 128
    .line 129
    add-int/2addr v10, v9

    .line 130
    mul-int/lit8 v5, v5, 0x3c

    .line 131
    .line 132
    add-int/2addr v5, v6

    .line 133
    mul-int/lit8 v7, v7, 0x3c

    .line 134
    .line 135
    add-int/2addr v7, v8

    .line 136
    if-ge v7, v5, :cond_0

    .line 137
    .line 138
    if-ge v10, v5, :cond_1

    .line 139
    .line 140
    if-gt v10, v7, :cond_3

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_0
    if-lt v10, v5, :cond_3

    .line 144
    .line 145
    if-gt v10, v7, :cond_3

    .line 146
    .line 147
    :cond_1
    :goto_1
    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->x:Ljava/util/HashSet;

    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_2

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_2
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/TimePeriodBean;->jsonArray:Lz7/o;

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->x:Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->x:Ljava/util/HashSet;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :catch_0
    :cond_4
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 187
    .line 188
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->y:Lta/f;

    .line 189
    .line 190
    const-wide/32 v2, 0xea60

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
