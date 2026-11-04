.class public Lorg/mozilla/universalchardet/prober/statemachine/UCS2BESMModel;
.super Lorg/mozilla/universalchardet/prober/statemachine/SMModel;
.source "SourceFile"


# static fields
.field public static final UCS2BE_CLASS_FACTOR:I = 0x6

.field private static ucs2beCharLenTable:[I

.field private static ucs2beClassTable:[I

.field private static ucs2beStateTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v5, 0x2

    .line 15
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    const/4 v3, 0x3

    .line 26
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    const/4 v1, 0x3

    .line 36
    const/4 v2, 0x3

    .line 37
    const/4 v3, 0x3

    .line 38
    const/4 v4, 0x3

    .line 39
    const/4 v5, 0x3

    .line 40
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 54
    .line 55
    .line 56
    move-result v15

    .line 57
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 58
    .line 59
    .line 60
    move-result v16

    .line 61
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 62
    .line 63
    .line 64
    move-result v17

    .line 65
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 66
    .line 67
    .line 68
    move-result v18

    .line 69
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 70
    .line 71
    .line 72
    move-result v19

    .line 73
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 74
    .line 75
    .line 76
    move-result v20

    .line 77
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 78
    .line 79
    .line 80
    move-result v21

    .line 81
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 82
    .line 83
    .line 84
    move-result v22

    .line 85
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 86
    .line 87
    .line 88
    move-result v23

    .line 89
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 90
    .line 91
    .line 92
    move-result v24

    .line 93
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 94
    .line 95
    .line 96
    move-result v25

    .line 97
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 98
    .line 99
    .line 100
    move-result v26

    .line 101
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 102
    .line 103
    .line 104
    move-result v27

    .line 105
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 106
    .line 107
    .line 108
    move-result v28

    .line 109
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 110
    .line 111
    .line 112
    move-result v29

    .line 113
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 114
    .line 115
    .line 116
    move-result v30

    .line 117
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 118
    .line 119
    .line 120
    move-result v31

    .line 121
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 122
    .line 123
    .line 124
    move-result v32

    .line 125
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 126
    .line 127
    .line 128
    move-result v33

    .line 129
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 130
    .line 131
    .line 132
    move-result v34

    .line 133
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 134
    .line 135
    .line 136
    move-result v35

    .line 137
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 138
    .line 139
    .line 140
    move-result v36

    .line 141
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 142
    .line 143
    .line 144
    move-result v37

    .line 145
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 146
    .line 147
    .line 148
    move-result v38

    .line 149
    const/4 v6, 0x4

    .line 150
    const/4 v7, 0x5

    .line 151
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 152
    .line 153
    .line 154
    move-result v39

    .line 155
    filled-new-array/range {v8 .. v39}, [I

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UCS2BESMModel;->ucs2beClassTable:[I

    .line 160
    .line 161
    const/4 v7, 0x1

    .line 162
    const/4 v8, 0x1

    .line 163
    const/4 v1, 0x5

    .line 164
    const/4 v2, 0x7

    .line 165
    const/4 v3, 0x7

    .line 166
    const/4 v4, 0x1

    .line 167
    const/4 v5, 0x4

    .line 168
    const/4 v6, 0x3

    .line 169
    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    const/4 v6, 0x2

    .line 174
    const/4 v7, 0x2

    .line 175
    const/4 v0, 0x1

    .line 176
    const/4 v1, 0x1

    .line 177
    const/4 v2, 0x1

    .line 178
    const/4 v3, 0x1

    .line 179
    const/4 v4, 0x2

    .line 180
    const/4 v5, 0x2

    .line 181
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    const/4 v6, 0x1

    .line 186
    const/4 v7, 0x1

    .line 187
    const/4 v0, 0x2

    .line 188
    const/4 v1, 0x2

    .line 189
    const/4 v2, 0x6

    .line 190
    const/4 v3, 0x6

    .line 191
    const/4 v4, 0x6

    .line 192
    const/4 v5, 0x6

    .line 193
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    const/4 v6, 0x6

    .line 198
    const/4 v7, 0x6

    .line 199
    const/4 v0, 0x6

    .line 200
    const/4 v1, 0x6

    .line 201
    const/4 v5, 0x2

    .line 202
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    const/4 v6, 0x7

    .line 207
    const/4 v7, 0x1

    .line 208
    const/4 v4, 0x5

    .line 209
    const/4 v5, 0x7

    .line 210
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    const/4 v6, 0x6

    .line 215
    const/4 v7, 0x6

    .line 216
    const/4 v0, 0x5

    .line 217
    const/16 v1, 0x8

    .line 218
    .line 219
    const/4 v4, 0x1

    .line 220
    const/4 v5, 0x6

    .line 221
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    const/4 v6, 0x0

    .line 226
    const/4 v7, 0x0

    .line 227
    const/4 v0, 0x6

    .line 228
    const/4 v1, 0x6

    .line 229
    const/4 v5, 0x1

    .line 230
    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    filled-new-array/range {v9 .. v15}, [I

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UCS2BESMModel;->ucs2beStateTable:[I

    .line 239
    .line 240
    const/4 v0, 0x6

    .line 241
    new-array v0, v0, [I

    .line 242
    .line 243
    fill-array-data v0, :array_0

    .line 244
    .line 245
    .line 246
    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UCS2BESMModel;->ucs2beCharLenTable:[I

    .line 247
    .line 248
    return-void

    .line 249
    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    new-instance v6, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 2
    .line 3
    const/16 v4, 0xf

    .line 4
    .line 5
    sget-object v5, Lorg/mozilla/universalchardet/prober/statemachine/UCS2BESMModel;->ucs2beClassTable:[I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x7

    .line 9
    const/4 v3, 0x2

    .line 10
    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 15
    .line 16
    const/16 v11, 0xf

    .line 17
    .line 18
    sget-object v12, Lorg/mozilla/universalchardet/prober/statemachine/UCS2BESMModel;->ucs2beStateTable:[I

    .line 19
    .line 20
    const/4 v8, 0x3

    .line 21
    const/4 v9, 0x7

    .line 22
    const/4 v10, 0x2

    .line 23
    move-object v7, v3

    .line 24
    invoke-direct/range {v7 .. v12}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    .line 25
    .line 26
    .line 27
    sget-object v4, Lorg/mozilla/universalchardet/prober/statemachine/UCS2BESMModel;->ucs2beCharLenTable:[I

    .line 28
    .line 29
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    move-object v0, p0

    .line 33
    move-object v1, v6

    .line 34
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
