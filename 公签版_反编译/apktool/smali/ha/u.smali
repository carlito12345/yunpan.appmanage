.class public final Lha/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/u;->a:I

    iput-object p2, p0, Lha/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    iget p1, p0, Lha/u;->a:I

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget v0, p0, Lha/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x5

    .line 13
    if-ne v0, v1, :cond_6

    .line 14
    .line 15
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aget p1, p1, v0

    .line 19
    .line 20
    iget-object v0, p0, Lha/u;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/yunpan/appmanage/service/AccService;

    .line 23
    .line 24
    iget v1, v0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 25
    .line 26
    const/high16 v2, -0x40800000    # -1.0f

    .line 27
    .line 28
    cmpl-float v2, v1, v2

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    iput p1, v0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    sub-float v1, p1, v1

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/high16 v2, 0x40a00000    # 5.0f

    .line 43
    .line 44
    cmpg-float v1, v1, v2

    .line 45
    .line 46
    if-gez v1, :cond_1

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    iget v1, v0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 51
    .line 52
    cmpl-float v1, p1, v1

    .line 53
    .line 54
    if-lez v1, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v1, v1, Lwa/s;->s:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    int-to-float v3, v3

    .line 87
    cmpg-float v4, v3, p1

    .line 88
    .line 89
    if-gtz v4, :cond_2

    .line 90
    .line 91
    iget v4, v0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 92
    .line 93
    cmpl-float v3, v3, v4

    .line 94
    .line 95
    if-lez v3, :cond_2

    .line 96
    .line 97
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v3, v3, Lwa/s;->s:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lz7/o;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v1, v1, Lwa/s;->t:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    int-to-float v3, v3

    .line 144
    cmpl-float v4, v3, p1

    .line 145
    .line 146
    if-ltz v4, :cond_4

    .line 147
    .line 148
    iget v4, v0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 149
    .line 150
    cmpg-float v3, v3, v4

    .line 151
    .line 152
    if-gez v3, :cond_4

    .line 153
    .line 154
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    iget-object v3, v3, Lwa/s;->t:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Lz7/o;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    iput p1, v0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 171
    .line 172
    :cond_6
    :goto_2
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    const/4 v1, 0x5

    .line 180
    if-ne v0, v1, :cond_7

    .line 181
    .line 182
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 183
    .line 184
    const/4 v0, 0x0

    .line 185
    aget p1, p1, v0

    .line 186
    .line 187
    iget-object v0, p0, Lha/u;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Lha/f0;

    .line 190
    .line 191
    iget-object v0, v0, Lha/f0;->l:Landroid/widget/TextView;

    .line 192
    .line 193
    float-to-int p1, p1

    .line 194
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    return-void

    .line 202
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    const/4 v1, 0x5

    .line 209
    if-ne v0, v1, :cond_8

    .line 210
    .line 211
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    aget p1, p1, v0

    .line 215
    .line 216
    iget-object v0, p0, Lha/u;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Lha/w;

    .line 219
    .line 220
    iget-object v0, v0, Lha/w;->j:Landroid/widget/TextView;

    .line 221
    .line 222
    float-to-int p1, p1

    .line 223
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    :cond_8
    return-void

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
