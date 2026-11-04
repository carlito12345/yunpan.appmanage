.class public final synthetic Lha/h8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/q0;
.implements Lea/e;
.implements Lea/g;
.implements Lea/c;
.implements Lha/i3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lea/e;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Lea/e;I)V
    .locals 0

    .line 1
    iput p5, p0, Lha/h8;->a:I

    iput p1, p0, Lha/h8;->b:I

    iput p2, p0, Lha/h8;->c:I

    iput-object p3, p0, Lha/h8;->d:Ljava/lang/String;

    iput-object p4, p0, Lha/h8;->e:Lea/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILea/e;)V
    .locals 1

    .line 2
    const/16 v0, 0xb

    iput v0, p0, Lha/h8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/h8;->d:Ljava/lang/String;

    iput p2, p0, Lha/h8;->b:I

    iput p3, p0, Lha/h8;->c:I

    iput-object p4, p0, Lha/h8;->e:Lea/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lha/h8;->b:I

    .line 2
    .line 3
    iget v1, p0, Lha/h8;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lha/h8;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lha/h8;->e:Lea/e;

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lz7/s;

    .line 10
    .line 11
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "keyType"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v4, v5, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "gnType"

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v4, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "name"

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\uff1a"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v4, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "str1"

    .line 58
    .line 59
    invoke-virtual {v4, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v4}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :catch_0
    return-void
.end method

.method public c(Lx9/w3;IILcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V
    .locals 6

    .line 1
    iget v0, p0, Lha/h8;->b:I

    .line 2
    .line 3
    iget v1, p0, Lha/h8;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lha/h8;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lha/h8;->e:Lea/e;

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lz7/s;

    .line 10
    .line 11
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "keyType"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v4, v5, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "gnType"

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v4, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "name"

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\uff1a"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v4, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "str1"

    .line 60
    .line 61
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v4, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "int1"

    .line 67
    .line 68
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {v4, p1, p3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 73
    .line 74
    .line 75
    const-string p1, "volumeType"

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v4, p1, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 82
    .line 83
    .line 84
    const-string p1, "tdType"

    .line 85
    .line 86
    iget p2, p4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 87
    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {v4, p1, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 93
    .line 94
    .line 95
    const-string p1, "focusType"

    .line 96
    .line 97
    iget p2, p5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 98
    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {v4, p1, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 104
    .line 105
    .line 106
    const-string p1, "speakerId"

    .line 107
    .line 108
    iget p2, p6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {v4, p1, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 115
    .line 116
    .line 117
    const-string p1, "volumeGain"

    .line 118
    .line 119
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v4, p1, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v3, v4}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    :catch_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lha/h8;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lha/h8;->b:I

    .line 7
    .line 8
    iget v1, p0, Lha/h8;->c:I

    .line 9
    .line 10
    iget-object v2, p0, Lha/h8;->d:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lha/h8;->e:Lea/e;

    .line 13
    .line 14
    :try_start_0
    new-instance v4, Lz7/s;

    .line 15
    .line 16
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "keyType"

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v4, v5, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "gnType"

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v4, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "name"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "\uff1a"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v4, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "str1"

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p2, "/"

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {v4, p1, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v3, v4}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    :catch_0
    return-void

    .line 91
    :sswitch_0
    iget p3, p0, Lha/h8;->b:I

    .line 92
    .line 93
    iget v0, p0, Lha/h8;->c:I

    .line 94
    .line 95
    iget-object v1, p0, Lha/h8;->d:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v2, p0, Lha/h8;->e:Lea/e;

    .line 98
    .line 99
    :try_start_1
    new-instance v3, Lz7/s;

    .line 100
    .line 101
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "keyType"

    .line 105
    .line 106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {v3, v4, p3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 111
    .line 112
    .line 113
    const-string p3, "gnType"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v3, p3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 120
    .line 121
    .line 122
    const-string p3, "name"

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, "\uff1a"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v3, p3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string p1, "str1"

    .line 148
    .line 149
    invoke-virtual {v3, p1, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v2, v3}, Lea/e;->k(Lz7/s;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    :catch_1
    return-void

    .line 156
    :sswitch_1
    iget v0, p0, Lha/h8;->b:I

    .line 157
    .line 158
    iget v1, p0, Lha/h8;->c:I

    .line 159
    .line 160
    iget-object v2, p0, Lha/h8;->d:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v3, p0, Lha/h8;->e:Lea/e;

    .line 163
    .line 164
    :try_start_2
    new-instance v4, Lz7/s;

    .line 165
    .line 166
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v5, "keyType"

    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v4, v5, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 176
    .line 177
    .line 178
    const-string v0, "gnType"

    .line 179
    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v4, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 185
    .line 186
    .line 187
    const-string v0, "name"

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v2, "\uff1a"

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v4, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string p1, "str1"

    .line 213
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p2, "/"

    .line 223
    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {v4, p1, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v3, v4}, Lea/e;->k(Lz7/s;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    .line 239
    .line 240
    :catch_2
    return-void

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(I)V
    .locals 6

    .line 1
    iget v0, p0, Lha/h8;->b:I

    .line 2
    .line 3
    iget v1, p0, Lha/h8;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lha/h8;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lha/h8;->e:Lea/e;

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lz7/s;

    .line 10
    .line 11
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "keyType"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v4, v5, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "gnType"

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v4, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "name"

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\uff1a"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v4, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "int1"

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v4, v0, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3, v4}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    return-void
.end method

.method public k(Lz7/s;)V
    .locals 6

    .line 1
    iget v0, p0, Lha/h8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lha/h8;->b:I

    .line 7
    .line 8
    iget v1, p0, Lha/h8;->c:I

    .line 9
    .line 10
    iget-object v2, p0, Lha/h8;->d:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lha/h8;->e:Lea/e;

    .line 13
    .line 14
    :try_start_0
    new-instance v4, Lz7/s;

    .line 15
    .line 16
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "keyType"

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v4, v5, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "gnType"

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v4, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "name"

    .line 38
    .line 39
    invoke-virtual {v4, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "json"

    .line 43
    .line 44
    invoke-virtual {v4, v0, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, v4}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    return-void

    .line 51
    :pswitch_0
    iget v0, p0, Lha/h8;->b:I

    .line 52
    .line 53
    iget v1, p0, Lha/h8;->c:I

    .line 54
    .line 55
    iget-object v2, p0, Lha/h8;->d:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p0, Lha/h8;->e:Lea/e;

    .line 58
    .line 59
    :try_start_1
    const-string v4, "keyType"

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v4, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "gnType"

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "name"

    .line 78
    .line 79
    invoke-virtual {p1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, p1}, Lea/e;->k(Lz7/s;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    :catch_1
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
