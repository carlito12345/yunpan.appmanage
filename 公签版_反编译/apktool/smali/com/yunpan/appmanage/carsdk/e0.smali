.class public final Lcom/yunpan/appmanage/carsdk/e0;
.super Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/carsdk/h0;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/e0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOnlySyncFloatData(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->i:Lua/c3;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lua/c3;->onOnlySyncFloatData(IF)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onOnlySyncIntData(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->i:Lua/c3;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lua/c3;->onOnlySyncIntData(II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onReceiveFloat(IFZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->i:Lua/c3;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lua/c3;->onReceiveFloat(IFZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onReceiveInt(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/e0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->i:Lua/c3;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2, p3}, Lua/c3;->onReceiveInt(IIZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p3, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 11
    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :try_start_0
    sget-object p3, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyAvmPosition:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const-string v1, "click"

    .line 22
    .line 23
    if-ne p1, p3, :cond_3

    .line 24
    .line 25
    :try_start_1
    iget-object p1, v0, Lcom/yunpan/appmanage/carsdk/h0;->I:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lz7/s;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_3
    sget-object p3, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyHvacEngineSpeed:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 52
    .line 53
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-ne p1, p3, :cond_4

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_4
    sget-object p3, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertySpeed:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-ne p1, p3, :cond_5

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_5
    sget-object p3, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyDriverDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eq p1, v2, :cond_a

    .line 78
    .line 79
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyPassengerDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eq p1, v2, :cond_a

    .line 86
    .line 87
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyRhRDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eq p1, v2, :cond_a

    .line 94
    .line 95
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyLhRDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eq p1, v2, :cond_a

    .line 102
    .line 103
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyTrunkCem2:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-ne p1, v2, :cond_6

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    sget-object p3, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyLowBeam:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 113
    .line 114
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    if-eq p1, p3, :cond_7

    .line 119
    .line 120
    sget-object p3, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyLhTurnLight:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 121
    .line 122
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    if-eq p1, p3, :cond_7

    .line 127
    .line 128
    sget-object p3, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyRhTurnLight:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-ne p1, p3, :cond_e

    .line 135
    .line 136
    :cond_7
    if-nez p2, :cond_8

    .line 137
    .line 138
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->L:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lz7/s;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_8
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->M:Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lz7/s;

    .line 162
    .line 163
    :goto_0
    if-nez p1, :cond_9

    .line 164
    .line 165
    return-void

    .line 166
    :cond_9
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_a
    :goto_1
    if-nez p2, :cond_b

    .line 177
    .line 178
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->J:Ljava/util/HashMap;

    .line 179
    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lz7/s;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_b
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->K:Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lz7/s;

    .line 202
    .line 203
    iget-boolean p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->N:Z

    .line 204
    .line 205
    if-eqz p2, :cond_c

    .line 206
    .line 207
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 208
    .line 209
    invoke-virtual {p3}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    invoke-interface {p2, p3}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    iget-object p3, v0, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 218
    .line 219
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyPassengerDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-interface {p3, v2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 226
    .line 227
    .line 228
    move-result p3

    .line 229
    add-int/2addr p2, p3

    .line 230
    iget-object p3, v0, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 231
    .line 232
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyRhRDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-interface {p3, v2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    add-int/2addr p2, p3

    .line 243
    iget-object p3, v0, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 244
    .line 245
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyLhRDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-interface {p3, v2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->getInt(I)I

    .line 252
    .line 253
    .line 254
    move-result p3

    .line 255
    add-int/2addr p2, p3

    .line 256
    const/4 p3, 0x1

    .line 257
    if-ne p2, p3, :cond_c

    .line 258
    .line 259
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 260
    .line 261
    iget-object p3, v0, Lcom/yunpan/appmanage/carsdk/h0;->O:Lz7/o;

    .line 262
    .line 263
    invoke-virtual {p2, p3}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 264
    .line 265
    .line 266
    :cond_c
    :goto_2
    if-nez p1, :cond_d

    .line 267
    .line 268
    return-void

    .line 269
    :cond_d
    iget-object p2, v0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p2, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    .line 277
    .line 278
    :catch_0
    :cond_e
    :goto_3
    return-void
.end method
